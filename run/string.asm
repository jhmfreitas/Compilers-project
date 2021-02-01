; TEXT
segment	.text
; ALIGN
align	4
; GLOBL
global	$_strcmp:function
; LABEL
$_strcmp:
; ENTER
	push	ebp
	mov	ebp, esp
	sub	esp, 48
; IMM
	push	dword 0
; COPY
	push	dword [esp]
; LOCA
	pop	eax
	mov	[ebp+-4], eax
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 0
; NE
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setne	cl
	mov	[esp], ecx
; COPY
	push	dword [esp]
; JZ
	pop	eax
	cmp	eax, byte 0
	je	near $_i1
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+12]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 0
; NE
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setne	cl
	mov	[esp], ecx
; LABEL
$_i1:
; COPY
	push	dword [esp]
; JZ
	pop	eax
	cmp	eax, byte 0
	je	near $_i2
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+12]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; EQ
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	sete	cl
	mov	[esp], ecx
; LABEL
$_i2:
; JZ
	pop	eax
	cmp	eax, byte 0
	je	near $_i3
; LABEL
$_i4:
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; COPY
	push	dword [esp]
; INCR
	pop	eax
	add	dword [eax], 1
; LOAD
	pop	eax
	push	dword [eax]
; LABEL
$_i6:
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 0
; NE
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setne	cl
	mov	[esp], ecx
; COPY
	push	dword [esp]
; JZ
	pop	eax
	cmp	eax, byte 0
	je	near $_i7
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+12]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 0
; NE
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setne	cl
	mov	[esp], ecx
; LABEL
$_i7:
; COPY
	push	dword [esp]
; JZ
	pop	eax
	cmp	eax, byte 0
	je	near $_i8
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+12]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; EQ
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	sete	cl
	mov	[esp], ecx
; LABEL
$_i8:
; JNZ
	pop	eax
	cmp	eax, byte 0
	jne	near $_i4
; LABEL
$_i5:
; LABEL
$_i3:
; LOCAL
	lea	eax, [ebp+12]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; SUB
	pop	eax
	sub	dword [esp], eax
; COPY
	push	dword [esp]
; LOCA
	pop	eax
	mov	[ebp+-4], eax
; POP
	pop	eax
; LEAVE
	leave
; RET
	ret
; TEXT
segment	.text
; ALIGN
align	4
; GLOBL
global	$_strcpy:function
; LABEL
$_strcpy:
; ENTER
	push	ebp
	mov	ebp, esp
	sub	esp, 24
; IMM
	push	dword 0
; COPY
	push	dword [esp]
; LOCA
	pop	eax
	mov	[ebp+-4], eax
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; COPY
	push	dword [esp]
; LOCA
	pop	eax
	mov	[ebp+-4], eax
; LOCAL
	lea	eax, [ebp+12]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 0
; NE
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setne	cl
	mov	[esp], ecx
; COPY
	push	dword [esp]
; JZ
	pop	eax
	cmp	eax, byte 0
	je	near $_i9
; TRASH
	add	esp, 4
; LOCAL
	lea	eax, [ebp+12]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 0
; NE
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setne	cl
	mov	[esp], ecx
; LABEL
$_i9:
; JZ
	pop	eax
	cmp	eax, byte 0
	je	near $_i10
; LABEL
$_i11:
; LOCAL
	lea	eax, [ebp+12]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; STORE
	pop	ecx
	pop	eax
	mov	[ecx], eax
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; COPY
	push	dword [esp]
; LOAD
	pop	eax
	push	dword [eax]
; SWAP
	pop	eax
	pop	ecx
	push	eax
	mov	eax, ecx
	push	eax
; INCR
	pop	eax
	add	dword [eax], 1
; LABEL
$_i13:
; LOCAL
	lea	eax, [ebp+12]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 0
; NE
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setne	cl
	mov	[esp], ecx
; JNZ
	pop	eax
	cmp	eax, byte 0
	jne	near $_i11
; LABEL
$_i12:
; LABEL
$_i10:
; IMM
	push	dword 0
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; STORE
	pop	ecx
	pop	eax
	mov	[ecx], eax
; POP
	pop	eax
; LEAVE
	leave
; RET
	ret
; TEXT
segment	.text
; ALIGN
align	4
; GLOBL
global	$_strchr:function
; LABEL
$_strchr:
; ENTER
	push	ebp
	mov	ebp, esp
	sub	esp, 20
; IMM
	push	dword 0
; COPY
	push	dword [esp]
; LOCA
	pop	eax
	mov	[ebp+-4], eax
; IMM
	push	dword 0
; COPY
	push	dword [esp]
; LOCA
	pop	eax
	mov	[ebp+-4], eax
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 0
; NE
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setne	cl
	mov	[esp], ecx
; JZ
	pop	eax
	cmp	eax, byte 0
	je	near $_i14
; LABEL
$_i15:
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+12]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; EQ
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	sete	cl
	mov	[esp], ecx
; JZ
	pop	eax
	cmp	eax, byte 0
	je	near $_i18
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; COPY
	push	dword [esp]
; LOCA
	pop	eax
	mov	[ebp+-4], eax
; JMP
	jmp	dword $_i16
; JMP
	jmp	dword $_i19
; LABEL
$_i18:
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; COPY
	push	dword [esp]
; INCR
	pop	eax
	add	dword [eax], 1
; LOAD
	pop	eax
	push	dword [eax]
; LABEL
$_i19:
; LABEL
$_i17:
; LOCAL
	lea	eax, [ebp+8]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; LOCAL
	lea	eax, [ebp+-4]
	push	eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 4
; MUL
	pop	eax
	imul	dword eax, [esp]
	mov	[esp], eax
; ADD
	pop	eax
	add	dword [esp], eax
; LOAD
	pop	eax
	push	dword [eax]
; IMM
	push	dword 0
; NE
	pop	eax
	xor	ecx, ecx
	cmp	[esp], eax
	setne	cl
	mov	[esp], ecx
; JNZ
	pop	eax
	cmp	eax, byte 0
	jne	near $_i15
; LABEL
$_i16:
; LABEL
$_i14:
; POP
	pop	eax
; LEAVE
	leave
; RET
	ret
