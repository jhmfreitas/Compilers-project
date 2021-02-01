%{
/* $Id: diy.l,v 1.0 2019/02/15 11:13:32 prs Exp $ */
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include "node.h"
#include "y.tab.h"
static int eoi; /* end of instruction */
static int ncom; /* comment nesting level */
static int in; /* in string */
void yyerror(char *s);
int octal(char *s);
%}
%x COM CHR
FLT	[0-9]+\.[0-9]+([Ee][+-]?[0-9]+)?
%%
"==".*                  ;
"=<"			ncom = 1; BEGIN COM;
<COM>.|\n		;
<COM>\"([^"\\]|\\.)*\"	;
<COM>"=<"		ncom++;
<COM>"=>"		if (--ncom == 0) BEGIN 0;

">="			eoi = 0; return GE;
"<="			eoi = 0; return LE;
"<>"			eoi = 0; return NE;
":="			eoi = 0; return ATR;
"++"			eoi = 0; return INCR;
"--"			eoi = 0; return DECR;
"if"			eoi = 0; return IF;
"then"			eoi = 0; return THEN;
"else"			eoi = 0; return ELSE;
"while"			eoi = 0; return WHILE;
"do"			eoi = 0; return DO;
"for"			eoi = 0; return FOR;
"in"			eoi = 0; return IN;
"upto"			eoi = 0; return UPTO;
"downto"		eoi = 0; return DOWNTO;
"step"			eoi = 0; return STEP;
"void"			eoi = 0; return VOID;
"integer"		eoi = 0; return INTEGER;
"string"		eoi = 0; return STRING;
"number"		eoi = 0; return NUMBER;
"public"		eoi = 0; return PUBLIC;
"const"			eoi = 0; return CONST;
"break"			eoi = 0; return BREAK;
"continue"		eoi = 0; return CONTINUE;

[A-Za-z][A-Za-z0-9_]*	eoi = 1; yylval.s = strdup(yytext); return ID;
\"([^"\\]|\\(.|\n))*\"	eoi = 1; yylval.s = malloc(yyleng); *yylval.s = 0; in = 1; REJECT;
\"			if (in) BEGIN CHR; else { yyerror("unterminated string"); return 0; }
<CHR>\"			eoi = 1; BEGIN 0; return STR;
<CHR>\\\"		strcat(yylval.s, "\"");
<CHR>\\n		strcat(yylval.s, "\n");
<CHR>\\r		strcat(yylval.s, "\n");
<CHR>\\t		strcat(yylval.s, "\n");
<CHR>\\[0-9a-fA-F][0-9a-fA-F]?	{ char s[2]; s[1] = 0; s[0] = strtol(yytext+1,0,16); strcat(yylval.s, s); }
<CHR>\\.		yyerror("invalid escape sequence in string");
<CHR>[^"]		strcat(yylval.s, yytext);
0[0-9]+			eoi = 1; yylval.i = octal(yytext); return INT;
[0-9]+			eoi = 1; errno = 0; yylval.i = strtol(yytext, 0, 10); if (errno == ERANGE) yyerror("overflow in decimal constant"); return INT;
0b[01]+			eoi = 1; errno = 0; yylval.i = strtol(yytext+2, 0, 2); if (errno == ERANGE) yyerror("overflow in binary constant"); return INT;
{FLT}			eoi = 1; yylval.r = strtod(yytext, 0); return REAL;
[-<>+*/%=|&~!;#{},\[\](]	eoi = 0; return *yytext;
[)!]			eoi = 1; return *yytext;

[ \t\r]+		; /* ignore whitespace */
[\n]+			if (eoi == 1) { eoi = 0; return ';'; }

.			yyerror("Unknown character");
%%
int yywrap(void) {
  if (YYSTATE == COM) yyerror("unterminated comment");
  return 1;
}

int octal(char *s)
{
  int i, a = 0, b = 0;

  for (i = 0; i < strlen(s); i++) {
    if (s[i] < '0' || s[i] > '9') break;
    b = b * 8 + s[i] - '0';
    if (b < a) {
      yyerror("octal overflow");
      break;
    }
    a = b;
  }
  return a;
}

char *getyytext() { return yytext; }
