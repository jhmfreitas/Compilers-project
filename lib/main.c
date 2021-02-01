#include <limits.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>

char *ext = ".asm", *prog, *infile = "<<stdin>>", *outfile = "out.asm";
int errors, opt, tree, trace, initial, yyparse(void);
FILE *outfp;
extern int IDdebug;

int yyerror(char *s)
{
  extern int yylineno;
  extern char *getyytext();
  fprintf(stderr, "%s: %s at or before '%s' in line %d\n", infile, s, getyytext(), yylineno);
  errors++;
  return 1;
}

char *dupstr(const char *s)
{
  char *d;
  if (s == 0) return 0;
  d = (char*)malloc(strlen(s)+1);
  if (d == 0) return 0;
  strcpy(d, s);
  return d;
}

int main(int argc, char *argv[]) {
#ifdef YYDEBUG
  extern int yydebug;
  yydebug = getenv("YYDEBUG") ? 1 : 0;
#endif

  prog = argv[0];

  if (argc > 1 && strcmp(argv[1], "-initial") == 0) { initial = 1; argc--; argv++; ext = ".out"; outfile = "out.out"; }
  if (argc > 1 && strcmp(argv[1], "-trace") == 0) { IDdebug = trace = 1; argc--; argv++; }
  if (argc > 3) {
    fprintf(stderr, "USAGE: %s [-initial] [-trace] [infile]\n",
	    argv[0]);
    exit(1);
  }

  if (argc > 1) {
    extern FILE *yyin;
    if ((yyin = fopen(infile = argv[1], "r")) == NULL) {
      perror(argv[1]);
      return 1;
    }
  }

  if (argc == 2) {
      char *ptr;
      outfile = malloc(strlen(argv[1])+strlen(ext)+1);
      strcpy(outfile, argv[1]);
      if ((ptr = strrchr(outfile, '.')) == 0)
      ptr = outfile + strlen(outfile);
      strcpy(ptr, ext);
  }
  if (argc > 2) outfile = argv[2];

  if ((outfp = fopen(outfile, "w")) == NULL) {
    perror(outfile);
    return 1;
  }

  if (initial) {
    int tk, yylex();
    extern char **yynames;
    while ((tk = yylex())) 
      if (tk > 255)
        printf("%d:\t%s\n", tk, yynames[tk]);
      else
        printf("%d:\t%c\n", tk, tk);
    return 0;
	}

  if (yyparse() != 0 || errors > 0) {
    fprintf(stderr, "%d errors in %s\n", errors, infile);
    fclose(outfp);
    unlink(outfile);
    return 1;
  }
  fclose(outfp);
  return 0;
}
