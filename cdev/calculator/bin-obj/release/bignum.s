	.file	"bignum.c"
	.text
	.p2align 4
	.globl	biguint_set
	.type	biguint_set, @function
biguint_set:
.LFB22:
	.cfi_startproc
	movq	(%rsi), %rdx
	movq	%rdi, %rax
	movq	%rdx, (%rdi)
	movq	8(%rsi), %rdx
	movq	%rdx, 8(%rdi)
	movq	16(%rsi), %rdx
	movq	%rdx, 16(%rdi)
	movq	24(%rsi), %rdx
	movq	%rdx, 24(%rdi)
	movq	32(%rsi), %rdx
	movq	%rdx, 32(%rdi)
	movq	40(%rsi), %rdx
	movq	%rdx, 40(%rdi)
	ret
	.cfi_endproc
.LFE22:
	.size	biguint_set, .-biguint_set
	.p2align 4
	.globl	biguint_not
	.type	biguint_not, @function
biguint_not:
.LFB23:
	.cfi_startproc
	movq	(%rsi), %rdx
	movq	%rdi, %rax
	notq	%rdx
	movq	%rdx, (%rdi)
	movq	8(%rsi), %rdx
	notq	%rdx
	movq	%rdx, 8(%rdi)
	movq	16(%rsi), %rdx
	notq	%rdx
	movq	%rdx, 16(%rdi)
	movq	24(%rsi), %rdx
	notq	%rdx
	movq	%rdx, 24(%rdi)
	movq	32(%rsi), %rdx
	notq	%rdx
	movq	%rdx, 32(%rdi)
	movq	40(%rsi), %rdx
	notq	%rdx
	movq	%rdx, 40(%rdi)
	ret
	.cfi_endproc
.LFE23:
	.size	biguint_not, .-biguint_not
	.p2align 4
	.globl	biguint_bar
	.type	biguint_bar, @function
biguint_bar:
.LFB24:
	.cfi_startproc
	movq	(%rsi), %rdx
	orq	8(%rsi), %rdx
	movq	%rdi, %rax
	orq	16(%rsi), %rdx
	orq	24(%rsi), %rdx
	orq	32(%rsi), %rdx
	orq	40(%rsi), %rdx
	movq	$0, 32(%rdi)
	sete	%dl
	movq	$0, 24(%rdi)
	movzbl	%dl, %edx
	movq	$0, 16(%rdi)
	movq	%rdx, 40(%rdi)
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
	ret
	.cfi_endproc
.LFE24:
	.size	biguint_bar, .-biguint_bar
	.p2align 4
	.globl	biguint_neg
	.type	biguint_neg, @function
biguint_neg:
.LFB25:
	.cfi_startproc
	movq	40(%rsi), %rax
	movq	32(%rsi), %rdx
	movq	%rdi, %r8
	movq	24(%rsi), %r10
	movq	(%rsi), %rcx
	negq	%rax
	notq	%rdx
	movq	8(%rsi), %rdi
	movq	16(%rsi), %r9
	cmpq	$1, %rax
	movq	%rax, 40(%r8)
	notq	%r10
	notq	%rcx
	adcq	$0, %rdx
	xorl	%esi, %esi
	notq	%r9
	notq	%rdi
	orq	%rdx, %rax
	movq	%rdx, 32(%r8)
	sete	%sil
	xorl	%edx, %edx
	addq	%r10, %rsi
	orq	%rsi, %rax
	movq	%rsi, 24(%r8)
	sete	%dl
	addq	%r9, %rdx
	orq	%rdx, %rax
	movq	%rdx, 16(%r8)
	sete	%dl
	movzbl	%dl, %edx
	addq	%rdi, %rdx
	orq	%rdx, %rax
	movq	%rdx, 8(%r8)
	cmpq	$1, %rax
	movq	%r8, %rax
	adcq	$0, %rcx
	movq	%rcx, (%r8)
	ret
	.cfi_endproc
.LFE25:
	.size	biguint_neg, .-biguint_neg
	.p2align 4
	.globl	biguint_or
	.type	biguint_or, @function
biguint_or:
.LFB26:
	.cfi_startproc
	movq	(%rsi), %rcx
	orq	(%rdx), %rcx
	movq	%rdi, %rax
	movq	%rcx, (%rdi)
	movq	8(%rsi), %rcx
	orq	8(%rdx), %rcx
	movq	%rcx, 8(%rdi)
	movq	16(%rsi), %rcx
	orq	16(%rdx), %rcx
	movq	%rcx, 16(%rdi)
	movq	24(%rsi), %rcx
	orq	24(%rdx), %rcx
	movq	%rcx, 24(%rdi)
	movq	32(%rsi), %rcx
	orq	32(%rdx), %rcx
	movq	%rcx, 32(%rdi)
	movq	40(%rsi), %rcx
	orq	40(%rdx), %rcx
	movq	%rcx, 40(%rdi)
	ret
	.cfi_endproc
.LFE26:
	.size	biguint_or, .-biguint_or
	.p2align 4
	.globl	biguint_and
	.type	biguint_and, @function
biguint_and:
.LFB27:
	.cfi_startproc
	movq	(%rsi), %rcx
	andq	(%rdx), %rcx
	movq	%rdi, %rax
	movq	%rcx, (%rdi)
	movq	8(%rsi), %rcx
	andq	8(%rdx), %rcx
	movq	%rcx, 8(%rdi)
	movq	16(%rsi), %rcx
	andq	16(%rdx), %rcx
	movq	%rcx, 16(%rdi)
	movq	24(%rsi), %rcx
	andq	24(%rdx), %rcx
	movq	%rcx, 24(%rdi)
	movq	32(%rsi), %rcx
	andq	32(%rdx), %rcx
	movq	%rcx, 32(%rdi)
	movq	40(%rsi), %rcx
	andq	40(%rdx), %rcx
	movq	%rcx, 40(%rdi)
	ret
	.cfi_endproc
.LFE27:
	.size	biguint_and, .-biguint_and
	.p2align 4
	.globl	biguint_xor
	.type	biguint_xor, @function
biguint_xor:
.LFB28:
	.cfi_startproc
	movq	(%rsi), %rcx
	xorq	(%rdx), %rcx
	movq	%rdi, %rax
	movq	%rcx, (%rdi)
	movq	8(%rsi), %rcx
	xorq	8(%rdx), %rcx
	movq	%rcx, 8(%rdi)
	movq	16(%rsi), %rcx
	xorq	16(%rdx), %rcx
	movq	%rcx, 16(%rdi)
	movq	24(%rsi), %rcx
	xorq	24(%rdx), %rcx
	movq	%rcx, 24(%rdi)
	movq	32(%rsi), %rcx
	xorq	32(%rdx), %rcx
	movq	%rcx, 32(%rdi)
	movq	40(%rsi), %rcx
	xorq	40(%rdx), %rcx
	movq	%rcx, 40(%rdi)
	ret
	.cfi_endproc
.LFE28:
	.size	biguint_xor, .-biguint_xor
	.p2align 4
	.globl	biguint_rsh
	.type	biguint_rsh, @function
biguint_rsh:
.LFB29:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	testq	%rsi, %rsi
	js	.L136
	cmpq	$63, %rsi
	jle	.L137
	leaq	-64(%rsi), %r8
	movq	$0, (%rdi)
	leaq	-1(%rsi), %r9
	xorl	%edi, %edi
	cmpq	$63, %r8
	ja	.L48
.L141:
	movq	(%rdx), %r10
	leal	-64(%rsi), %ecx
	movl	%esi, %ebp
	shrq	%cl, %r10
	orq	%r10, %rdi
	leaq	-128(%rsi), %r10
	movq	%rdi, 8(%rax)
	movq	8(%rdx), %rdi
	movq	%rdi, %rbx
	shrq	%cl, %rbx
	cmpq	$62, %r9
	ja	.L135
	xorl	%r11d, %r11d
.L49:
	movl	$64, %ecx
	subl	%ebp, %ecx
	salq	%cl, %rdi
	addq	%rbx, %rdi
	movq	%rdi, %rbx
	orq	%r11, %rbx
.L135:
	leaq	-65(%rsi), %rcx
.L50:
	movq	%rcx, %r11
	cmpq	$62, %rcx
	ja	.L115
	movq	(%rdx), %rdi
	movl	$128, %ecx
	subl	%esi, %ecx
	salq	%cl, %rdi
	movq	%rdi, %rcx
	orq	%rbx, %rcx
	xorl	%ebx, %ebx
	movq	%rcx, 16(%rax)
.L55:
	xorl	%edi, %edi
	cmpq	$63, %r8
	ja	.L56
	movq	16(%rdx), %rdi
	leal	-64(%rsi), %ecx
	shrq	%cl, %rdi
.L56:
	cmpq	$62, %r9
	ja	.L57
	movq	16(%rdx), %r15
	movl	$64, %ecx
	subl	%esi, %ecx
	salq	%cl, %r15
	addq	%r15, %rdi
.L57:
	orq	%rdi, %rbx
	leaq	-192(%rsi), %r12
	leaq	-129(%rsi), %rbp
	cmpq	$63, %r10
	ja	.L58
	movq	8(%rdx), %rdi
	leal	-128(%rsi), %ecx
	movl	%esi, %r14d
	movq	%rdi, %r13
	shrq	%cl, %r13
	cmpq	$62, %r11
	ja	.L138
.L59:
	movl	$128, %ecx
	subl	%r14d, %ecx
	salq	%cl, %rdi
	movq	%rdi, %rcx
	addq	%r13, %rcx
	orq	%rcx, %rbx
.L62:
	cmpq	$62, %rbp
	ja	.L64
	movq	(%rdx), %rdi
	movl	$192, %ecx
	subl	%esi, %ecx
	salq	%cl, %rdi
	orq	%rdi, %rbx
	xorl	%edi, %edi
	movq	%rbx, 24(%rax)
.L63:
	xorl	%ebx, %ebx
	cmpq	$63, %r8
	ja	.L65
	movq	24(%rdx), %rbx
	leal	-64(%rsi), %ecx
	shrq	%cl, %rbx
.L65:
	cmpq	$62, %r9
	ja	.L66
	movq	24(%rdx), %r15
	movl	$64, %ecx
	subl	%esi, %ecx
	salq	%cl, %r15
	addq	%r15, %rbx
.L66:
	orq	%rbx, %rdi
	xorl	%ebx, %ebx
	cmpq	$63, %r10
	ja	.L67
	movq	16(%rdx), %rbx
	leal	-128(%rsi), %ecx
	shrq	%cl, %rbx
.L67:
	cmpq	$62, %r11
	ja	.L68
	movq	16(%rdx), %r14
	movl	$128, %ecx
	subl	%esi, %ecx
	salq	%cl, %r14
	addq	%r14, %rbx
.L68:
	orq	%rbx, %rdi
	leaq	-256(%rsi), %r14
	leaq	-193(%rsi), %r13
	cmpq	$63, %r12
	ja	.L69
	movq	8(%rdx), %rbx
	leal	-192(%rsi), %ecx
	movl	%esi, -8(%rsp)
	movq	%rbx, %r15
	shrq	%cl, %r15
	cmpq	$62, %rbp
	ja	.L139
.L70:
	movl	$192, %ecx
	subl	-8(%rsp), %ecx
	salq	%cl, %rbx
	addq	%r15, %rbx
	orq	%rbx, %rdi
.L73:
	cmpq	$62, %r13
	ja	.L75
.L90:
	movq	(%rdx), %rbx
	movl	%esi, %ecx
	negl	%ecx
	salq	%cl, %rbx
	orq	%rbx, %rdi
	xorl	%ebx, %ebx
	movq	%rdi, 32(%rax)
.L74:
	xorl	%edi, %edi
	cmpq	$63, %r8
	ja	.L76
	movq	32(%rdx), %rdi
	leal	-64(%rsi), %ecx
	shrq	%cl, %rdi
.L76:
	cmpq	$62, %r9
	ja	.L77
	movq	32(%rdx), %r15
	movl	$64, %ecx
	subl	%esi, %ecx
	salq	%cl, %r15
	addq	%r15, %rdi
.L77:
	orq	%rdi, %rbx
	xorl	%edi, %edi
	movq	%rbx, %r8
	cmpq	$63, %r10
	ja	.L78
	movq	24(%rdx), %rdi
	leal	-128(%rsi), %ecx
	shrq	%cl, %rdi
.L78:
	cmpq	$62, %r11
	ja	.L79
	movq	24(%rdx), %rbx
	movl	$128, %ecx
	subl	%esi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %rdi
.L79:
	orq	%rdi, %r8
	xorl	%edi, %edi
	cmpq	$63, %r12
	ja	.L80
	movq	16(%rdx), %rdi
	leal	-192(%rsi), %ecx
	shrq	%cl, %rdi
.L80:
	cmpq	$62, %rbp
	ja	.L81
	movq	16(%rdx), %rbx
	movl	$192, %ecx
	subl	%esi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %rdi
.L81:
	orq	%rdi, %r8
	cmpq	$63, %r14
	ja	.L82
	movq	8(%rdx), %r9
	movl	%esi, %ecx
	movl	%esi, %edi
	movq	%r9, %r10
	shrq	%cl, %r10
	cmpq	$62, %r13
	ja	.L140
.L83:
	movl	%edi, %ecx
	negl	%ecx
	salq	%cl, %r9
	addq	%r10, %r9
	orq	%r9, %r8
.L86:
	leaq	-257(%rsi), %rcx
	cmpq	$62, %rcx
	ja	.L126
	movl	$320, %ecx
	subl	%esi, %ecx
	movq	(%rdx), %rsi
	movq	%rsi, %rdx
	salq	%cl, %rdx
.L87:
	orq	%r8, %rdx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	movq	%rdx, 40(%rax)
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L137:
	.cfi_restore_state
	movq	(%rdx), %rbx
	movl	%esi, %ecx
	movq	8(%rdx), %rdi
	leaq	-64(%rsi), %r8
	leaq	-1(%rsi), %r9
	shrq	%cl, %rbx
	shrq	%cl, %rdi
	movq	%rbx, (%rax)
	cmpq	$63, %r8
	jbe	.L141
.L48:
	cmpq	$62, %r9
	ja	.L51
	movq	(%rdx), %rbx
	movl	$64, %ecx
	movq	16(%rdx), %r11
	movl	%esi, %ebp
	subl	%esi, %ecx
	leaq	-128(%rsi), %r10
	salq	%cl, %rbx
	movl	%esi, %ecx
	orq	%rbx, %rdi
	shrq	%cl, %r11
	xorl	%ebx, %ebx
	movq	%rdi, 8(%rax)
	movq	8(%rdx), %rdi
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L136:
	movq	%rsi, %rdi
	negq	%rdi
	cmpq	$-63, %rsi
	jl	.L11
	movq	40(%rdx), %rbx
	movl	%edi, %ecx
	movq	32(%rdx), %r8
	salq	%cl, %rbx
	salq	%cl, %r8
	movq	%rbx, 40(%rax)
.L88:
	movq	$-64, %r9
	xorl	%r11d, %r11d
	subq	%rsi, %r9
	cmpq	$63, %r9
	ja	.L12
	movq	40(%rdx), %r11
	leal	-64(%rdi), %ecx
	salq	%cl, %r11
.L12:
	movq	%rsi, %r10
	notq	%r10
	cmpq	$62, %r10
	ja	.L13
	movq	40(%rdx), %rbx
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %r11
.L13:
	orq	%r11, %r8
	xorl	%r11d, %r11d
	movq	%r8, 32(%rax)
	cmpq	$-63, %rsi
	jl	.L14
	movq	24(%rdx), %r11
	movl	%edi, %ecx
	salq	%cl, %r11
.L14:
	xorl	%r8d, %r8d
	cmpq	$63, %r9
	ja	.L15
	movq	32(%rdx), %r8
	leal	-64(%rdi), %ecx
	salq	%cl, %r8
.L15:
	cmpq	$62, %r10
	ja	.L16
	movq	32(%rdx), %rbx
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %r8
.L16:
	movq	$-128, %rbp
	orq	%r8, %r11
	xorl	%r8d, %r8d
	subq	%rsi, %rbp
	cmpq	$63, %rbp
	ja	.L17
	movq	40(%rdx), %r8
	leal	-128(%rdi), %ecx
	salq	%cl, %r8
.L17:
	movq	$-65, %rbx
	subq	%rsi, %rbx
	cmpq	$62, %rbx
	ja	.L18
	movq	40(%rdx), %r14
	movl	$128, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r14
	addq	%r14, %r8
.L18:
	orq	%r11, %r8
	movq	%r8, 24(%rax)
	xorl	%r8d, %r8d
	cmpq	$-63, %rsi
	jl	.L19
	movq	16(%rdx), %r8
	movl	%edi, %ecx
	salq	%cl, %r8
.L19:
	xorl	%r11d, %r11d
	cmpq	$63, %r9
	ja	.L20
	movq	24(%rdx), %r11
	leal	-64(%rdi), %ecx
	salq	%cl, %r11
.L20:
	cmpq	$62, %r10
	ja	.L21
	movq	24(%rdx), %r15
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r15
	addq	%r15, %r11
.L21:
	orq	%r11, %r8
	xorl	%r11d, %r11d
	cmpq	$63, %rbp
	ja	.L22
	movq	32(%rdx), %r11
	leal	-128(%rdi), %ecx
	salq	%cl, %r11
.L22:
	cmpq	$62, %rbx
	ja	.L23
	movq	32(%rdx), %r14
	movl	$128, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r14
	addq	%r14, %r11
.L23:
	movq	$-192, %r14
	orq	%r11, %r8
	xorl	%r11d, %r11d
	subq	%rsi, %r14
	cmpq	$63, %r14
	ja	.L24
	movq	40(%rdx), %r11
	leal	-192(%rdi), %ecx
	salq	%cl, %r11
.L24:
	movq	$-129, %r13
	subq	%rsi, %r13
	cmpq	$62, %r13
	ja	.L25
	movq	40(%rdx), %r15
	movl	$192, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r15
	addq	%r15, %r11
.L25:
	orq	%r11, %r8
	xorl	%r11d, %r11d
	movq	%r8, 16(%rax)
	cmpq	$-63, %rsi
	jl	.L26
	movq	8(%rdx), %r11
	movl	%edi, %ecx
	salq	%cl, %r11
.L26:
	xorl	%r8d, %r8d
	cmpq	$63, %r9
	ja	.L27
	movq	16(%rdx), %r8
	leal	-64(%rdi), %ecx
	salq	%cl, %r8
.L27:
	cmpq	$62, %r10
	ja	.L28
	movq	16(%rdx), %r15
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r15
	addq	%r15, %r8
.L28:
	orq	%r8, %r11
	xorl	%r8d, %r8d
	cmpq	$63, %rbp
	ja	.L29
	movq	24(%rdx), %r8
	leal	-128(%rdi), %ecx
	salq	%cl, %r8
.L29:
	cmpq	$62, %rbx
	ja	.L30
	movq	24(%rdx), %r15
	movl	$128, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r15
	addq	%r15, %r8
.L30:
	orq	%r11, %r8
	xorl	%r11d, %r11d
	cmpq	$63, %r14
	ja	.L31
	movq	32(%rdx), %r11
	leal	-192(%rdi), %ecx
	salq	%cl, %r11
.L31:
	cmpq	$62, %r13
	ja	.L32
	movq	32(%rdx), %r15
	movl	$192, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r15
	addq	%r15, %r11
.L32:
	movq	$-256, %r12
	orq	%r11, %r8
	xorl	%r15d, %r15d
	subq	%rsi, %r12
	movq	%r8, -8(%rsp)
	cmpq	$63, %r12
	ja	.L33
	movq	40(%rdx), %r15
	movl	%edi, %ecx
	salq	%cl, %r15
.L33:
	movq	$-193, %r11
	subq	%rsi, %r11
	cmpq	$62, %r11
	ja	.L34
	movq	40(%rdx), %r8
	movl	%edi, %ecx
	negl	%ecx
	shrq	%cl, %r8
	addq	%r8, %r15
.L34:
	movq	-8(%rsp), %rcx
	xorl	%r8d, %r8d
	orq	%r15, %rcx
	movq	%rcx, 8(%rax)
	cmpq	$-63, %rsi
	jl	.L35
	movq	(%rdx), %r8
	movl	%edi, %ecx
	salq	%cl, %r8
.L35:
	xorl	%r15d, %r15d
	cmpq	$63, %r9
	ja	.L36
	movq	8(%rdx), %r15
	leal	-64(%rdi), %ecx
	salq	%cl, %r15
.L36:
	cmpq	$62, %r10
	ja	.L37
	movq	8(%rdx), %r10
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r10
	addq	%r10, %r15
.L37:
	orq	%r15, %r8
	xorl	%r9d, %r9d
	cmpq	$63, %rbp
	ja	.L38
	movq	16(%rdx), %r9
	leal	-128(%rdi), %ecx
	salq	%cl, %r9
.L38:
	cmpq	$62, %rbx
	ja	.L39
	movq	16(%rdx), %rbx
	movl	$128, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %r9
.L39:
	orq	%r9, %r8
	xorl	%r9d, %r9d
	cmpq	$63, %r14
	ja	.L40
	movq	24(%rdx), %r9
	leal	-192(%rdi), %ecx
	salq	%cl, %r9
.L40:
	cmpq	$62, %r13
	ja	.L41
	movq	24(%rdx), %rbx
	movl	$192, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %r9
.L41:
	orq	%r9, %r8
	xorl	%r9d, %r9d
	cmpq	$63, %r12
	ja	.L42
	movq	32(%rdx), %r9
	movl	%edi, %ecx
	salq	%cl, %r9
.L42:
	cmpq	$62, %r11
	ja	.L43
	movq	32(%rdx), %rbx
	movl	%edi, %ecx
	negl	%ecx
	shrq	%cl, %rbx
	addq	%rbx, %r9
.L43:
	movq	$-320, %rcx
	orq	%r9, %r8
	xorl	%r9d, %r9d
	subq	%rsi, %rcx
	cmpq	$63, %rcx
	ja	.L44
	movq	40(%rdx), %r9
	leal	-320(%rdi), %ecx
	salq	%cl, %r9
.L44:
	movq	$-257, %rcx
	subq	%rsi, %rcx
	cmpq	$62, %rcx
	ja	.L45
	movq	40(%rdx), %rdx
	movl	$320, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rdx
	addq	%rdx, %r9
.L45:
	orq	%r9, %r8
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	movq	%r8, (%rax)
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L69:
	.cfi_restore_state
	cmpq	$62, %rbp
	jbe	.L142
	cmpq	$63, %r14
	ja	.L73
	movq	(%rdx), %rbx
	movl	%esi, %ecx
	shrq	%cl, %rbx
	orq	%rbx, %rdi
	xorl	%ebx, %ebx
	movq	%rdi, 32(%rax)
	jmp	.L74
.L64:
	movq	%rbx, 24(%rax)
	cmpq	$63, %rsi
	jg	.L118
	movq	32(%rdx), %rdi
	movl	%esi, %ecx
	shrq	%cl, %rdi
	jmp	.L63
.L75:
	movq	%rdi, 32(%rax)
	cmpq	$63, %rsi
	jg	.L121
	movq	40(%rdx), %rbx
	movl	%esi, %ecx
	shrq	%cl, %rbx
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L82:
	cmpq	$62, %r13
	jbe	.L143
	leaq	-320(%rsi), %rcx
	cmpq	$63, %rcx
	ja	.L126
	movq	(%rdx), %rdi
	leal	-320(%rsi), %ecx
	movq	%rdi, %rdx
	shrq	%cl, %rdx
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L58:
	cmpq	$62, %r11
	jbe	.L144
	cmpq	$63, %r12
	ja	.L62
	movq	(%rdx), %rdi
	leal	-192(%rsi), %ecx
	shrq	%cl, %rdi
	orq	%rdi, %rbx
	xorl	%edi, %edi
	movq	%rbx, 24(%rax)
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L11:
	movq	$0, 40(%rax)
	xorl	%r8d, %r8d
	jmp	.L88
.L145:
	movq	16(%rdx), %rbx
	movl	%esi, %ecx
	leaq	-65(%rsi), %r11
	shrq	%cl, %rbx
	cmpq	$63, %r10
	jbe	.L52
.L115:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L54:
	orq	%rbx, %rcx
	movq	%rcx, 16(%rax)
	cmpq	$63, %rsi
	jg	.L116
	movq	24(%rdx), %rbx
	movl	%esi, %ecx
	shrq	%cl, %rbx
	jmp	.L55
.L138:
	orq	%r13, %rbx
	jmp	.L62
.L139:
	orq	%r15, %rdi
	cmpq	$62, %r13
	jbe	.L90
	movq	%rdi, 32(%rax)
	xorl	%ebx, %ebx
	jmp	.L74
.L116:
	xorl	%ebx, %ebx
	jmp	.L55
.L140:
	orq	%r10, %r8
	jmp	.L86
.L126:
	xorl	%edx, %edx
	jmp	.L87
.L142:
	movl	%esi, -8(%rsp)
	movq	8(%rdx), %rbx
	xorl	%r15d, %r15d
	jmp	.L70
.L118:
	xorl	%edi, %edi
	jmp	.L63
.L121:
	xorl	%ebx, %ebx
	jmp	.L74
.L143:
	movq	8(%rdx), %r9
	movl	%esi, %edi
	xorl	%r10d, %r10d
	jmp	.L83
.L144:
	movq	8(%rdx), %rdi
	movl	%esi, %r14d
	xorl	%r13d, %r13d
	jmp	.L59
.L51:
	movq	%rdi, 8(%rax)
	leaq	-128(%rsi), %r10
	cmpq	$63, %rsi
	jle	.L145
	leaq	-65(%rsi), %rcx
	xorl	%ebx, %ebx
	movq	%rcx, %r11
	cmpq	$63, %r10
	ja	.L50
.L52:
	movq	(%rdx), %rdi
	leal	-128(%rsi), %ecx
	shrq	%cl, %rdi
	movq	%rdi, %rcx
	jmp	.L54
	.cfi_endproc
.LFE29:
	.size	biguint_rsh, .-biguint_rsh
	.p2align 4
	.globl	biguint_lsh
	.type	biguint_lsh, @function
biguint_lsh:
.LFB30:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	testq	%rsi, %rsi
	js	.L273
	cmpq	$63, %rsi
	jle	.L274
	leaq	-64(%rsi), %r8
	movq	$0, 40(%rdi)
	leaq	-1(%rsi), %r9
	xorl	%edi, %edi
	cmpq	$63, %r8
	ja	.L185
.L278:
	movq	40(%rdx), %r10
	leal	-64(%rsi), %ecx
	movl	%esi, %ebp
	salq	%cl, %r10
	orq	%r10, %rdi
	leaq	-128(%rsi), %r10
	movq	%rdi, 32(%rax)
	movq	32(%rdx), %rdi
	movq	%rdi, %rbx
	salq	%cl, %rbx
	cmpq	$62, %r9
	ja	.L272
	xorl	%r11d, %r11d
.L186:
	movl	$64, %ecx
	subl	%ebp, %ecx
	shrq	%cl, %rdi
	addq	%rbx, %rdi
	movq	%rdi, %rbx
	orq	%r11, %rbx
.L272:
	leaq	-65(%rsi), %rcx
.L187:
	movq	%rcx, %r11
	cmpq	$62, %rcx
	ja	.L252
	movq	40(%rdx), %rdi
	movl	$128, %ecx
	subl	%esi, %ecx
	shrq	%cl, %rdi
	movq	%rdi, %rcx
	orq	%rbx, %rcx
	xorl	%ebx, %ebx
	movq	%rcx, 24(%rax)
.L192:
	xorl	%edi, %edi
	cmpq	$63, %r8
	ja	.L193
	movq	24(%rdx), %rdi
	leal	-64(%rsi), %ecx
	salq	%cl, %rdi
.L193:
	cmpq	$62, %r9
	ja	.L194
	movq	24(%rdx), %r15
	movl	$64, %ecx
	subl	%esi, %ecx
	shrq	%cl, %r15
	addq	%r15, %rdi
.L194:
	orq	%rdi, %rbx
	leaq	-192(%rsi), %r12
	leaq	-129(%rsi), %rbp
	cmpq	$63, %r10
	ja	.L195
	movq	32(%rdx), %rdi
	leal	-128(%rsi), %ecx
	movl	%esi, %r14d
	movq	%rdi, %r13
	salq	%cl, %r13
	cmpq	$62, %r11
	ja	.L275
.L196:
	movl	$128, %ecx
	subl	%r14d, %ecx
	shrq	%cl, %rdi
	movq	%rdi, %rcx
	addq	%r13, %rcx
	orq	%rcx, %rbx
.L199:
	cmpq	$62, %rbp
	ja	.L201
	movq	40(%rdx), %rdi
	movl	$192, %ecx
	subl	%esi, %ecx
	shrq	%cl, %rdi
	orq	%rdi, %rbx
	xorl	%edi, %edi
	movq	%rbx, 16(%rax)
.L200:
	xorl	%ebx, %ebx
	cmpq	$63, %r8
	ja	.L202
	movq	16(%rdx), %rbx
	leal	-64(%rsi), %ecx
	salq	%cl, %rbx
.L202:
	cmpq	$62, %r9
	ja	.L203
	movq	16(%rdx), %r15
	movl	$64, %ecx
	subl	%esi, %ecx
	shrq	%cl, %r15
	addq	%r15, %rbx
.L203:
	orq	%rbx, %rdi
	xorl	%ebx, %ebx
	cmpq	$63, %r10
	ja	.L204
	movq	24(%rdx), %rbx
	leal	-128(%rsi), %ecx
	salq	%cl, %rbx
.L204:
	cmpq	$62, %r11
	ja	.L205
	movq	24(%rdx), %r14
	movl	$128, %ecx
	subl	%esi, %ecx
	shrq	%cl, %r14
	addq	%r14, %rbx
.L205:
	orq	%rbx, %rdi
	leaq	-256(%rsi), %r14
	leaq	-193(%rsi), %r13
	cmpq	$63, %r12
	ja	.L206
	movq	32(%rdx), %rbx
	leal	-192(%rsi), %ecx
	movl	%esi, -8(%rsp)
	movq	%rbx, %r15
	salq	%cl, %r15
	cmpq	$62, %rbp
	ja	.L276
.L207:
	movl	$192, %ecx
	subl	-8(%rsp), %ecx
	shrq	%cl, %rbx
	addq	%r15, %rbx
	orq	%rbx, %rdi
.L210:
	cmpq	$62, %r13
	ja	.L212
.L227:
	movq	40(%rdx), %rbx
	movl	%esi, %ecx
	negl	%ecx
	shrq	%cl, %rbx
	orq	%rbx, %rdi
	xorl	%ebx, %ebx
	movq	%rdi, 8(%rax)
.L211:
	xorl	%edi, %edi
	cmpq	$63, %r8
	ja	.L213
	movq	8(%rdx), %rdi
	leal	-64(%rsi), %ecx
	salq	%cl, %rdi
.L213:
	cmpq	$62, %r9
	ja	.L214
	movq	8(%rdx), %r15
	movl	$64, %ecx
	subl	%esi, %ecx
	shrq	%cl, %r15
	addq	%r15, %rdi
.L214:
	orq	%rdi, %rbx
	xorl	%edi, %edi
	movq	%rbx, %r8
	cmpq	$63, %r10
	ja	.L215
	movq	16(%rdx), %rdi
	leal	-128(%rsi), %ecx
	salq	%cl, %rdi
.L215:
	cmpq	$62, %r11
	ja	.L216
	movq	16(%rdx), %rbx
	movl	$128, %ecx
	subl	%esi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %rdi
.L216:
	orq	%rdi, %r8
	xorl	%edi, %edi
	cmpq	$63, %r12
	ja	.L217
	movq	24(%rdx), %rdi
	leal	-192(%rsi), %ecx
	salq	%cl, %rdi
.L217:
	cmpq	$62, %rbp
	ja	.L218
	movq	24(%rdx), %rbx
	movl	$192, %ecx
	subl	%esi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %rdi
.L218:
	orq	%rdi, %r8
	cmpq	$63, %r14
	ja	.L219
	movq	32(%rdx), %r9
	movl	%esi, %ecx
	movl	%esi, %edi
	movq	%r9, %r10
	salq	%cl, %r10
	cmpq	$62, %r13
	ja	.L277
.L220:
	movl	%edi, %ecx
	negl	%ecx
	shrq	%cl, %r9
	addq	%r10, %r9
	orq	%r9, %r8
.L223:
	leaq	-257(%rsi), %rcx
	cmpq	$62, %rcx
	ja	.L263
	movl	$320, %ecx
	subl	%esi, %ecx
	movq	40(%rdx), %rsi
	movq	%rsi, %rdx
	shrq	%cl, %rdx
.L224:
	orq	%r8, %rdx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	movq	%rdx, (%rax)
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L274:
	.cfi_restore_state
	movq	40(%rdx), %rbx
	movl	%esi, %ecx
	movq	32(%rdx), %rdi
	leaq	-64(%rsi), %r8
	leaq	-1(%rsi), %r9
	salq	%cl, %rbx
	salq	%cl, %rdi
	movq	%rbx, 40(%rax)
	cmpq	$63, %r8
	jbe	.L278
.L185:
	cmpq	$62, %r9
	ja	.L188
	movq	40(%rdx), %rbx
	movl	$64, %ecx
	movq	24(%rdx), %r11
	movl	%esi, %ebp
	subl	%esi, %ecx
	leaq	-128(%rsi), %r10
	shrq	%cl, %rbx
	movl	%esi, %ecx
	orq	%rbx, %rdi
	salq	%cl, %r11
	xorl	%ebx, %ebx
	movq	%rdi, 32(%rax)
	movq	32(%rdx), %rdi
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L273:
	movq	%rsi, %rdi
	negq	%rdi
	cmpq	$-63, %rsi
	jl	.L148
	movq	(%rdx), %rbx
	movl	%edi, %ecx
	movq	8(%rdx), %r8
	shrq	%cl, %rbx
	shrq	%cl, %r8
	movq	%rbx, (%rax)
.L225:
	movq	$-64, %r9
	xorl	%r11d, %r11d
	subq	%rsi, %r9
	cmpq	$63, %r9
	ja	.L149
	movq	(%rdx), %r11
	leal	-64(%rdi), %ecx
	shrq	%cl, %r11
.L149:
	movq	%rsi, %r10
	notq	%r10
	cmpq	$62, %r10
	ja	.L150
	movq	(%rdx), %rbx
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %r11
.L150:
	orq	%r11, %r8
	xorl	%r11d, %r11d
	movq	%r8, 8(%rax)
	cmpq	$-63, %rsi
	jl	.L151
	movq	16(%rdx), %r11
	movl	%edi, %ecx
	shrq	%cl, %r11
.L151:
	xorl	%r8d, %r8d
	cmpq	$63, %r9
	ja	.L152
	movq	8(%rdx), %r8
	leal	-64(%rdi), %ecx
	shrq	%cl, %r8
.L152:
	cmpq	$62, %r10
	ja	.L153
	movq	8(%rdx), %rbx
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %r8
.L153:
	movq	$-128, %rbp
	orq	%r8, %r11
	xorl	%r8d, %r8d
	subq	%rsi, %rbp
	cmpq	$63, %rbp
	ja	.L154
	movq	(%rdx), %r8
	leal	-128(%rdi), %ecx
	shrq	%cl, %r8
.L154:
	movq	$-65, %rbx
	subq	%rsi, %rbx
	cmpq	$62, %rbx
	ja	.L155
	movq	(%rdx), %r14
	movl	$128, %ecx
	subl	%edi, %ecx
	salq	%cl, %r14
	addq	%r14, %r8
.L155:
	orq	%r11, %r8
	movq	%r8, 16(%rax)
	xorl	%r8d, %r8d
	cmpq	$-63, %rsi
	jl	.L156
	movq	24(%rdx), %r8
	movl	%edi, %ecx
	shrq	%cl, %r8
.L156:
	xorl	%r11d, %r11d
	cmpq	$63, %r9
	ja	.L157
	movq	16(%rdx), %r11
	leal	-64(%rdi), %ecx
	shrq	%cl, %r11
.L157:
	cmpq	$62, %r10
	ja	.L158
	movq	16(%rdx), %r15
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %r15
	addq	%r15, %r11
.L158:
	orq	%r11, %r8
	xorl	%r11d, %r11d
	cmpq	$63, %rbp
	ja	.L159
	movq	8(%rdx), %r11
	leal	-128(%rdi), %ecx
	shrq	%cl, %r11
.L159:
	cmpq	$62, %rbx
	ja	.L160
	movq	8(%rdx), %r14
	movl	$128, %ecx
	subl	%edi, %ecx
	salq	%cl, %r14
	addq	%r14, %r11
.L160:
	movq	$-192, %r14
	orq	%r11, %r8
	xorl	%r11d, %r11d
	subq	%rsi, %r14
	cmpq	$63, %r14
	ja	.L161
	movq	(%rdx), %r11
	leal	-192(%rdi), %ecx
	shrq	%cl, %r11
.L161:
	movq	$-129, %r13
	subq	%rsi, %r13
	cmpq	$62, %r13
	ja	.L162
	movq	(%rdx), %r15
	movl	$192, %ecx
	subl	%edi, %ecx
	salq	%cl, %r15
	addq	%r15, %r11
.L162:
	orq	%r11, %r8
	xorl	%r11d, %r11d
	movq	%r8, 24(%rax)
	cmpq	$-63, %rsi
	jl	.L163
	movq	32(%rdx), %r11
	movl	%edi, %ecx
	shrq	%cl, %r11
.L163:
	xorl	%r8d, %r8d
	cmpq	$63, %r9
	ja	.L164
	movq	24(%rdx), %r8
	leal	-64(%rdi), %ecx
	shrq	%cl, %r8
.L164:
	cmpq	$62, %r10
	ja	.L165
	movq	24(%rdx), %r15
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %r15
	addq	%r15, %r8
.L165:
	orq	%r8, %r11
	xorl	%r8d, %r8d
	cmpq	$63, %rbp
	ja	.L166
	movq	16(%rdx), %r8
	leal	-128(%rdi), %ecx
	shrq	%cl, %r8
.L166:
	cmpq	$62, %rbx
	ja	.L167
	movq	16(%rdx), %r15
	movl	$128, %ecx
	subl	%edi, %ecx
	salq	%cl, %r15
	addq	%r15, %r8
.L167:
	orq	%r11, %r8
	xorl	%r11d, %r11d
	cmpq	$63, %r14
	ja	.L168
	movq	8(%rdx), %r11
	leal	-192(%rdi), %ecx
	shrq	%cl, %r11
.L168:
	cmpq	$62, %r13
	ja	.L169
	movq	8(%rdx), %r15
	movl	$192, %ecx
	subl	%edi, %ecx
	salq	%cl, %r15
	addq	%r15, %r11
.L169:
	movq	$-256, %r12
	orq	%r11, %r8
	xorl	%r15d, %r15d
	subq	%rsi, %r12
	movq	%r8, -8(%rsp)
	cmpq	$63, %r12
	ja	.L170
	movq	(%rdx), %r15
	movl	%edi, %ecx
	shrq	%cl, %r15
.L170:
	movq	$-193, %r11
	subq	%rsi, %r11
	cmpq	$62, %r11
	ja	.L171
	movq	(%rdx), %r8
	movl	%edi, %ecx
	negl	%ecx
	salq	%cl, %r8
	addq	%r8, %r15
.L171:
	movq	-8(%rsp), %rcx
	xorl	%r8d, %r8d
	orq	%r15, %rcx
	movq	%rcx, 32(%rax)
	cmpq	$-63, %rsi
	jl	.L172
	movq	40(%rdx), %r8
	movl	%edi, %ecx
	shrq	%cl, %r8
.L172:
	xorl	%r15d, %r15d
	cmpq	$63, %r9
	ja	.L173
	movq	32(%rdx), %r15
	leal	-64(%rdi), %ecx
	shrq	%cl, %r15
.L173:
	cmpq	$62, %r10
	ja	.L174
	movq	32(%rdx), %r10
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %r10
	addq	%r10, %r15
.L174:
	orq	%r15, %r8
	xorl	%r9d, %r9d
	cmpq	$63, %rbp
	ja	.L175
	movq	24(%rdx), %r9
	leal	-128(%rdi), %ecx
	shrq	%cl, %r9
.L175:
	cmpq	$62, %rbx
	ja	.L176
	movq	24(%rdx), %rbx
	movl	$128, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %r9
.L176:
	orq	%r9, %r8
	xorl	%r9d, %r9d
	cmpq	$63, %r14
	ja	.L177
	movq	16(%rdx), %r9
	leal	-192(%rdi), %ecx
	shrq	%cl, %r9
.L177:
	cmpq	$62, %r13
	ja	.L178
	movq	16(%rdx), %rbx
	movl	$192, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %r9
.L178:
	orq	%r9, %r8
	xorl	%r9d, %r9d
	cmpq	$63, %r12
	ja	.L179
	movq	8(%rdx), %r9
	movl	%edi, %ecx
	shrq	%cl, %r9
.L179:
	cmpq	$62, %r11
	ja	.L180
	movq	8(%rdx), %rbx
	movl	%edi, %ecx
	negl	%ecx
	salq	%cl, %rbx
	addq	%rbx, %r9
.L180:
	movq	$-320, %rcx
	orq	%r9, %r8
	xorl	%r9d, %r9d
	subq	%rsi, %rcx
	cmpq	$63, %rcx
	ja	.L181
	movq	(%rdx), %r9
	leal	-320(%rdi), %ecx
	shrq	%cl, %r9
.L181:
	movq	$-257, %rcx
	subq	%rsi, %rcx
	cmpq	$62, %rcx
	ja	.L182
	movq	(%rdx), %rdx
	movl	$320, %ecx
	subl	%edi, %ecx
	salq	%cl, %rdx
	addq	%rdx, %r9
.L182:
	orq	%r9, %r8
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	movq	%r8, 40(%rax)
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L206:
	.cfi_restore_state
	cmpq	$62, %rbp
	jbe	.L279
	cmpq	$63, %r14
	ja	.L210
	movq	40(%rdx), %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	orq	%rbx, %rdi
	xorl	%ebx, %ebx
	movq	%rdi, 8(%rax)
	jmp	.L211
.L201:
	movq	%rbx, 16(%rax)
	cmpq	$63, %rsi
	jg	.L255
	movq	8(%rdx), %rdi
	movl	%esi, %ecx
	salq	%cl, %rdi
	jmp	.L200
.L212:
	movq	%rdi, 8(%rax)
	cmpq	$63, %rsi
	jg	.L258
	movq	(%rdx), %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	jmp	.L211
	.p2align 4,,10
	.p2align 3
.L219:
	cmpq	$62, %r13
	jbe	.L280
	leaq	-320(%rsi), %rcx
	cmpq	$63, %rcx
	ja	.L263
	movq	40(%rdx), %rdi
	leal	-320(%rsi), %ecx
	movq	%rdi, %rdx
	salq	%cl, %rdx
	jmp	.L224
	.p2align 4,,10
	.p2align 3
.L195:
	cmpq	$62, %r11
	jbe	.L281
	cmpq	$63, %r12
	ja	.L199
	movq	40(%rdx), %rdi
	leal	-192(%rsi), %ecx
	salq	%cl, %rdi
	orq	%rdi, %rbx
	xorl	%edi, %edi
	movq	%rbx, 16(%rax)
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L148:
	movq	$0, (%rax)
	xorl	%r8d, %r8d
	jmp	.L225
.L282:
	movq	24(%rdx), %rbx
	movl	%esi, %ecx
	leaq	-65(%rsi), %r11
	salq	%cl, %rbx
	cmpq	$63, %r10
	jbe	.L189
.L252:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L191:
	orq	%rbx, %rcx
	movq	%rcx, 24(%rax)
	cmpq	$63, %rsi
	jg	.L253
	movq	16(%rdx), %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	jmp	.L192
.L275:
	orq	%r13, %rbx
	jmp	.L199
.L276:
	orq	%r15, %rdi
	cmpq	$62, %r13
	jbe	.L227
	movq	%rdi, 8(%rax)
	xorl	%ebx, %ebx
	jmp	.L211
.L253:
	xorl	%ebx, %ebx
	jmp	.L192
.L277:
	orq	%r10, %r8
	jmp	.L223
.L263:
	xorl	%edx, %edx
	jmp	.L224
.L279:
	movl	%esi, -8(%rsp)
	movq	32(%rdx), %rbx
	xorl	%r15d, %r15d
	jmp	.L207
.L255:
	xorl	%edi, %edi
	jmp	.L200
.L258:
	xorl	%ebx, %ebx
	jmp	.L211
.L280:
	movq	32(%rdx), %r9
	movl	%esi, %edi
	xorl	%r10d, %r10d
	jmp	.L220
.L281:
	movq	32(%rdx), %rdi
	movl	%esi, %r14d
	xorl	%r13d, %r13d
	jmp	.L196
.L188:
	movq	%rdi, 32(%rax)
	leaq	-128(%rsi), %r10
	cmpq	$63, %rsi
	jle	.L282
	leaq	-65(%rsi), %rcx
	xorl	%ebx, %ebx
	movq	%rcx, %r11
	cmpq	$63, %r10
	ja	.L187
.L189:
	movq	40(%rdx), %rdi
	leal	-128(%rsi), %ecx
	salq	%cl, %rdi
	movq	%rdi, %rcx
	jmp	.L191
	.cfi_endproc
.LFE30:
	.size	biguint_lsh, .-biguint_lsh
	.p2align 4
	.globl	biguint_rrot
	.type	biguint_rrot, @function
biguint_rrot:
.LFB31:
	.cfi_startproc
	movq	%rsi, %rcx
	movq	%rdx, %rsi
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movabsq	$3074457345618258603, %rdx
	movq	%rcx, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	imulq	%rdx
	movq	%rcx, %rax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	sarq	$63, %rax
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	sarq	$6, %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	movq	%rcx, %rdx
	salq	$7, %rax
	subq	%rax, %rdx
	testq	%rcx, %rcx
	js	.L284
	testq	%rdx, %rdx
	jns	.L285
	movq	%rdx, %rdi
	negq	%rdi
	cmpq	$-63, %rdx
	jl	.L466
	movq	40(%rsi), %rax
	movl	%edi, %ecx
	salq	%cl, %rax
	movq	%rax, -88(%rsp)
	movq	32(%rsi), %rax
	salq	%cl, %rax
.L286:
	movq	$-64, %r8
	xorl	%r11d, %r11d
	subq	%rdx, %r8
	cmpq	$63, %r8
	ja	.L287
	movq	40(%rsi), %r11
	leal	-64(%rdi), %ecx
	salq	%cl, %r11
.L287:
	movq	%rdx, %r12
	notq	%r12
	cmpq	$62, %r12
	ja	.L288
	movq	40(%rsi), %rbx
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %r11
.L288:
	orq	%r11, %rax
	xorl	%ebp, %ebp
	movq	%rax, -32(%rsp)
	cmpq	$-63, %rdx
	jl	.L289
	movq	24(%rsi), %rbp
	movl	%edi, %ecx
	salq	%cl, %rbp
.L289:
	xorl	%eax, %eax
	cmpq	$63, %r8
	ja	.L290
	movq	32(%rsi), %rax
	leal	-64(%rdi), %ecx
	salq	%cl, %rax
.L290:
	cmpq	$62, %r12
	ja	.L291
	movq	32(%rsi), %rbx
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %rax
.L291:
	movq	$-128, %r11
	orq	%rbp, %rax
	xorl	%ebp, %ebp
	subq	%rdx, %r11
	cmpq	$63, %r11
	ja	.L292
	movq	40(%rsi), %rbp
	leal	-128(%rdi), %ecx
	salq	%cl, %rbp
.L292:
	movq	$-65, %r10
	subq	%rdx, %r10
	cmpq	$62, %r10
	ja	.L293
	movq	40(%rsi), %rbx
	movl	$128, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %rbp
.L293:
	orq	%rbp, %rax
	xorl	%r13d, %r13d
	movq	%rax, -40(%rsp)
	cmpq	$-63, %rdx
	jl	.L294
	movq	16(%rsi), %r13
	movl	%edi, %ecx
	salq	%cl, %r13
.L294:
	xorl	%eax, %eax
	cmpq	$63, %r8
	ja	.L295
	movq	24(%rsi), %rax
	leal	-64(%rdi), %ecx
	salq	%cl, %rax
.L295:
	cmpq	$62, %r12
	ja	.L296
	movq	24(%rsi), %rbx
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %rax
.L296:
	orq	%rax, %r13
	xorl	%eax, %eax
	cmpq	$63, %r11
	ja	.L297
	movq	32(%rsi), %rax
	leal	-128(%rdi), %ecx
	salq	%cl, %rax
.L297:
	cmpq	$62, %r10
	ja	.L298
	movq	32(%rsi), %rbx
	movl	$128, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %rax
.L298:
	movq	$-192, %rbp
	orq	%rax, %r13
	xorl	%eax, %eax
	subq	%rdx, %rbp
	cmpq	$63, %rbp
	ja	.L299
	movq	40(%rsi), %rax
	leal	-192(%rdi), %ecx
	salq	%cl, %rax
.L299:
	movq	$-129, %rbx
	subq	%rdx, %rbx
	cmpq	$62, %rbx
	ja	.L300
	movq	40(%rsi), %r9
	movl	$192, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r9
	addq	%r9, %rax
.L300:
	orq	%rax, %r13
	xorl	%eax, %eax
	movq	%r13, -48(%rsp)
	cmpq	$-63, %rdx
	jl	.L301
	movq	8(%rsi), %rax
	movl	%edi, %ecx
	salq	%cl, %rax
.L301:
	xorl	%r15d, %r15d
	cmpq	$63, %r8
	ja	.L302
	movq	16(%rsi), %r15
	leal	-64(%rdi), %ecx
	salq	%cl, %r15
.L302:
	cmpq	$62, %r12
	ja	.L303
	movq	16(%rsi), %r9
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r9
	addq	%r9, %r15
.L303:
	orq	%r15, %rax
	xorl	%r15d, %r15d
	cmpq	$63, %r11
	ja	.L304
	movq	24(%rsi), %r15
	leal	-128(%rdi), %ecx
	salq	%cl, %r15
.L304:
	cmpq	$62, %r10
	ja	.L305
	movq	24(%rsi), %r9
	movl	$128, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r9
	addq	%r9, %r15
.L305:
	orq	%rax, %r15
	xorl	%eax, %eax
	cmpq	$63, %rbp
	ja	.L306
	movq	32(%rsi), %rax
	leal	-192(%rdi), %ecx
	salq	%cl, %rax
.L306:
	cmpq	$62, %rbx
	ja	.L307
	movq	32(%rsi), %r9
	movl	$192, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r9
	addq	%r9, %rax
.L307:
	orq	%rax, %r15
	movq	$-256, %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	movq	%rax, -96(%rsp)
	xorl	%eax, %eax
	cmpq	$63, %rcx
	ja	.L308
	movq	40(%rsi), %rax
	movl	%edi, %ecx
	salq	%cl, %rax
.L308:
	movq	$-193, %r13
	subq	%rdx, %r13
	cmpq	$62, %r13
	ja	.L309
	movq	40(%rsi), %r9
	movl	%edi, %ecx
	negl	%ecx
	shrq	%cl, %r9
	addq	%r9, %rax
.L309:
	orq	%rax, %r15
	xorl	%r9d, %r9d
	movq	%r15, -56(%rsp)
	cmpq	$-63, %rdx
	jl	.L310
	movq	(%rsi), %r9
	movl	%edi, %ecx
	salq	%cl, %r9
.L310:
	xorl	%r15d, %r15d
	cmpq	$63, %r8
	ja	.L311
	movq	8(%rsi), %rax
	leal	-64(%rdi), %ecx
	salq	%cl, %rax
	movq	%rax, %r15
.L311:
	cmpq	$62, %r12
	ja	.L312
	movq	8(%rsi), %rax
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rax
	addq	%rax, %r15
.L312:
	orq	%r15, %r9
	xorl	%r15d, %r15d
	cmpq	$63, %r11
	ja	.L313
	movq	16(%rsi), %r15
	leal	-128(%rdi), %ecx
	salq	%cl, %r15
.L313:
	cmpq	$62, %r10
	ja	.L314
	movq	16(%rsi), %rax
	movl	$128, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rax
	addq	%rax, %r15
.L314:
	orq	%r15, %r9
	xorl	%eax, %eax
	cmpq	$63, %rbp
	ja	.L315
	movq	24(%rsi), %rax
	leal	-192(%rdi), %ecx
	salq	%cl, %rax
.L315:
	cmpq	$62, %rbx
	ja	.L316
	movq	24(%rsi), %rbx
	movl	$192, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %rax
.L316:
	orq	%rax, %r9
	xorl	%r8d, %r8d
	cmpq	$63, -96(%rsp)
	ja	.L317
	movq	32(%rsi), %r8
	movl	%edi, %ecx
	salq	%cl, %r8
.L317:
	cmpq	$62, %r13
	ja	.L318
	movq	32(%rsi), %rax
	movl	%edi, %ecx
	negl	%ecx
	shrq	%cl, %rax
	addq	%rax, %r8
.L318:
	movq	$-320, %rcx
	orq	%r8, %r9
	xorl	%r15d, %r15d
	subq	%rdx, %rcx
	cmpq	$63, %rcx
	ja	.L319
	movq	40(%rsi), %r15
	leal	-320(%rdi), %ecx
	salq	%cl, %r15
.L319:
	movq	$-257, %rcx
	subq	%rdx, %rcx
	cmpq	$62, %rcx
	ja	.L320
	movq	40(%rsi), %rax
	movl	$320, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rax
	addq	%rax, %r15
.L320:
	leaq	384(%rdx), %rdi
	orq	%r15, %r9
	cmpq	$63, %rdi
	jg	.L321
	movq	8(%rsi), %rax
	movq	(%rsi), %r11
	movl	%edi, %ecx
	leaq	320(%rdx), %r10
	leaq	383(%rdx), %r8
	movq	%rax, %r15
	movq	%r11, %rbx
	shrq	%cl, %r15
	shrq	%cl, %rbx
	movq	%r15, -96(%rsp)
	orq	%rbx, %r9
	cmpq	$63, %r10
	ja	.L322
	leal	-64(%rdi), %ebx
	leaq	319(%rdx), %r13
	movl	%ebx, %ecx
	shrq	%cl, %r11
	movl	%edi, %ecx
	orq	%r11, %r15
	movq	16(%rsi), %r11
	movq	%r15, -96(%rsp)
	leaq	256(%rdx), %r15
	shrq	%cl, %r11
.L460:
	movl	%ebx, %ecx
	movq	%rax, %r12
	movl	%edi, %ebp
	shrq	%cl, %r12
	movq	%r12, %rbx
	cmpq	$62, %r8
	ja	.L545
.L328:
	movl	$64, %ecx
	subl	%ebp, %ecx
	salq	%cl, %rax
	addq	%rax, %rbx
.L545:
	orq	%rbx, %r11
.L330:
	cmpq	$62, %r13
	ja	.L486
	movq	(%rsi), %rax
	movl	$128, %ecx
	subl	%edi, %ecx
	salq	%cl, %rax
.L331:
	orq	%r11, %rax
	xorl	%r11d, %r11d
	movq	%rax, -24(%rsp)
	cmpq	$63, %rdi
	jle	.L462
.L332:
	xorl	%eax, %eax
	cmpq	$63, %r10
	ja	.L333
	movq	16(%rsi), %rax
	leal	-64(%rdi), %ecx
	shrq	%cl, %rax
.L333:
	cmpq	$62, %r8
	ja	.L334
	movq	16(%rsi), %rbx
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %rax
.L334:
	leaq	255(%rdx), %rcx
	orq	%r11, %rax
	leaq	192(%rdx), %rbx
	movq	%rcx, -64(%rsp)
	cmpq	$63, %r15
	ja	.L335
	movq	8(%rsi), %r11
	leal	-128(%rdi), %ecx
	movl	%edi, %r12d
	movq	%r11, %rbp
	shrq	%cl, %rbp
	cmpq	$62, %r13
	ja	.L546
.L336:
	movl	$128, %ecx
	subl	%r12d, %ecx
	salq	%cl, %r11
	addq	%r11, %rbp
	orq	%rbp, %rax
.L339:
	cmpq	$62, -64(%rsp)
	ja	.L489
	movq	(%rsi), %r11
	movl	$192, %ecx
	subl	%edi, %ecx
	salq	%cl, %r11
	movq	%r11, %rcx
.L340:
	orq	%rax, %rcx
	xorl	%r11d, %r11d
	movq	%rcx, -80(%rsp)
	cmpq	$63, %rdi
	jg	.L341
	movq	32(%rsi), %r11
	movl	%edi, %ecx
	shrq	%cl, %r11
.L341:
	xorl	%eax, %eax
	cmpq	$63, %r10
	ja	.L342
	movq	24(%rsi), %rax
	leal	-64(%rdi), %ecx
	shrq	%cl, %rax
.L342:
	cmpq	$62, %r8
	ja	.L343
	movq	24(%rsi), %rbp
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbp
	addq	%rbp, %rax
.L343:
	orq	%r11, %rax
	xorl	%r11d, %r11d
	cmpq	$63, %r15
	ja	.L344
	movq	16(%rsi), %r11
	leal	-128(%rdi), %ecx
	shrq	%cl, %r11
.L344:
	cmpq	$62, %r13
	ja	.L345
	movq	16(%rsi), %rbp
	movl	$128, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbp
	addq	%rbp, %r11
.L345:
	leaq	191(%rdx), %rcx
	orq	%r11, %rax
	leaq	128(%rdx), %r12
	movq	%rcx, -16(%rsp)
	cmpq	$63, %rbx
	ja	.L346
	movq	8(%rsi), %r11
	leal	-192(%rdi), %ecx
	movl	%edi, -72(%rsp)
	movq	%r11, %rbp
	shrq	%cl, %rbp
	cmpq	$62, -64(%rsp)
	ja	.L547
.L347:
	movl	$192, %ecx
	subl	-72(%rsp), %ecx
	salq	%cl, %r11
	movq	%rbp, %rcx
	addq	%r11, %rcx
	orq	%rcx, %rax
.L350:
	cmpq	$62, -16(%rsp)
	ja	.L493
	movq	(%rsi), %r11
	movl	%edi, %ecx
	negl	%ecx
	salq	%cl, %r11
	movq	%r11, %rcx
.L351:
	orq	%rcx, %rax
	movq	%rax, -72(%rsp)
	xorl	%eax, %eax
	cmpq	$63, %rdi
	jg	.L352
	movq	40(%rsi), %rax
	movl	%edi, %ecx
	shrq	%cl, %rax
.L352:
	xorl	%r11d, %r11d
	cmpq	$63, %r10
	ja	.L353
	movq	32(%rsi), %r11
	leal	-64(%rdi), %ecx
	shrq	%cl, %r11
.L353:
	cmpq	$62, %r8
	ja	.L354
	movq	32(%rsi), %r10
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %r10
	addq	%r10, %r11
.L354:
	orq	%r11, %rax
	xorl	%r11d, %r11d
	cmpq	$63, %r15
	ja	.L355
	movq	24(%rsi), %r11
	leal	-128(%rdi), %ecx
	shrq	%cl, %r11
.L355:
	cmpq	$62, %r13
	ja	.L356
	movq	24(%rsi), %r10
	movl	$128, %ecx
	subl	%edi, %ecx
	salq	%cl, %r10
	addq	%r10, %r11
.L356:
	orq	%r11, %rax
	xorl	%r8d, %r8d
	cmpq	$63, %rbx
	ja	.L357
	movq	16(%rsi), %r8
	leal	-192(%rdi), %ecx
	shrq	%cl, %r8
.L357:
	cmpq	$62, -64(%rsp)
	ja	.L358
	movq	16(%rsi), %rbx
	movl	$192, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %r8
.L358:
	orq	%r8, %rax
	cmpq	$63, %r12
	ja	.L359
	movq	8(%rsi), %r10
	movl	%edi, %ecx
	movl	%edi, %r8d
	movq	%r10, %r11
	shrq	%cl, %r11
	cmpq	$62, -16(%rsp)
	ja	.L548
.L360:
	movl	%r8d, %ecx
	negl	%ecx
	salq	%cl, %r10
	addq	%r10, %r11
	orq	%r11, %rax
.L363:
	addq	$127, %rdx
	cmpq	$62, %rdx
	ja	.L498
	movq	(%rsi), %r11
	movl	$320, %ecx
	subl	%edi, %ecx
	salq	%cl, %r11
.L364:
	orq	%rax, %r11
	movq	%r11, -64(%rsp)
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L284:
	addq	$384, %rdx
.L285:
	cmpq	$63, %rdx
	jg	.L366
	movq	(%rsi), %r9
	movl	%edx, %ecx
	leaq	-64(%rdx), %rdi
	leaq	-1(%rdx), %r8
	movq	%r9, %rax
	shrq	%cl, %rax
	movq	%rax, -8(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, %rbx
	shrq	%cl, %rbx
	movq	%rbx, -96(%rsp)
	cmpq	$63, %rdi
	jbe	.L549
.L367:
	cmpq	$62, %r8
	ja	.L370
	movq	(%rsi), %rax
	movl	$64, %ecx
	movq	16(%rsi), %r11
	movl	%edx, %r9d
	subl	%edx, %ecx
	leaq	-128(%rdx), %r10
	xorl	%ebx, %ebx
	salq	%cl, %rax
	movl	%edx, %ecx
	orq	%rax, -96(%rsp)
	movq	8(%rsi), %rax
	shrq	%cl, %r11
.L372:
	movl	$64, %ecx
	subl	%r9d, %ecx
	leaq	-65(%rdx), %r9
	salq	%cl, %rax
	addq	%rbx, %rax
	orq	%rax, %r11
.L374:
	cmpq	$62, %r9
	ja	.L499
	movq	(%rsi), %rax
	movl	$128, %ecx
	subl	%edx, %ecx
	salq	%cl, %rax
	orq	%r11, %rax
	xorl	%r11d, %r11d
	movq	%rax, -24(%rsp)
.L376:
	xorl	%eax, %eax
	cmpq	$63, %rdi
	ja	.L377
	movq	16(%rsi), %rax
	leal	-64(%rdx), %ecx
	shrq	%cl, %rax
.L377:
	cmpq	$62, %r8
	ja	.L378
	movq	16(%rsi), %rbx
	movl	$64, %ecx
	subl	%edx, %ecx
	salq	%cl, %rbx
	addq	%rbx, %rax
.L378:
	orq	%r11, %rax
	leaq	-192(%rdx), %rbp
	leaq	-129(%rdx), %rbx
	cmpq	$63, %r10
	ja	.L379
	movq	8(%rsi), %r11
	leal	-128(%rdx), %ecx
	movl	%edx, %r13d
	movq	%r11, %r12
	shrq	%cl, %r12
	cmpq	$62, %r9
	ja	.L550
.L380:
	movl	$128, %ecx
	subl	%r13d, %ecx
	salq	%cl, %r11
	addq	%r11, %r12
	orq	%r12, %rax
.L383:
	cmpq	$62, %rbx
	ja	.L502
	movq	(%rsi), %r15
	movl	$192, %ecx
	xorl	%r11d, %r11d
	subl	%edx, %ecx
	salq	%cl, %r15
	movq	%r15, %rcx
	orq	%rax, %rcx
	movq	%rcx, -80(%rsp)
.L385:
	xorl	%eax, %eax
	cmpq	$63, %rdi
	ja	.L386
	movq	24(%rsi), %rax
	leal	-64(%rdx), %ecx
	shrq	%cl, %rax
.L386:
	cmpq	$62, %r8
	ja	.L387
	movq	24(%rsi), %r15
	movl	$64, %ecx
	subl	%edx, %ecx
	salq	%cl, %r15
	addq	%r15, %rax
.L387:
	orq	%r11, %rax
	xorl	%r11d, %r11d
	cmpq	$63, %r10
	ja	.L388
	movq	16(%rsi), %r11
	leal	-128(%rdx), %ecx
	shrq	%cl, %r11
.L388:
	cmpq	$62, %r9
	ja	.L389
	movq	16(%rsi), %r15
	movl	$128, %ecx
	subl	%edx, %ecx
	salq	%cl, %r15
	addq	%r15, %r11
.L389:
	orq	%r11, %rax
	leaq	-256(%rdx), %r13
	leaq	-193(%rdx), %r12
	cmpq	$63, %rbp
	ja	.L390
	movq	8(%rsi), %r11
	leal	-192(%rdx), %ecx
	movl	%edx, -88(%rsp)
	movq	%r11, %r15
	shrq	%cl, %r15
	cmpq	$62, %rbx
	ja	.L551
.L391:
	movl	$192, %ecx
	subl	-88(%rsp), %ecx
	salq	%cl, %r11
	movq	%r15, %rcx
	addq	%r11, %rcx
	orq	%rcx, %rax
.L394:
	cmpq	$62, %r12
	ja	.L506
	movq	(%rsi), %r15
	movl	%edx, %ecx
	negl	%ecx
	salq	%cl, %r15
	movq	%r15, %rcx
	orq	%rax, %rcx
	xorl	%eax, %eax
	movq	%rcx, -72(%rsp)
.L396:
	xorl	%r11d, %r11d
	cmpq	$63, %rdi
	ja	.L397
	movq	32(%rsi), %r11
	leal	-64(%rdx), %ecx
	shrq	%cl, %r11
.L397:
	cmpq	$62, %r8
	ja	.L398
	movq	32(%rsi), %rdi
	movl	$64, %ecx
	subl	%edx, %ecx
	salq	%cl, %rdi
	addq	%rdi, %r11
.L398:
	orq	%r11, %rax
	xorl	%edi, %edi
	cmpq	$63, %r10
	ja	.L399
	movq	24(%rsi), %rdi
	leal	-128(%rdx), %ecx
	shrq	%cl, %rdi
.L399:
	cmpq	$62, %r9
	ja	.L400
	movq	24(%rsi), %r10
	movl	$128, %ecx
	subl	%edx, %ecx
	salq	%cl, %r10
	addq	%r10, %rdi
.L400:
	orq	%rdi, %rax
	xorl	%r8d, %r8d
	cmpq	$63, %rbp
	ja	.L401
	movq	16(%rsi), %r8
	leal	-192(%rdx), %ecx
	shrq	%cl, %r8
.L401:
	cmpq	$62, %rbx
	ja	.L402
	movq	16(%rsi), %rbx
	movl	$192, %ecx
	subl	%edx, %ecx
	salq	%cl, %rbx
	addq	%rbx, %r8
.L402:
	orq	%r8, %rax
	movq	%rax, %r11
	cmpq	$63, %r13
	ja	.L403
	movq	8(%rsi), %rax
	movl	%edx, %ecx
	movl	%edx, %edi
	movq	%rax, %r8
	shrq	%cl, %r8
	cmpq	$62, %r12
	ja	.L552
.L404:
	movl	%edi, %ecx
	negl	%ecx
	salq	%cl, %rax
	addq	%r8, %rax
	orq	%rax, %r11
.L407:
	movl	$384, %eax
	leaq	-257(%rdx), %rcx
	subq	%rdx, %rax
	cmpq	$62, %rcx
	ja	.L511
	movq	(%rsi), %rbx
	movl	$320, %ecx
	movl	$447, %r10d
	subl	%edx, %ecx
	subq	%rdx, %r10
	salq	%cl, %rbx
	movq	%rbx, %rcx
	orq	%r11, %rcx
	movq	%rcx, -64(%rsp)
	cmpq	$63, %rax
	ja	.L410
	movq	$0, -88(%rsp)
.L409:
	movq	32(%rsi), %r11
	movl	%eax, %ecx
	salq	%cl, %r11
	jmp	.L450
	.p2align 4,,10
	.p2align 3
.L366:
	leaq	-64(%rdx), %rdi
	leaq	-1(%rdx), %r8
	cmpq	$63, %rdi
	ja	.L553
	movq	(%rsi), %rax
	leal	-64(%rdx), %ecx
	leaq	-128(%rdx), %r10
	movl	%edx, %r9d
	movq	$0, -8(%rsp)
	xorl	%r11d, %r11d
	shrq	%cl, %rax
	movq	%rax, -96(%rsp)
	movq	8(%rsi), %rax
	jmp	.L451
	.p2align 4,,10
	.p2align 3
.L321:
	leaq	320(%rdx), %r10
	leaq	383(%rdx), %r8
	cmpq	$63, %r10
	jbe	.L465
	movq	$0, -96(%rsp)
.L322:
	cmpq	$62, %r8
	ja	.L325
	movq	(%rsi), %rax
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %rax
	orq	%rax, -96(%rsp)
	cmpq	$63, %rdi
	jg	.L554
.L326:
	movq	16(%rsi), %r11
	movl	%edi, %ecx
	leaq	256(%rdx), %r15
	leaq	319(%rdx), %r13
	shrq	%cl, %r11
	cmpq	$62, %r8
	jbe	.L456
	cmpq	$63, %r15
	ja	.L330
	movq	(%rsi), %rax
	leal	-128(%rdi), %ecx
	shrq	%cl, %rax
	orq	%r11, %rax
	movq	%rax, -24(%rsp)
.L462:
	movq	24(%rsi), %r11
	movl	%edi, %ecx
	shrq	%cl, %r11
	jmp	.L332
	.p2align 4,,10
	.p2align 3
.L390:
	cmpq	$62, %rbx
	jbe	.L555
	cmpq	$63, %r13
	ja	.L394
	movq	(%rsi), %r15
	movl	%edx, %ecx
	shrq	%cl, %r15
	movq	%r15, %rcx
.L395:
	orq	%rax, %rcx
	movq	%rcx, -72(%rsp)
	cmpq	$63, %rdx
	jg	.L507
	movq	40(%rsi), %rax
	movl	%edx, %ecx
	shrq	%cl, %rax
	jmp	.L396
	.p2align 4,,10
	.p2align 3
.L379:
	cmpq	$62, %r9
	jbe	.L556
	cmpq	$63, %rbp
	ja	.L383
	movq	(%rsi), %r15
	leal	-192(%rdx), %ecx
	shrq	%cl, %r15
	movq	%r15, %rcx
.L384:
	orq	%rax, %rcx
	movq	%rcx, -80(%rsp)
	cmpq	$63, %rdx
	jg	.L503
	movq	32(%rsi), %r11
	movl	%edx, %ecx
	shrq	%cl, %r11
	jmp	.L385
	.p2align 4,,10
	.p2align 3
.L403:
	cmpq	$62, %r12
	jbe	.L557
	leaq	-320(%rdx), %rax
	cmpq	$63, %rax
	ja	.L407
	movq	(%rsi), %rax
	leal	-320(%rdx), %ecx
	shrq	%cl, %rax
.L408:
	orq	%rax, %r11
	movl	$384, %eax
	subq	%rdx, %rax
	movq	%r11, -64(%rsp)
	cmpq	$63, %rax
	ja	.L411
	movq	40(%rsi), %rdi
	movl	%eax, %ecx
	movl	$447, %r10d
	subq	%rdx, %r10
	movq	%rdi, %rbx
	salq	%cl, %rbx
	movq	%rbx, -88(%rsp)
	cmpq	$62, %r10
	ja	.L409
	movl	%eax, %r8d
	movq	32(%rsi), %r11
	negl	%r8d
	movl	%r8d, %ecx
	shrq	%cl, %rdi
	movl	%eax, %ecx
	addq	%rdi, %rbx
	movq	%r11, %rdi
	movq	%rbx, -88(%rsp)
	salq	%cl, %rdi
	movl	%r8d, %ecx
.L452:
	shrq	%cl, %r11
	addq	%rdi, %r11
.L450:
	movl	$320, %r9d
	xorl	%edi, %edi
	subq	%rdx, %r9
	cmpq	$63, %r9
	ja	.L412
	movq	40(%rsi), %rdi
	leal	-64(%rax), %ecx
	salq	%cl, %rdi
.L412:
	movl	$383, %r8d
	subq	%rdx, %r8
	cmpq	$62, %r8
	ja	.L413
	movq	40(%rsi), %rbx
	movl	$64, %ecx
	subl	%eax, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %rdi
.L413:
	orq	%rdi, %r11
	movq	%r11, -32(%rsp)
	xorl	%r11d, %r11d
	cmpq	$63, %rax
	ja	.L414
	movq	24(%rsi), %r11
	movl	%eax, %ecx
	salq	%cl, %r11
.L414:
	cmpq	$62, %r10
	ja	.L415
	movq	24(%rsi), %rbx
	movl	%eax, %ecx
	negl	%ecx
	shrq	%cl, %rbx
	addq	%rbx, %r11
.L415:
	xorl	%edi, %edi
	cmpq	$63, %r9
	ja	.L416
	movq	32(%rsi), %rdi
	leal	-64(%rax), %ecx
	salq	%cl, %rdi
.L416:
	cmpq	$62, %r8
	ja	.L417
	movq	32(%rsi), %rbx
	movl	$64, %ecx
	subl	%eax, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %rdi
.L417:
	movl	$256, %ebx
	orq	%r11, %rdi
	xorl	%ebp, %ebp
	subq	%rdx, %rbx
	cmpq	$63, %rbx
	ja	.L418
	movq	40(%rsi), %rbp
	leal	-128(%rax), %ecx
	salq	%cl, %rbp
.L418:
	movl	$319, %r11d
	subq	%rdx, %r11
	cmpq	$62, %r11
	ja	.L419
	movq	40(%rsi), %r15
	movl	$128, %ecx
	subl	%eax, %ecx
	shrq	%cl, %r15
	addq	%r15, %rbp
.L419:
	orq	%rbp, %rdi
	xorl	%ebp, %ebp
	movq	%rdi, -40(%rsp)
	cmpq	$63, %rax
	ja	.L420
	movq	16(%rsi), %rbp
	movl	%eax, %ecx
	salq	%cl, %rbp
.L420:
	cmpq	$62, %r10
	ja	.L421
	movq	16(%rsi), %rdi
	movl	%eax, %ecx
	negl	%ecx
	shrq	%cl, %rdi
	addq	%rdi, %rbp
.L421:
	xorl	%edi, %edi
	cmpq	$63, %r9
	ja	.L422
	movq	24(%rsi), %rdi
	leal	-64(%rax), %ecx
	salq	%cl, %rdi
.L422:
	cmpq	$62, %r8
	ja	.L423
	movq	24(%rsi), %r15
	movl	$64, %ecx
	subl	%eax, %ecx
	shrq	%cl, %r15
	addq	%r15, %rdi
.L423:
	orq	%rbp, %rdi
	xorl	%ebp, %ebp
	cmpq	$63, %rbx
	ja	.L424
	movq	32(%rsi), %rbp
	leal	-128(%rax), %ecx
	salq	%cl, %rbp
.L424:
	cmpq	$62, %r11
	ja	.L425
	movq	32(%rsi), %r15
	movl	$128, %ecx
	subl	%eax, %ecx
	shrq	%cl, %r15
	addq	%r15, %rbp
.L425:
	movl	$192, %r12d
	orq	%rbp, %rdi
	xorl	%r13d, %r13d
	subq	%rdx, %r12
	cmpq	$63, %r12
	ja	.L426
	movq	40(%rsi), %r13
	leal	-192(%rax), %ecx
	salq	%cl, %r13
.L426:
	movl	$255, %ebp
	subq	%rdx, %rbp
	cmpq	$62, %rbp
	ja	.L427
	movq	40(%rsi), %r15
	movl	$192, %ecx
	subl	%eax, %ecx
	shrq	%cl, %r15
	addq	%r15, %r13
.L427:
	orq	%r13, %rdi
	xorl	%r13d, %r13d
	movq	%rdi, -48(%rsp)
	cmpq	$63, %rax
	ja	.L428
	movq	8(%rsi), %r13
	movl	%eax, %ecx
	salq	%cl, %r13
.L428:
	cmpq	$62, %r10
	ja	.L429
	movq	8(%rsi), %rdi
	movl	%eax, %ecx
	negl	%ecx
	shrq	%cl, %rdi
	addq	%rdi, %r13
.L429:
	xorl	%edi, %edi
	cmpq	$63, %r9
	ja	.L430
	movq	16(%rsi), %rdi
	leal	-64(%rax), %ecx
	salq	%cl, %rdi
.L430:
	cmpq	$62, %r8
	ja	.L431
	movq	16(%rsi), %r15
	movl	$64, %ecx
	subl	%eax, %ecx
	shrq	%cl, %r15
	addq	%r15, %rdi
.L431:
	orq	%rdi, %r13
	xorl	%edi, %edi
	cmpq	$63, %rbx
	ja	.L432
	movq	24(%rsi), %rdi
	leal	-128(%rax), %ecx
	salq	%cl, %rdi
.L432:
	cmpq	$62, %r11
	ja	.L433
	movq	24(%rsi), %r15
	movl	$128, %ecx
	subl	%eax, %ecx
	shrq	%cl, %r15
	addq	%r15, %rdi
.L433:
	orq	%r13, %rdi
	xorl	%r13d, %r13d
	cmpq	$63, %r12
	ja	.L434
	movq	32(%rsi), %r13
	leal	-192(%rax), %ecx
	salq	%cl, %r13
.L434:
	cmpq	$62, %rbp
	ja	.L435
	movq	32(%rsi), %r15
	movl	$192, %ecx
	subl	%eax, %ecx
	shrq	%cl, %r15
	addq	%r15, %r13
.L435:
	movl	$128, %ecx
	orq	%r13, %rdi
	xorl	%r15d, %r15d
	subq	%rdx, %rcx
	movq	%rdi, -56(%rsp)
	movq	%rcx, -16(%rsp)
	cmpq	$63, %rcx
	ja	.L436
	movq	40(%rsi), %r15
	movl	%eax, %ecx
	salq	%cl, %r15
.L436:
	movl	$191, %r13d
	subq	%rdx, %r13
	cmpq	$62, %r13
	ja	.L437
	movq	40(%rsi), %rdi
	movl	%eax, %ecx
	negl	%ecx
	shrq	%cl, %rdi
	addq	%rdi, %r15
.L437:
	movq	-56(%rsp), %rdi
	orq	%r15, %rdi
	movq	%rdi, -56(%rsp)
	xorl	%edi, %edi
	cmpq	$63, %rax
	ja	.L438
	movq	(%rsi), %rdi
	movl	%eax, %ecx
	salq	%cl, %rdi
.L438:
	cmpq	$62, %r10
	ja	.L439
	movq	(%rsi), %r10
	movl	%eax, %ecx
	negl	%ecx
	shrq	%cl, %r10
	addq	%r10, %rdi
.L439:
	xorl	%r10d, %r10d
	cmpq	$63, %r9
	ja	.L440
	movq	8(%rsi), %r10
	leal	-64(%rax), %ecx
	salq	%cl, %r10
.L440:
	cmpq	$62, %r8
	ja	.L441
	movq	8(%rsi), %r9
	movl	$64, %ecx
	subl	%eax, %ecx
	shrq	%cl, %r9
	addq	%r9, %r10
.L441:
	orq	-8(%rsp), %rdi
	xorl	%r8d, %r8d
	cmpq	$63, %rbx
	ja	.L442
	movq	16(%rsi), %r8
	leal	-128(%rax), %ecx
	salq	%cl, %r8
.L442:
	cmpq	$62, %r11
	ja	.L443
	movq	16(%rsi), %rbx
	movl	$128, %ecx
	subl	%eax, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %r8
.L443:
	orq	%r10, %rdi
	xorl	%r11d, %r11d
	cmpq	$63, %r12
	ja	.L444
	movq	24(%rsi), %r11
	leal	-192(%rax), %ecx
	salq	%cl, %r11
.L444:
	cmpq	$62, %rbp
	ja	.L445
	movq	24(%rsi), %rbx
	movl	$192, %ecx
	subl	%eax, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %r11
.L445:
	orq	%r8, %rdi
	xorl	%ebx, %ebx
	cmpq	$63, -16(%rsp)
	ja	.L446
	movq	32(%rsi), %rbx
	movl	%eax, %ecx
	salq	%cl, %rbx
.L446:
	cmpq	$62, %r13
	ja	.L447
	movq	32(%rsi), %r9
	movl	%eax, %ecx
	negl	%ecx
	shrq	%cl, %r9
	addq	%r9, %rbx
.L447:
	movl	$64, %ecx
	orq	%r11, %rdi
	xorl	%ebp, %ebp
	subq	%rdx, %rcx
	cmpq	$63, %rcx
	ja	.L448
	movq	40(%rsi), %rbp
	leal	-320(%rax), %ecx
	salq	%cl, %rbp
.L448:
	movl	$127, %ecx
	subq	%rdx, %rcx
	cmpq	$62, %rcx
	ja	.L449
	movl	$320, %ecx
	subl	%eax, %ecx
	movq	40(%rsi), %rax
	shrq	%cl, %rax
	addq	%rax, %rbp
.L449:
	orq	%rbx, %rdi
	orq	%rbp, %rdi
	movq	%rdi, %r9
.L365:
	movq	-80(%rsp), %rax
	orq	-40(%rsp), %rax
	movq	%r9, (%r14)
	movq	-96(%rsp), %rdi
	orq	-56(%rsp), %rdi
	movq	%rax, 24(%r14)
	movq	-72(%rsp), %rax
	orq	-32(%rsp), %rax
	movq	%rdi, 8(%r14)
	movq	%rax, 32(%r14)
	movq	-24(%rsp), %rdi
	movq	-64(%rsp), %rax
	orq	-48(%rsp), %rdi
	orq	-88(%rsp), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%rdi, 16(%r14)
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	movq	%rax, 40(%r14)
	movq	%r14, %rax
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L466:
	.cfi_restore_state
	movq	$0, -88(%rsp)
	xorl	%eax, %eax
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L346:
	cmpq	$62, -64(%rsp)
	jbe	.L558
	cmpq	$63, %r12
	ja	.L350
	movq	(%rsi), %r11
	movl	%edi, %ecx
	shrq	%cl, %r11
	movq	%r11, %rcx
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L335:
	cmpq	$62, %r13
	jbe	.L559
	cmpq	$63, %rbx
	ja	.L339
	movq	(%rsi), %r11
	leal	-192(%rdi), %ecx
	shrq	%cl, %r11
	movq	%r11, %rcx
	jmp	.L340
	.p2align 4,,10
	.p2align 3
.L359:
	cmpq	$62, -16(%rsp)
	jbe	.L560
	cmpq	$-64, %rdx
	jb	.L363
	movq	(%rsi), %r11
	leal	-320(%rdi), %ecx
	shrq	%cl, %r11
	jmp	.L364
	.p2align 4,,10
	.p2align 3
.L410:
	movq	$0, -88(%rsp)
	xorl	%r11d, %r11d
	jmp	.L450
	.p2align 4,,10
	.p2align 3
.L549:
	leal	-64(%rdx), %ecx
	movq	16(%rsi), %r11
	leaq	-128(%rdx), %r10
	shrq	%cl, %r9
	movl	%edx, %ecx
	orq	%r9, %rbx
	shrq	%cl, %r11
	movl	%edx, %r9d
	movq	%rbx, -96(%rsp)
.L451:
	leal	-64(%r9), %ecx
	movq	%rax, %rbx
	shrq	%cl, %rbx
	cmpq	$62, %r8
	jbe	.L372
	orq	%rbx, %r11
	leaq	-65(%rdx), %r9
	jmp	.L374
	.p2align 4,,10
	.p2align 3
.L553:
	movq	$0, -8(%rsp)
	movq	$0, -96(%rsp)
	jmp	.L367
	.p2align 4,,10
	.p2align 3
.L465:
	movq	(%rsi), %rax
	leal	-64(%rdi), %ebx
	leaq	256(%rdx), %r15
	xorl	%r11d, %r11d
	movl	%ebx, %ecx
	leaq	319(%rdx), %r13
	shrq	%cl, %rax
	movq	%rax, -96(%rsp)
	movq	8(%rsi), %rax
	jmp	.L460
.L557:
	movq	8(%rsi), %rax
	movl	%edx, %edi
	xorl	%r8d, %r8d
	jmp	.L404
.L411:
	movl	$447, %r10d
	subq	%rdx, %r10
	cmpq	$62, %r10
	ja	.L410
	movq	40(%rsi), %rbx
	movl	%eax, %ecx
	movq	32(%rsi), %r11
	xorl	%edi, %edi
	negl	%ecx
	shrq	%cl, %rbx
	movq	%rbx, -88(%rsp)
	jmp	.L452
.L546:
	orq	%rbp, %rax
	jmp	.L339
.L489:
	xorl	%ecx, %ecx
	jmp	.L340
.L486:
	xorl	%eax, %eax
	jmp	.L331
.L560:
	movq	8(%rsi), %r10
	movl	%edi, %r8d
	xorl	%r11d, %r11d
	jmp	.L360
.L558:
	movl	%edi, -72(%rsp)
	movq	8(%rsi), %r11
	xorl	%ebp, %ebp
	jmp	.L347
.L559:
	movq	8(%rsi), %r11
	movl	%edi, %r12d
	xorl	%ebp, %ebp
	jmp	.L336
.L555:
	movl	%edx, -88(%rsp)
	movq	8(%rsi), %r11
	xorl	%r15d, %r15d
	jmp	.L391
.L507:
	xorl	%eax, %eax
	jmp	.L396
.L556:
	movq	8(%rsi), %r11
	movl	%edx, %r13d
	xorl	%r12d, %r12d
	jmp	.L380
.L503:
	xorl	%r11d, %r11d
	jmp	.L385
.L547:
	orq	%rbp, %rax
	jmp	.L350
.L493:
	xorl	%ecx, %ecx
	jmp	.L351
.L548:
	orq	%r11, %rax
	jmp	.L363
.L498:
	xorl	%r11d, %r11d
	jmp	.L364
.L499:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L375:
	orq	%r11, %rax
	movq	%rax, -24(%rsp)
	cmpq	$63, %rdx
	jg	.L500
	movq	24(%rsi), %r11
	movl	%edx, %ecx
	shrq	%cl, %r11
	jmp	.L376
.L550:
	orq	%r12, %rax
	jmp	.L383
.L502:
	xorl	%ecx, %ecx
	jmp	.L384
.L500:
	xorl	%r11d, %r11d
	jmp	.L376
.L551:
	orq	%r15, %rax
	jmp	.L394
.L370:
	leaq	-128(%rdx), %r10
	cmpq	$63, %rdx
	jle	.L454
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L455:
	leaq	-65(%rdx), %r9
	cmpq	$63, %r10
	ja	.L374
	movq	(%rsi), %rax
	leal	-128(%rdx), %ecx
	shrq	%cl, %rax
	jmp	.L375
.L454:
	movq	16(%rsi), %r11
	movl	%edx, %ecx
	shrq	%cl, %r11
	jmp	.L455
.L511:
	xorl	%eax, %eax
	jmp	.L408
.L506:
	xorl	%ecx, %ecx
	jmp	.L395
.L552:
	orq	%r8, %r11
	jmp	.L407
.L325:
	cmpq	$63, %rdi
	jle	.L326
	leaq	256(%rdx), %r15
	leaq	319(%rdx), %r13
	xorl	%r11d, %r11d
	cmpq	$63, %r15
	ja	.L330
	movq	(%rsi), %rax
	leal	-128(%rdi), %ecx
	xorl	%r11d, %r11d
	shrq	%cl, %rax
	movq	%rax, -24(%rsp)
	xorl	%eax, %eax
	jmp	.L333
.L554:
	leaq	256(%rdx), %r15
	leaq	319(%rdx), %r13
	xorl	%r11d, %r11d
.L456:
	movq	8(%rsi), %rax
	movl	%edi, %ebp
	xorl	%ebx, %ebx
	jmp	.L328
	.cfi_endproc
.LFE31:
	.size	biguint_rrot, .-biguint_rrot
	.p2align 4
	.globl	biguint_lrot
	.type	biguint_lrot, @function
biguint_lrot:
.LFB32:
	.cfi_startproc
	movq	%rsi, %rcx
	movq	%rdx, %rsi
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movabsq	$3074457345618258603, %rdx
	movq	%rcx, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	imulq	%rdx
	movq	%rcx, %rax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	sarq	$63, %rax
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	sarq	$6, %rdx
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	movq	%rcx, %rdx
	salq	$7, %rax
	subq	%rax, %rdx
	testq	%rcx, %rcx
	js	.L562
	testq	%rdx, %rdx
	jns	.L563
	movq	%rdx, %rdi
	negq	%rdi
	cmpq	$-63, %rdx
	jl	.L744
	movq	(%rsi), %rax
	movl	%edi, %ecx
	shrq	%cl, %rax
	movq	%rax, -88(%rsp)
	movq	8(%rsi), %rax
	shrq	%cl, %rax
.L564:
	movq	$-64, %r8
	xorl	%r11d, %r11d
	subq	%rdx, %r8
	cmpq	$63, %r8
	ja	.L565
	movq	(%rsi), %r11
	leal	-64(%rdi), %ecx
	shrq	%cl, %r11
.L565:
	movq	%rdx, %r12
	notq	%r12
	cmpq	$62, %r12
	ja	.L566
	movq	(%rsi), %rbx
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %r11
.L566:
	orq	%r11, %rax
	xorl	%ebp, %ebp
	movq	%rax, -80(%rsp)
	cmpq	$-63, %rdx
	jl	.L567
	movq	16(%rsi), %rbp
	movl	%edi, %ecx
	shrq	%cl, %rbp
.L567:
	xorl	%eax, %eax
	cmpq	$63, %r8
	ja	.L568
	movq	8(%rsi), %rax
	leal	-64(%rdi), %ecx
	shrq	%cl, %rax
.L568:
	cmpq	$62, %r12
	ja	.L569
	movq	8(%rsi), %rbx
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %rax
.L569:
	movq	$-128, %r11
	orq	%rbp, %rax
	xorl	%ebp, %ebp
	subq	%rdx, %r11
	cmpq	$63, %r11
	ja	.L570
	movq	(%rsi), %rbp
	leal	-128(%rdi), %ecx
	shrq	%cl, %rbp
.L570:
	movq	$-65, %r10
	subq	%rdx, %r10
	cmpq	$62, %r10
	ja	.L571
	movq	(%rsi), %rbx
	movl	$128, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %rbp
.L571:
	orq	%rbp, %rax
	xorl	%r13d, %r13d
	movq	%rax, -72(%rsp)
	cmpq	$-63, %rdx
	jl	.L572
	movq	24(%rsi), %r13
	movl	%edi, %ecx
	shrq	%cl, %r13
.L572:
	xorl	%eax, %eax
	cmpq	$63, %r8
	ja	.L573
	movq	16(%rsi), %rax
	leal	-64(%rdi), %ecx
	shrq	%cl, %rax
.L573:
	cmpq	$62, %r12
	ja	.L574
	movq	16(%rsi), %rbx
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %rax
.L574:
	orq	%rax, %r13
	xorl	%eax, %eax
	cmpq	$63, %r11
	ja	.L575
	movq	8(%rsi), %rax
	leal	-128(%rdi), %ecx
	shrq	%cl, %rax
.L575:
	cmpq	$62, %r10
	ja	.L576
	movq	8(%rsi), %rbx
	movl	$128, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %rax
.L576:
	movq	$-192, %rbp
	orq	%rax, %r13
	xorl	%eax, %eax
	subq	%rdx, %rbp
	cmpq	$63, %rbp
	ja	.L577
	movq	(%rsi), %rax
	leal	-192(%rdi), %ecx
	shrq	%cl, %rax
.L577:
	movq	$-129, %rbx
	subq	%rdx, %rbx
	cmpq	$62, %rbx
	ja	.L578
	movq	(%rsi), %r9
	movl	$192, %ecx
	subl	%edi, %ecx
	salq	%cl, %r9
	addq	%r9, %rax
.L578:
	orq	%rax, %r13
	xorl	%eax, %eax
	movq	%r13, -64(%rsp)
	cmpq	$-63, %rdx
	jl	.L579
	movq	32(%rsi), %rax
	movl	%edi, %ecx
	shrq	%cl, %rax
.L579:
	xorl	%r15d, %r15d
	cmpq	$63, %r8
	ja	.L580
	movq	24(%rsi), %r15
	leal	-64(%rdi), %ecx
	shrq	%cl, %r15
.L580:
	cmpq	$62, %r12
	ja	.L581
	movq	24(%rsi), %r9
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %r9
	addq	%r9, %r15
.L581:
	orq	%r15, %rax
	xorl	%r15d, %r15d
	cmpq	$63, %r11
	ja	.L582
	movq	16(%rsi), %r15
	leal	-128(%rdi), %ecx
	shrq	%cl, %r15
.L582:
	cmpq	$62, %r10
	ja	.L583
	movq	16(%rsi), %r9
	movl	$128, %ecx
	subl	%edi, %ecx
	salq	%cl, %r9
	addq	%r9, %r15
.L583:
	orq	%rax, %r15
	xorl	%eax, %eax
	cmpq	$63, %rbp
	ja	.L584
	movq	8(%rsi), %rax
	leal	-192(%rdi), %ecx
	shrq	%cl, %rax
.L584:
	cmpq	$62, %rbx
	ja	.L585
	movq	8(%rsi), %r9
	movl	$192, %ecx
	subl	%edi, %ecx
	salq	%cl, %r9
	addq	%r9, %rax
.L585:
	orq	%rax, %r15
	movq	$-256, %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	movq	%rax, -96(%rsp)
	xorl	%eax, %eax
	cmpq	$63, %rcx
	ja	.L586
	movq	(%rsi), %rax
	movl	%edi, %ecx
	shrq	%cl, %rax
.L586:
	movq	$-193, %r13
	subq	%rdx, %r13
	cmpq	$62, %r13
	ja	.L587
	movq	(%rsi), %r9
	movl	%edi, %ecx
	negl	%ecx
	salq	%cl, %r9
	addq	%r9, %rax
.L587:
	orq	%rax, %r15
	xorl	%r9d, %r9d
	movq	%r15, -56(%rsp)
	cmpq	$-63, %rdx
	jl	.L588
	movq	40(%rsi), %r9
	movl	%edi, %ecx
	shrq	%cl, %r9
.L588:
	xorl	%r15d, %r15d
	cmpq	$63, %r8
	ja	.L589
	movq	32(%rsi), %rax
	leal	-64(%rdi), %ecx
	shrq	%cl, %rax
	movq	%rax, %r15
.L589:
	cmpq	$62, %r12
	ja	.L590
	movq	32(%rsi), %rax
	movl	$64, %ecx
	subl	%edi, %ecx
	salq	%cl, %rax
	addq	%rax, %r15
.L590:
	orq	%r15, %r9
	xorl	%r15d, %r15d
	cmpq	$63, %r11
	ja	.L591
	movq	24(%rsi), %r15
	leal	-128(%rdi), %ecx
	shrq	%cl, %r15
.L591:
	cmpq	$62, %r10
	ja	.L592
	movq	24(%rsi), %rax
	movl	$128, %ecx
	subl	%edi, %ecx
	salq	%cl, %rax
	addq	%rax, %r15
.L592:
	orq	%r15, %r9
	xorl	%eax, %eax
	cmpq	$63, %rbp
	ja	.L593
	movq	16(%rsi), %rax
	leal	-192(%rdi), %ecx
	shrq	%cl, %rax
.L593:
	cmpq	$62, %rbx
	ja	.L594
	movq	16(%rsi), %rbx
	movl	$192, %ecx
	subl	%edi, %ecx
	salq	%cl, %rbx
	addq	%rbx, %rax
.L594:
	orq	%rax, %r9
	xorl	%r8d, %r8d
	cmpq	$63, -96(%rsp)
	ja	.L595
	movq	8(%rsi), %r8
	movl	%edi, %ecx
	shrq	%cl, %r8
.L595:
	cmpq	$62, %r13
	ja	.L596
	movq	8(%rsi), %rax
	movl	%edi, %ecx
	negl	%ecx
	salq	%cl, %rax
	addq	%rax, %r8
.L596:
	movq	$-320, %rcx
	orq	%r8, %r9
	xorl	%r15d, %r15d
	subq	%rdx, %rcx
	cmpq	$63, %rcx
	ja	.L597
	movq	(%rsi), %r15
	leal	-320(%rdi), %ecx
	shrq	%cl, %r15
.L597:
	movq	$-257, %rcx
	subq	%rdx, %rcx
	cmpq	$62, %rcx
	ja	.L598
	movq	(%rsi), %rax
	movl	$320, %ecx
	subl	%edi, %ecx
	salq	%cl, %rax
	addq	%rax, %r15
.L598:
	leaq	384(%rdx), %rdi
	orq	%r15, %r9
	cmpq	$63, %rdi
	jg	.L599
	movq	32(%rsi), %rax
	movq	40(%rsi), %r11
	movl	%edi, %ecx
	leaq	320(%rdx), %r10
	leaq	383(%rdx), %r8
	movq	%rax, %r15
	movq	%r11, %rbx
	salq	%cl, %r15
	salq	%cl, %rbx
	movq	%r15, -96(%rsp)
	orq	%rbx, %r9
	cmpq	$63, %r10
	ja	.L600
	leal	-64(%rdi), %ebx
	leaq	319(%rdx), %r13
	movl	%ebx, %ecx
	salq	%cl, %r11
	movl	%edi, %ecx
	orq	%r11, %r15
	movq	24(%rsi), %r11
	movq	%r15, -96(%rsp)
	leaq	256(%rdx), %r15
	salq	%cl, %r11
.L738:
	movl	%ebx, %ecx
	movq	%rax, %r12
	movl	%edi, %ebp
	salq	%cl, %r12
	movq	%r12, %rbx
	cmpq	$62, %r8
	ja	.L823
.L606:
	movl	$64, %ecx
	subl	%ebp, %ecx
	shrq	%cl, %rax
	addq	%rax, %rbx
.L823:
	orq	%rbx, %r11
.L608:
	cmpq	$62, %r13
	ja	.L764
	movq	40(%rsi), %rax
	movl	$128, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rax
.L609:
	orq	%r11, %rax
	xorl	%r11d, %r11d
	movq	%rax, -24(%rsp)
	cmpq	$63, %rdi
	jle	.L740
.L610:
	xorl	%eax, %eax
	cmpq	$63, %r10
	ja	.L611
	movq	24(%rsi), %rax
	leal	-64(%rdi), %ecx
	salq	%cl, %rax
.L611:
	cmpq	$62, %r8
	ja	.L612
	movq	24(%rsi), %rbx
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %rax
.L612:
	leaq	255(%rdx), %rcx
	orq	%r11, %rax
	leaq	192(%rdx), %rbx
	movq	%rcx, -48(%rsp)
	cmpq	$63, %r15
	ja	.L613
	movq	32(%rsi), %r11
	leal	-128(%rdi), %ecx
	movl	%edi, %r12d
	movq	%r11, %rbp
	salq	%cl, %rbp
	cmpq	$62, %r13
	ja	.L824
.L614:
	movl	$128, %ecx
	subl	%r12d, %ecx
	shrq	%cl, %r11
	addq	%r11, %rbp
	orq	%rbp, %rax
.L617:
	cmpq	$62, -48(%rsp)
	ja	.L767
	movq	40(%rsi), %r11
	movl	$192, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r11
	movq	%r11, %rcx
.L618:
	orq	%rax, %rcx
	xorl	%r11d, %r11d
	movq	%rcx, -32(%rsp)
	cmpq	$63, %rdi
	jg	.L619
	movq	8(%rsi), %r11
	movl	%edi, %ecx
	salq	%cl, %r11
.L619:
	xorl	%eax, %eax
	cmpq	$63, %r10
	ja	.L620
	movq	16(%rsi), %rax
	leal	-64(%rdi), %ecx
	salq	%cl, %rax
.L620:
	cmpq	$62, %r8
	ja	.L621
	movq	16(%rsi), %rbp
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbp
	addq	%rbp, %rax
.L621:
	orq	%r11, %rax
	xorl	%r11d, %r11d
	cmpq	$63, %r15
	ja	.L622
	movq	24(%rsi), %r11
	leal	-128(%rdi), %ecx
	salq	%cl, %r11
.L622:
	cmpq	$62, %r13
	ja	.L623
	movq	24(%rsi), %rbp
	movl	$128, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbp
	addq	%rbp, %r11
.L623:
	leaq	191(%rdx), %rcx
	orq	%r11, %rax
	leaq	128(%rdx), %r12
	movq	%rcx, -16(%rsp)
	cmpq	$63, %rbx
	ja	.L624
	movq	32(%rsi), %r11
	leal	-192(%rdi), %ecx
	movl	%edi, -40(%rsp)
	movq	%r11, %rbp
	salq	%cl, %rbp
	cmpq	$62, -48(%rsp)
	ja	.L825
.L625:
	movl	$192, %ecx
	subl	-40(%rsp), %ecx
	shrq	%cl, %r11
	movq	%rbp, %rcx
	addq	%r11, %rcx
	orq	%rcx, %rax
.L628:
	cmpq	$62, -16(%rsp)
	ja	.L771
	movq	40(%rsi), %r11
	movl	%edi, %ecx
	negl	%ecx
	shrq	%cl, %r11
	movq	%r11, %rcx
.L629:
	orq	%rcx, %rax
	movq	%rax, -40(%rsp)
	xorl	%eax, %eax
	cmpq	$63, %rdi
	jg	.L630
	movq	(%rsi), %rax
	movl	%edi, %ecx
	salq	%cl, %rax
.L630:
	xorl	%r11d, %r11d
	cmpq	$63, %r10
	ja	.L631
	movq	8(%rsi), %r11
	leal	-64(%rdi), %ecx
	salq	%cl, %r11
.L631:
	cmpq	$62, %r8
	ja	.L632
	movq	8(%rsi), %r10
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r10
	addq	%r10, %r11
.L632:
	orq	%r11, %rax
	xorl	%r11d, %r11d
	cmpq	$63, %r15
	ja	.L633
	movq	16(%rsi), %r11
	leal	-128(%rdi), %ecx
	salq	%cl, %r11
.L633:
	cmpq	$62, %r13
	ja	.L634
	movq	16(%rsi), %r10
	movl	$128, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r10
	addq	%r10, %r11
.L634:
	orq	%r11, %rax
	xorl	%r8d, %r8d
	cmpq	$63, %rbx
	ja	.L635
	movq	24(%rsi), %r8
	leal	-192(%rdi), %ecx
	salq	%cl, %r8
.L635:
	cmpq	$62, -48(%rsp)
	ja	.L636
	movq	24(%rsi), %rbx
	movl	$192, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %r8
.L636:
	orq	%r8, %rax
	cmpq	$63, %r12
	ja	.L637
	movq	32(%rsi), %r10
	movl	%edi, %ecx
	movl	%edi, %r8d
	movq	%r10, %r11
	salq	%cl, %r11
	cmpq	$62, -16(%rsp)
	ja	.L826
.L638:
	movl	%r8d, %ecx
	negl	%ecx
	shrq	%cl, %r10
	addq	%r10, %r11
	orq	%r11, %rax
.L641:
	addq	$127, %rdx
	cmpq	$62, %rdx
	ja	.L776
	movq	40(%rsi), %r11
	movl	$320, %ecx
	subl	%edi, %ecx
	shrq	%cl, %r11
.L642:
	orq	%rax, %r11
	movq	%r11, -48(%rsp)
	jmp	.L643
	.p2align 4,,10
	.p2align 3
.L562:
	addq	$384, %rdx
.L563:
	cmpq	$63, %rdx
	jg	.L644
	movq	40(%rsi), %r9
	movl	%edx, %ecx
	leaq	-64(%rdx), %rdi
	leaq	-1(%rdx), %r8
	movq	%r9, %rax
	salq	%cl, %rax
	movq	%rax, -8(%rsp)
	movq	32(%rsi), %rax
	movq	%rax, %rbx
	salq	%cl, %rbx
	movq	%rbx, -96(%rsp)
	cmpq	$63, %rdi
	jbe	.L827
.L645:
	cmpq	$62, %r8
	ja	.L648
	movq	40(%rsi), %rax
	movl	$64, %ecx
	movq	24(%rsi), %r11
	movl	%edx, %r9d
	subl	%edx, %ecx
	leaq	-128(%rdx), %r10
	xorl	%ebx, %ebx
	shrq	%cl, %rax
	movl	%edx, %ecx
	orq	%rax, -96(%rsp)
	movq	32(%rsi), %rax
	salq	%cl, %r11
.L650:
	movl	$64, %ecx
	subl	%r9d, %ecx
	leaq	-65(%rdx), %r9
	shrq	%cl, %rax
	addq	%rbx, %rax
	orq	%rax, %r11
.L652:
	cmpq	$62, %r9
	ja	.L777
	movq	40(%rsi), %rax
	movl	$128, %ecx
	subl	%edx, %ecx
	shrq	%cl, %rax
	orq	%r11, %rax
	xorl	%r11d, %r11d
	movq	%rax, -24(%rsp)
.L654:
	xorl	%eax, %eax
	cmpq	$63, %rdi
	ja	.L655
	movq	24(%rsi), %rax
	leal	-64(%rdx), %ecx
	salq	%cl, %rax
.L655:
	cmpq	$62, %r8
	ja	.L656
	movq	24(%rsi), %rbx
	movl	$64, %ecx
	subl	%edx, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %rax
.L656:
	orq	%r11, %rax
	leaq	-192(%rdx), %rbp
	leaq	-129(%rdx), %rbx
	cmpq	$63, %r10
	ja	.L657
	movq	32(%rsi), %r11
	leal	-128(%rdx), %ecx
	movl	%edx, %r13d
	movq	%r11, %r12
	salq	%cl, %r12
	cmpq	$62, %r9
	ja	.L828
.L658:
	movl	$128, %ecx
	subl	%r13d, %ecx
	shrq	%cl, %r11
	addq	%r11, %r12
	orq	%r12, %rax
.L661:
	cmpq	$62, %rbx
	ja	.L780
	movq	40(%rsi), %r15
	movl	$192, %ecx
	xorl	%r11d, %r11d
	subl	%edx, %ecx
	shrq	%cl, %r15
	movq	%r15, %rcx
	orq	%rax, %rcx
	movq	%rcx, -32(%rsp)
.L663:
	xorl	%eax, %eax
	cmpq	$63, %rdi
	ja	.L664
	movq	16(%rsi), %rax
	leal	-64(%rdx), %ecx
	salq	%cl, %rax
.L664:
	cmpq	$62, %r8
	ja	.L665
	movq	16(%rsi), %r15
	movl	$64, %ecx
	subl	%edx, %ecx
	shrq	%cl, %r15
	addq	%r15, %rax
.L665:
	orq	%r11, %rax
	xorl	%r11d, %r11d
	cmpq	$63, %r10
	ja	.L666
	movq	24(%rsi), %r11
	leal	-128(%rdx), %ecx
	salq	%cl, %r11
.L666:
	cmpq	$62, %r9
	ja	.L667
	movq	24(%rsi), %r15
	movl	$128, %ecx
	subl	%edx, %ecx
	shrq	%cl, %r15
	addq	%r15, %r11
.L667:
	orq	%r11, %rax
	leaq	-256(%rdx), %r13
	leaq	-193(%rdx), %r12
	cmpq	$63, %rbp
	ja	.L668
	movq	32(%rsi), %r11
	leal	-192(%rdx), %ecx
	movl	%edx, -88(%rsp)
	movq	%r11, %r15
	salq	%cl, %r15
	cmpq	$62, %rbx
	ja	.L829
.L669:
	movl	$192, %ecx
	subl	-88(%rsp), %ecx
	shrq	%cl, %r11
	movq	%r15, %rcx
	addq	%r11, %rcx
	orq	%rcx, %rax
.L672:
	cmpq	$62, %r12
	ja	.L784
	movq	40(%rsi), %r15
	movl	%edx, %ecx
	negl	%ecx
	shrq	%cl, %r15
	movq	%r15, %rcx
	orq	%rax, %rcx
	xorl	%eax, %eax
	movq	%rcx, -40(%rsp)
.L674:
	xorl	%r11d, %r11d
	cmpq	$63, %rdi
	ja	.L675
	movq	8(%rsi), %r11
	leal	-64(%rdx), %ecx
	salq	%cl, %r11
.L675:
	cmpq	$62, %r8
	ja	.L676
	movq	8(%rsi), %rdi
	movl	$64, %ecx
	subl	%edx, %ecx
	shrq	%cl, %rdi
	addq	%rdi, %r11
.L676:
	orq	%r11, %rax
	xorl	%edi, %edi
	cmpq	$63, %r10
	ja	.L677
	movq	16(%rsi), %rdi
	leal	-128(%rdx), %ecx
	salq	%cl, %rdi
.L677:
	cmpq	$62, %r9
	ja	.L678
	movq	16(%rsi), %r10
	movl	$128, %ecx
	subl	%edx, %ecx
	shrq	%cl, %r10
	addq	%r10, %rdi
.L678:
	orq	%rdi, %rax
	xorl	%r8d, %r8d
	cmpq	$63, %rbp
	ja	.L679
	movq	24(%rsi), %r8
	leal	-192(%rdx), %ecx
	salq	%cl, %r8
.L679:
	cmpq	$62, %rbx
	ja	.L680
	movq	24(%rsi), %rbx
	movl	$192, %ecx
	subl	%edx, %ecx
	shrq	%cl, %rbx
	addq	%rbx, %r8
.L680:
	orq	%r8, %rax
	movq	%rax, %r11
	cmpq	$63, %r13
	ja	.L681
	movq	32(%rsi), %rax
	movl	%edx, %ecx
	movl	%edx, %edi
	movq	%rax, %r8
	salq	%cl, %r8
	cmpq	$62, %r12
	ja	.L830
.L682:
	movl	%edi, %ecx
	negl	%ecx
	shrq	%cl, %rax
	addq	%r8, %rax
	orq	%rax, %r11
.L685:
	movl	$384, %eax
	leaq	-257(%rdx), %rcx
	subq	%rdx, %rax
	cmpq	$62, %rcx
	ja	.L789
	movq	40(%rsi), %rbx
	movl	$320, %ecx
	movl	$447, %r10d
	subl	%edx, %ecx
	subq	%rdx, %r10
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	orq	%r11, %rcx
	movq	%rcx, -48(%rsp)
	cmpq	$63, %rax
	ja	.L688
	movq	$0, -88(%rsp)
.L687:
	movq	8(%rsi), %r11
	movl	%eax, %ecx
	shrq	%cl, %r11
	jmp	.L728
	.p2align 4,,10
	.p2align 3
.L644:
	leaq	-64(%rdx), %rdi
	leaq	-1(%rdx), %r8
	cmpq	$63, %rdi
	ja	.L831
	movq	40(%rsi), %rax
	leal	-64(%rdx), %ecx
	leaq	-128(%rdx), %r10
	movl	%edx, %r9d
	movq	$0, -8(%rsp)
	xorl	%r11d, %r11d
	salq	%cl, %rax
	movq	%rax, -96(%rsp)
	movq	32(%rsi), %rax
	jmp	.L729
	.p2align 4,,10
	.p2align 3
.L599:
	leaq	320(%rdx), %r10
	leaq	383(%rdx), %r8
	cmpq	$63, %r10
	jbe	.L743
	movq	$0, -96(%rsp)
.L600:
	cmpq	$62, %r8
	ja	.L603
	movq	40(%rsi), %rax
	movl	$64, %ecx
	subl	%edi, %ecx
	shrq	%cl, %rax
	orq	%rax, -96(%rsp)
	cmpq	$63, %rdi
	jg	.L832
.L604:
	movq	24(%rsi), %r11
	movl	%edi, %ecx
	leaq	256(%rdx), %r15
	leaq	319(%rdx), %r13
	salq	%cl, %r11
	cmpq	$62, %r8
	jbe	.L734
	cmpq	$63, %r15
	ja	.L608
	movq	40(%rsi), %rax
	leal	-128(%rdi), %ecx
	salq	%cl, %rax
	orq	%r11, %rax
	movq	%rax, -24(%rsp)
.L740:
	movq	16(%rsi), %r11
	movl	%edi, %ecx
	salq	%cl, %r11
	jmp	.L610
	.p2align 4,,10
	.p2align 3
.L668:
	cmpq	$62, %rbx
	jbe	.L833
	cmpq	$63, %r13
	ja	.L672
	movq	40(%rsi), %r15
	movl	%edx, %ecx
	salq	%cl, %r15
	movq	%r15, %rcx
.L673:
	orq	%rax, %rcx
	movq	%rcx, -40(%rsp)
	cmpq	$63, %rdx
	jg	.L785
	movq	(%rsi), %rax
	movl	%edx, %ecx
	salq	%cl, %rax
	jmp	.L674
	.p2align 4,,10
	.p2align 3
.L657:
	cmpq	$62, %r9
	jbe	.L834
	cmpq	$63, %rbp
	ja	.L661
	movq	40(%rsi), %r15
	leal	-192(%rdx), %ecx
	salq	%cl, %r15
	movq	%r15, %rcx
.L662:
	orq	%rax, %rcx
	movq	%rcx, -32(%rsp)
	cmpq	$63, %rdx
	jg	.L781
	movq	8(%rsi), %r11
	movl	%edx, %ecx
	salq	%cl, %r11
	jmp	.L663
	.p2align 4,,10
	.p2align 3
.L681:
	cmpq	$62, %r12
	jbe	.L835
	leaq	-320(%rdx), %rax
	cmpq	$63, %rax
	ja	.L685
	movq	40(%rsi), %rax
	leal	-320(%rdx), %ecx
	salq	%cl, %rax
.L686:
	orq	%rax, %r11
	movl	$384, %eax
	subq	%rdx, %rax
	movq	%r11, -48(%rsp)
	cmpq	$63, %rax
	ja	.L689
	movq	(%rsi), %rdi
	movl	%eax, %ecx
	movl	$447, %r10d
	subq	%rdx, %r10
	movq	%rdi, %rbx
	shrq	%cl, %rbx
	movq	%rbx, -88(%rsp)
	cmpq	$62, %r10
	ja	.L687
	movl	%eax, %r8d
	movq	8(%rsi), %r11
	negl	%r8d
	movl	%r8d, %ecx
	salq	%cl, %rdi
	movl	%eax, %ecx
	addq	%rdi, %rbx
	movq	%r11, %rdi
	movq	%rbx, -88(%rsp)
	shrq	%cl, %rdi
	movl	%r8d, %ecx
.L730:
	salq	%cl, %r11
	addq	%rdi, %r11
.L728:
	movl	$320, %r9d
	xorl	%edi, %edi
	subq	%rdx, %r9
	cmpq	$63, %r9
	ja	.L690
	movq	(%rsi), %rdi
	leal	-64(%rax), %ecx
	shrq	%cl, %rdi
.L690:
	movl	$383, %r8d
	subq	%rdx, %r8
	cmpq	$62, %r8
	ja	.L691
	movq	(%rsi), %rbx
	movl	$64, %ecx
	subl	%eax, %ecx
	salq	%cl, %rbx
	addq	%rbx, %rdi
.L691:
	orq	%rdi, %r11
	movq	%r11, -80(%rsp)
	xorl	%r11d, %r11d
	cmpq	$63, %rax
	ja	.L692
	movq	16(%rsi), %r11
	movl	%eax, %ecx
	shrq	%cl, %r11
.L692:
	cmpq	$62, %r10
	ja	.L693
	movq	16(%rsi), %rbx
	movl	%eax, %ecx
	negl	%ecx
	salq	%cl, %rbx
	addq	%rbx, %r11
.L693:
	xorl	%edi, %edi
	cmpq	$63, %r9
	ja	.L694
	movq	8(%rsi), %rdi
	leal	-64(%rax), %ecx
	shrq	%cl, %rdi
.L694:
	cmpq	$62, %r8
	ja	.L695
	movq	8(%rsi), %rbx
	movl	$64, %ecx
	subl	%eax, %ecx
	salq	%cl, %rbx
	addq	%rbx, %rdi
.L695:
	movl	$256, %ebx
	orq	%r11, %rdi
	xorl	%ebp, %ebp
	subq	%rdx, %rbx
	cmpq	$63, %rbx
	ja	.L696
	movq	(%rsi), %rbp
	leal	-128(%rax), %ecx
	shrq	%cl, %rbp
.L696:
	movl	$319, %r11d
	subq	%rdx, %r11
	cmpq	$62, %r11
	ja	.L697
	movq	(%rsi), %r15
	movl	$128, %ecx
	subl	%eax, %ecx
	salq	%cl, %r15
	addq	%r15, %rbp
.L697:
	orq	%rbp, %rdi
	xorl	%ebp, %ebp
	movq	%rdi, -72(%rsp)
	cmpq	$63, %rax
	ja	.L698
	movq	24(%rsi), %rbp
	movl	%eax, %ecx
	shrq	%cl, %rbp
.L698:
	cmpq	$62, %r10
	ja	.L699
	movq	24(%rsi), %rdi
	movl	%eax, %ecx
	negl	%ecx
	salq	%cl, %rdi
	addq	%rdi, %rbp
.L699:
	xorl	%edi, %edi
	cmpq	$63, %r9
	ja	.L700
	movq	16(%rsi), %rdi
	leal	-64(%rax), %ecx
	shrq	%cl, %rdi
.L700:
	cmpq	$62, %r8
	ja	.L701
	movq	16(%rsi), %r15
	movl	$64, %ecx
	subl	%eax, %ecx
	salq	%cl, %r15
	addq	%r15, %rdi
.L701:
	orq	%rbp, %rdi
	xorl	%ebp, %ebp
	cmpq	$63, %rbx
	ja	.L702
	movq	8(%rsi), %rbp
	leal	-128(%rax), %ecx
	shrq	%cl, %rbp
.L702:
	cmpq	$62, %r11
	ja	.L703
	movq	8(%rsi), %r15
	movl	$128, %ecx
	subl	%eax, %ecx
	salq	%cl, %r15
	addq	%r15, %rbp
.L703:
	movl	$192, %r12d
	orq	%rbp, %rdi
	xorl	%r13d, %r13d
	subq	%rdx, %r12
	cmpq	$63, %r12
	ja	.L704
	movq	(%rsi), %r13
	leal	-192(%rax), %ecx
	shrq	%cl, %r13
.L704:
	movl	$255, %ebp
	subq	%rdx, %rbp
	cmpq	$62, %rbp
	ja	.L705
	movq	(%rsi), %r15
	movl	$192, %ecx
	subl	%eax, %ecx
	salq	%cl, %r15
	addq	%r15, %r13
.L705:
	orq	%r13, %rdi
	xorl	%r13d, %r13d
	movq	%rdi, -64(%rsp)
	cmpq	$63, %rax
	ja	.L706
	movq	32(%rsi), %r13
	movl	%eax, %ecx
	shrq	%cl, %r13
.L706:
	cmpq	$62, %r10
	ja	.L707
	movq	32(%rsi), %rdi
	movl	%eax, %ecx
	negl	%ecx
	salq	%cl, %rdi
	addq	%rdi, %r13
.L707:
	xorl	%edi, %edi
	cmpq	$63, %r9
	ja	.L708
	movq	24(%rsi), %rdi
	leal	-64(%rax), %ecx
	shrq	%cl, %rdi
.L708:
	cmpq	$62, %r8
	ja	.L709
	movq	24(%rsi), %r15
	movl	$64, %ecx
	subl	%eax, %ecx
	salq	%cl, %r15
	addq	%r15, %rdi
.L709:
	orq	%rdi, %r13
	xorl	%edi, %edi
	cmpq	$63, %rbx
	ja	.L710
	movq	16(%rsi), %rdi
	leal	-128(%rax), %ecx
	shrq	%cl, %rdi
.L710:
	cmpq	$62, %r11
	ja	.L711
	movq	16(%rsi), %r15
	movl	$128, %ecx
	subl	%eax, %ecx
	salq	%cl, %r15
	addq	%r15, %rdi
.L711:
	orq	%r13, %rdi
	xorl	%r13d, %r13d
	cmpq	$63, %r12
	ja	.L712
	movq	8(%rsi), %r13
	leal	-192(%rax), %ecx
	shrq	%cl, %r13
.L712:
	cmpq	$62, %rbp
	ja	.L713
	movq	8(%rsi), %r15
	movl	$192, %ecx
	subl	%eax, %ecx
	salq	%cl, %r15
	addq	%r15, %r13
.L713:
	movl	$128, %ecx
	orq	%r13, %rdi
	xorl	%r15d, %r15d
	subq	%rdx, %rcx
	movq	%rdi, -56(%rsp)
	movq	%rcx, -16(%rsp)
	cmpq	$63, %rcx
	ja	.L714
	movq	(%rsi), %r15
	movl	%eax, %ecx
	shrq	%cl, %r15
.L714:
	movl	$191, %r13d
	subq	%rdx, %r13
	cmpq	$62, %r13
	ja	.L715
	movq	(%rsi), %rdi
	movl	%eax, %ecx
	negl	%ecx
	salq	%cl, %rdi
	addq	%rdi, %r15
.L715:
	movq	-56(%rsp), %rdi
	orq	%r15, %rdi
	movq	%rdi, -56(%rsp)
	xorl	%edi, %edi
	cmpq	$63, %rax
	ja	.L716
	movq	40(%rsi), %rdi
	movl	%eax, %ecx
	shrq	%cl, %rdi
.L716:
	cmpq	$62, %r10
	ja	.L717
	movq	40(%rsi), %r10
	movl	%eax, %ecx
	negl	%ecx
	salq	%cl, %r10
	addq	%r10, %rdi
.L717:
	xorl	%r10d, %r10d
	cmpq	$63, %r9
	ja	.L718
	movq	32(%rsi), %r10
	leal	-64(%rax), %ecx
	shrq	%cl, %r10
.L718:
	cmpq	$62, %r8
	ja	.L719
	movq	32(%rsi), %r9
	movl	$64, %ecx
	subl	%eax, %ecx
	salq	%cl, %r9
	addq	%r9, %r10
.L719:
	orq	-8(%rsp), %rdi
	xorl	%r8d, %r8d
	cmpq	$63, %rbx
	ja	.L720
	movq	24(%rsi), %r8
	leal	-128(%rax), %ecx
	shrq	%cl, %r8
.L720:
	cmpq	$62, %r11
	ja	.L721
	movq	24(%rsi), %rbx
	movl	$128, %ecx
	subl	%eax, %ecx
	salq	%cl, %rbx
	addq	%rbx, %r8
.L721:
	orq	%r10, %rdi
	xorl	%r11d, %r11d
	cmpq	$63, %r12
	ja	.L722
	movq	16(%rsi), %r11
	leal	-192(%rax), %ecx
	shrq	%cl, %r11
.L722:
	cmpq	$62, %rbp
	ja	.L723
	movq	16(%rsi), %rbx
	movl	$192, %ecx
	subl	%eax, %ecx
	salq	%cl, %rbx
	addq	%rbx, %r11
.L723:
	orq	%r8, %rdi
	xorl	%ebx, %ebx
	cmpq	$63, -16(%rsp)
	ja	.L724
	movq	8(%rsi), %rbx
	movl	%eax, %ecx
	shrq	%cl, %rbx
.L724:
	cmpq	$62, %r13
	ja	.L725
	movq	8(%rsi), %r9
	movl	%eax, %ecx
	negl	%ecx
	salq	%cl, %r9
	addq	%r9, %rbx
.L725:
	movl	$64, %ecx
	orq	%r11, %rdi
	xorl	%ebp, %ebp
	subq	%rdx, %rcx
	cmpq	$63, %rcx
	ja	.L726
	movq	(%rsi), %rbp
	leal	-320(%rax), %ecx
	shrq	%cl, %rbp
.L726:
	movl	$127, %ecx
	subq	%rdx, %rcx
	cmpq	$62, %rcx
	ja	.L727
	movl	$320, %ecx
	subl	%eax, %ecx
	movq	(%rsi), %rax
	salq	%cl, %rax
	addq	%rax, %rbp
.L727:
	orq	%rbx, %rdi
	orq	%rbp, %rdi
	movq	%rdi, %r9
.L643:
	movq	-88(%rsp), %rax
	orq	-48(%rsp), %rax
	movq	%r9, 40(%r14)
	movq	-64(%rsp), %rdi
	orq	-24(%rsp), %rdi
	movq	%rax, (%r14)
	movq	-80(%rsp), %rax
	orq	-40(%rsp), %rax
	movq	%rdi, 24(%r14)
	movq	%rax, 8(%r14)
	movq	-56(%rsp), %rdi
	movq	-72(%rsp), %rax
	orq	-96(%rsp), %rdi
	orq	-32(%rsp), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%r14)
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	movq	%rax, 16(%r14)
	movq	%r14, %rax
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L744:
	.cfi_restore_state
	movq	$0, -88(%rsp)
	xorl	%eax, %eax
	jmp	.L564
	.p2align 4,,10
	.p2align 3
.L624:
	cmpq	$62, -48(%rsp)
	jbe	.L836
	cmpq	$63, %r12
	ja	.L628
	movq	40(%rsi), %r11
	movl	%edi, %ecx
	salq	%cl, %r11
	movq	%r11, %rcx
	jmp	.L629
	.p2align 4,,10
	.p2align 3
.L613:
	cmpq	$62, %r13
	jbe	.L837
	cmpq	$63, %rbx
	ja	.L617
	movq	40(%rsi), %r11
	leal	-192(%rdi), %ecx
	salq	%cl, %r11
	movq	%r11, %rcx
	jmp	.L618
	.p2align 4,,10
	.p2align 3
.L637:
	cmpq	$62, -16(%rsp)
	jbe	.L838
	cmpq	$-64, %rdx
	jb	.L641
	movq	40(%rsi), %r11
	leal	-320(%rdi), %ecx
	salq	%cl, %r11
	jmp	.L642
	.p2align 4,,10
	.p2align 3
.L688:
	movq	$0, -88(%rsp)
	xorl	%r11d, %r11d
	jmp	.L728
	.p2align 4,,10
	.p2align 3
.L827:
	leal	-64(%rdx), %ecx
	movq	24(%rsi), %r11
	leaq	-128(%rdx), %r10
	salq	%cl, %r9
	movl	%edx, %ecx
	orq	%r9, %rbx
	salq	%cl, %r11
	movl	%edx, %r9d
	movq	%rbx, -96(%rsp)
.L729:
	leal	-64(%r9), %ecx
	movq	%rax, %rbx
	salq	%cl, %rbx
	cmpq	$62, %r8
	jbe	.L650
	orq	%rbx, %r11
	leaq	-65(%rdx), %r9
	jmp	.L652
	.p2align 4,,10
	.p2align 3
.L831:
	movq	$0, -8(%rsp)
	movq	$0, -96(%rsp)
	jmp	.L645
	.p2align 4,,10
	.p2align 3
.L743:
	movq	40(%rsi), %rax
	leal	-64(%rdi), %ebx
	xorl	%r11d, %r11d
	leaq	256(%rdx), %r15
	movl	%ebx, %ecx
	leaq	319(%rdx), %r13
	salq	%cl, %rax
	movq	%rax, -96(%rsp)
	movq	32(%rsi), %rax
	jmp	.L738
.L835:
	movq	32(%rsi), %rax
	movl	%edx, %edi
	xorl	%r8d, %r8d
	jmp	.L682
.L689:
	movl	$447, %r10d
	subq	%rdx, %r10
	cmpq	$62, %r10
	ja	.L688
	movq	(%rsi), %rbx
	movl	%eax, %ecx
	movq	8(%rsi), %r11
	xorl	%edi, %edi
	negl	%ecx
	salq	%cl, %rbx
	movq	%rbx, -88(%rsp)
	jmp	.L730
.L824:
	orq	%rbp, %rax
	jmp	.L617
.L767:
	xorl	%ecx, %ecx
	jmp	.L618
.L764:
	xorl	%eax, %eax
	jmp	.L609
.L838:
	movq	32(%rsi), %r10
	movl	%edi, %r8d
	xorl	%r11d, %r11d
	jmp	.L638
.L836:
	movl	%edi, -40(%rsp)
	movq	32(%rsi), %r11
	xorl	%ebp, %ebp
	jmp	.L625
.L837:
	movq	32(%rsi), %r11
	movl	%edi, %r12d
	xorl	%ebp, %ebp
	jmp	.L614
.L833:
	movl	%edx, -88(%rsp)
	movq	32(%rsi), %r11
	xorl	%r15d, %r15d
	jmp	.L669
.L785:
	xorl	%eax, %eax
	jmp	.L674
.L834:
	movq	32(%rsi), %r11
	movl	%edx, %r13d
	xorl	%r12d, %r12d
	jmp	.L658
.L781:
	xorl	%r11d, %r11d
	jmp	.L663
.L825:
	orq	%rbp, %rax
	jmp	.L628
.L771:
	xorl	%ecx, %ecx
	jmp	.L629
.L826:
	orq	%r11, %rax
	jmp	.L641
.L776:
	xorl	%r11d, %r11d
	jmp	.L642
.L777:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L653:
	orq	%r11, %rax
	movq	%rax, -24(%rsp)
	cmpq	$63, %rdx
	jg	.L778
	movq	16(%rsi), %r11
	movl	%edx, %ecx
	salq	%cl, %r11
	jmp	.L654
.L828:
	orq	%r12, %rax
	jmp	.L661
.L780:
	xorl	%ecx, %ecx
	jmp	.L662
.L778:
	xorl	%r11d, %r11d
	jmp	.L654
.L829:
	orq	%r15, %rax
	jmp	.L672
.L648:
	leaq	-128(%rdx), %r10
	cmpq	$63, %rdx
	jle	.L732
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L733:
	leaq	-65(%rdx), %r9
	cmpq	$63, %r10
	ja	.L652
	movq	40(%rsi), %rax
	leal	-128(%rdx), %ecx
	salq	%cl, %rax
	jmp	.L653
.L732:
	movq	24(%rsi), %r11
	movl	%edx, %ecx
	salq	%cl, %r11
	jmp	.L733
.L789:
	xorl	%eax, %eax
	jmp	.L686
.L784:
	xorl	%ecx, %ecx
	jmp	.L673
.L830:
	orq	%r8, %r11
	jmp	.L685
.L603:
	cmpq	$63, %rdi
	jle	.L604
	leaq	256(%rdx), %r15
	leaq	319(%rdx), %r13
	xorl	%r11d, %r11d
	cmpq	$63, %r15
	ja	.L608
	movq	40(%rsi), %rax
	leal	-128(%rdi), %ecx
	xorl	%r11d, %r11d
	salq	%cl, %rax
	movq	%rax, -24(%rsp)
	xorl	%eax, %eax
	jmp	.L611
.L832:
	leaq	256(%rdx), %r15
	leaq	319(%rdx), %r13
	xorl	%r11d, %r11d
.L734:
	movq	32(%rsi), %rax
	movl	%edi, %ebp
	xorl	%ebx, %ebx
	jmp	.L606
	.cfi_endproc
.LFE32:
	.size	biguint_lrot, .-biguint_lrot
	.p2align 4
	.globl	biguint_rev
	.type	biguint_rev, @function
biguint_rev:
.LFB33:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rdx
	movq	%rdi, %r8
	movq	40(%rsi), %rcx
	movabsq	$1085102592571150095, %rax
	movabsq	$-1085102592571150096, %rbx
	movabsq	$3689348814741910323, %r11
	movabsq	$-3689348814741910324, %r9
	movabsq	$6148914691236517205, %rdi
	bswap	%rcx
	movq	%rcx, %rsi
	salq	$4, %rcx
	shrq	$4, %rsi
	andq	%rbx, %rcx
	andq	%rax, %rsi
	orq	%rcx, %rsi
	movq	%rsi, %rcx
	salq	$2, %rsi
	shrq	$2, %rcx
	andq	%r9, %rsi
	andq	%r11, %rcx
	orq	%rsi, %rcx
	movabsq	$-6148914691236517206, %rsi
	movq	%rcx, %r10
	addq	%rcx, %rcx
	shrq	%r10
	andq	%rsi, %rcx
	andq	%rdi, %r10
	orq	%r10, %rcx
	movq	%rcx, (%r8)
	movq	32(%rdx), %rcx
	bswap	%rcx
	movq	%rcx, %r10
	salq	$4, %rcx
	shrq	$4, %r10
	andq	%rbx, %rcx
	andq	%rax, %r10
	orq	%rcx, %r10
	movq	%r10, %rcx
	salq	$2, %r10
	shrq	$2, %rcx
	andq	%r9, %r10
	andq	%r11, %rcx
	orq	%r10, %rcx
	movq	%rcx, %r10
	addq	%rcx, %rcx
	shrq	%r10
	andq	%rsi, %rcx
	andq	%rdi, %r10
	orq	%r10, %rcx
	movq	%rcx, 8(%r8)
	movq	24(%rdx), %rcx
	bswap	%rcx
	movq	%rcx, %r10
	shrq	$4, %r10
	andq	%rax, %r10
	salq	$4, %rcx
	andq	%rbx, %rcx
	orq	%rcx, %r10
	movq	%r10, %rcx
	salq	$2, %r10
	shrq	$2, %rcx
	andq	%r9, %r10
	andq	%r11, %rcx
	orq	%r10, %rcx
	movq	%rcx, %r10
	addq	%rcx, %rcx
	shrq	%r10
	andq	%rsi, %rcx
	andq	%rdi, %r10
	orq	%r10, %rcx
	movq	%rcx, 16(%r8)
	movq	16(%rdx), %rcx
	bswap	%rcx
	movq	%rcx, %r10
	salq	$4, %rcx
	shrq	$4, %r10
	andq	%rbx, %rcx
	andq	%rax, %r10
	orq	%rcx, %r10
	movq	%r10, %rcx
	salq	$2, %r10
	shrq	$2, %rcx
	andq	%r9, %r10
	andq	%r11, %rcx
	orq	%r10, %rcx
	movq	%rcx, %r10
	addq	%rcx, %rcx
	shrq	%r10
	andq	%rsi, %rcx
	andq	%rdi, %r10
	orq	%r10, %rcx
	movq	%rcx, 24(%r8)
	movq	8(%rdx), %rcx
	bswap	%rcx
	movq	%rcx, %r10
	salq	$4, %rcx
	shrq	$4, %r10
	andq	%rbx, %rcx
	andq	%rax, %r10
	orq	%rcx, %r10
	movq	%r10, %rcx
	salq	$2, %r10
	shrq	$2, %rcx
	andq	%r9, %r10
	andq	%r11, %rcx
	orq	%r10, %rcx
	movq	%rcx, %r10
	addq	%rcx, %rcx
	shrq	%r10
	andq	%rsi, %rcx
	andq	%rdi, %r10
	orq	%r10, %rcx
	movq	%rcx, 32(%r8)
	movq	(%rdx), %rcx
	bswap	%rcx
	movq	%rcx, %rdx
	salq	$4, %rcx
	shrq	$4, %rdx
	andq	%rcx, %rbx
	andq	%rax, %rdx
	orq	%rbx, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 8
	movq	%rdx, %rax
	salq	$2, %rdx
	shrq	$2, %rax
	andq	%r9, %rdx
	andq	%r11, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	addq	%rax, %rax
	shrq	%rdx
	andq	%rsi, %rax
	andq	%rdx, %rdi
	orq	%rdi, %rax
	movq	%rax, 40(%r8)
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE33:
	.size	biguint_rev, .-biguint_rev
	.p2align 4
	.globl	biguint_eq
	.type	biguint_eq, @function
biguint_eq:
.LFB34:
	.cfi_startproc
	movq	(%rsi), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, (%rdi)
	je	.L848
.L841:
	ret
	.p2align 4,,10
	.p2align 3
.L848:
	movq	8(%rsi), %rcx
	cmpq	%rcx, 8(%rdi)
	jne	.L841
	movq	16(%rsi), %rcx
	cmpq	%rcx, 16(%rdi)
	jne	.L841
	movq	24(%rsi), %rcx
	cmpq	%rcx, 24(%rdi)
	jne	.L841
	movq	32(%rsi), %rcx
	cmpq	%rcx, 32(%rdi)
	jne	.L841
	movq	40(%rsi), %rax
	cmpq	%rax, 40(%rdi)
	sete	%al
	ret
	.cfi_endproc
.LFE34:
	.size	biguint_eq, .-biguint_eq
	.p2align 4
	.globl	biguint_neq
	.type	biguint_neq, @function
biguint_neq:
.LFB35:
	.cfi_startproc
	movq	(%rsi), %rdx
	movl	$1, %eax
	cmpq	%rdx, (%rdi)
	je	.L856
.L849:
	ret
	.p2align 4,,10
	.p2align 3
.L856:
	movq	8(%rsi), %rcx
	cmpq	%rcx, 8(%rdi)
	jne	.L849
	movq	16(%rsi), %rcx
	cmpq	%rcx, 16(%rdi)
	jne	.L849
	movq	24(%rsi), %rcx
	cmpq	%rcx, 24(%rdi)
	jne	.L849
	movq	32(%rsi), %rcx
	cmpq	%rcx, 32(%rdi)
	jne	.L849
	movq	40(%rsi), %rax
	cmpq	%rax, 40(%rdi)
	setne	%al
	ret
	.cfi_endproc
.LFE35:
	.size	biguint_neq, .-biguint_neq
	.p2align 4
	.globl	biguint_gt
	.type	biguint_gt, @function
biguint_gt:
.LFB36:
	.cfi_startproc
	movq	(%rsi), %rdx
	movl	$1, %eax
	cmpq	%rdx, (%rdi)
	ja	.L857
	movl	$0, %eax
	je	.L869
.L857:
	ret
	.p2align 4,,10
	.p2align 3
.L869:
	movq	8(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 8(%rdi)
	ja	.L857
	movl	$0, %eax
	jne	.L857
	movq	16(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 16(%rdi)
	ja	.L857
	movl	$0, %eax
	jne	.L857
	movq	24(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 24(%rdi)
	ja	.L857
	movl	$0, %eax
	jne	.L857
	movq	32(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 32(%rdi)
	ja	.L857
	movl	$0, %eax
	jne	.L857
	movq	40(%rsi), %rax
	cmpq	%rax, 40(%rdi)
	seta	%al
	ret
	.cfi_endproc
.LFE36:
	.size	biguint_gt, .-biguint_gt
	.p2align 4
	.globl	biguint_gteq
	.type	biguint_gteq, @function
biguint_gteq:
.LFB37:
	.cfi_startproc
	movq	(%rsi), %rdx
	movl	$1, %eax
	cmpq	%rdx, (%rdi)
	ja	.L870
	movl	$0, %eax
	je	.L882
.L870:
	ret
	.p2align 4,,10
	.p2align 3
.L882:
	movq	8(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 8(%rdi)
	ja	.L870
	movl	$0, %eax
	jne	.L870
	movq	16(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 16(%rdi)
	ja	.L870
	movl	$0, %eax
	jne	.L870
	movq	24(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 24(%rdi)
	ja	.L870
	movl	$0, %eax
	jne	.L870
	movq	32(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 32(%rdi)
	ja	.L870
	movl	$0, %eax
	jne	.L870
	movq	40(%rsi), %rax
	cmpq	%rax, 40(%rdi)
	setnb	%al
	ret
	.cfi_endproc
.LFE37:
	.size	biguint_gteq, .-biguint_gteq
	.p2align 4
	.globl	biguint_lt
	.type	biguint_lt, @function
biguint_lt:
.LFB38:
	.cfi_startproc
	movq	(%rsi), %rdx
	movl	$1, %eax
	cmpq	%rdx, (%rdi)
	jb	.L883
	movl	$0, %eax
	je	.L895
.L883:
	ret
	.p2align 4,,10
	.p2align 3
.L895:
	movq	8(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 8(%rdi)
	jb	.L883
	movl	$0, %eax
	jne	.L883
	movq	16(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 16(%rdi)
	jb	.L883
	movl	$0, %eax
	jne	.L883
	movq	24(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 24(%rdi)
	jb	.L883
	movl	$0, %eax
	jne	.L883
	movq	32(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 32(%rdi)
	jb	.L883
	movl	$0, %eax
	jne	.L883
	movq	40(%rsi), %rax
	cmpq	%rax, 40(%rdi)
	setb	%al
	ret
	.cfi_endproc
.LFE38:
	.size	biguint_lt, .-biguint_lt
	.p2align 4
	.globl	biguint_lteq
	.type	biguint_lteq, @function
biguint_lteq:
.LFB39:
	.cfi_startproc
	movq	(%rsi), %rdx
	movl	$1, %eax
	cmpq	%rdx, (%rdi)
	jb	.L896
	movl	$0, %eax
	je	.L908
.L896:
	ret
	.p2align 4,,10
	.p2align 3
.L908:
	movq	8(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 8(%rdi)
	jb	.L896
	movl	$0, %eax
	jne	.L896
	movq	16(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 16(%rdi)
	jb	.L896
	movl	$0, %eax
	jne	.L896
	movq	24(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 24(%rdi)
	jb	.L896
	movl	$0, %eax
	jne	.L896
	movq	32(%rsi), %rcx
	movl	$1, %eax
	cmpq	%rcx, 32(%rdi)
	jb	.L896
	movl	$0, %eax
	jne	.L896
	movq	40(%rsi), %rax
	cmpq	%rax, 40(%rdi)
	setbe	%al
	ret
	.cfi_endproc
.LFE39:
	.size	biguint_lteq, .-biguint_lteq
	.p2align 4
	.globl	biguint_inc
	.type	biguint_inc, @function
biguint_inc:
.LFB40:
	.cfi_startproc
	movq	40(%rdi), %rax
	addq	$1, %rax
	sete	%dl
	movq	%rax, 40(%rdi)
	movzbl	%dl, %edx
	addq	32(%rdi), %rdx
	orq	%rdx, %rax
	movq	%rdx, 32(%rdi)
	sete	%dl
	movzbl	%dl, %edx
	addq	24(%rdi), %rdx
	orq	%rdx, %rax
	movq	%rdx, 24(%rdi)
	sete	%dl
	movzbl	%dl, %edx
	addq	16(%rdi), %rdx
	orq	%rdx, %rax
	movq	%rdx, 16(%rdi)
	sete	%dl
	movzbl	%dl, %edx
	addq	8(%rdi), %rdx
	orq	%rdx, %rax
	movq	%rdx, 8(%rdi)
	cmpq	$1, %rax
	movq	%rdi, %rax
	adcq	$0, (%rdi)
	ret
	.cfi_endproc
.LFE40:
	.size	biguint_inc, .-biguint_inc
	.p2align 4
	.globl	biguint_add
	.type	biguint_add, @function
biguint_add:
.LFB41:
	.cfi_startproc
	movq	40(%rdx), %rax
	addq	40(%rsi), %rax
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, 40(%rdi)
	cmpq	40(%rsi), %rax
	setb	%r9b
	movq	32(%rdx), %rdi
	addq	32(%rsi), %rdi
	movzbl	%r9b, %eax
	addq	%rax, %rdi
	movl	%r9d, %eax
	movq	%rdi, 32(%r8)
	movq	32(%rsi), %r10
	notl	%eax
	cmpq	%r10, %rdi
	setb	%dl
	andl	%eax, %edx
	cmpq	%r10, %rdi
	setbe	%al
	andl	%r9d, %eax
	orl	%edx, %eax
	movq	24(%rcx), %rdx
	addq	24(%rsi), %rdx
	movsbq	%al, %rdi
	addq	%rdi, %rdx
	movq	%rdx, 24(%r8)
	cmpq	24(%rsi), %rdx
	setb	%dil
	setbe	%dl
	xorl	%edi, %edx
	andl	%eax, %edx
	movq	16(%rcx), %rax
	addq	16(%rsi), %rax
	xorl	%edi, %edx
	movsbq	%dl, %rdi
	addq	%rdi, %rax
	movq	%rax, 16(%r8)
	cmpq	16(%rsi), %rax
	setb	%dil
	setbe	%al
	xorl	%edi, %eax
	andl	%edx, %eax
	xorl	%edi, %eax
	movsbq	%al, %rdi
	movq	8(%rcx), %rax
	addq	8(%rsi), %rax
	addq	%rdi, %rax
	movq	%rdi, %rdx
	movq	%rax, 8(%r8)
	cmpq	8(%rsi), %rax
	setb	%dil
	setbe	%al
	xorl	%edi, %eax
	andl	%edx, %eax
	xorl	%edi, %eax
	movsbq	%al, %rdx
	movq	(%rcx), %rax
	addq	(%rsi), %rax
	addq	%rdx, %rax
	movq	%rax, (%r8)
	movq	%r8, %rax
	ret
	.cfi_endproc
.LFE41:
	.size	biguint_add, .-biguint_add
	.p2align 4
	.globl	biguint_dec
	.type	biguint_dec, @function
biguint_dec:
.LFB42:
	.cfi_startproc
	movq	40(%rdi), %rax
	movq	32(%rdi), %rdx
	xorl	%ecx, %ecx
	subq	$1, %rax
	cmpq	$-1, %rax
	movq	%rax, 40(%rdi)
	sete	%cl
	subq	%rcx, %rdx
	xorl	%ecx, %ecx
	andq	%rdx, %rax
	movq	%rdx, 32(%rdi)
	movq	24(%rdi), %rdx
	cmpq	$-1, %rax
	sete	%cl
	subq	%rcx, %rdx
	xorl	%ecx, %ecx
	andq	%rdx, %rax
	movq	%rdx, 24(%rdi)
	movq	16(%rdi), %rdx
	cmpq	$-1, %rax
	sete	%cl
	subq	%rcx, %rdx
	xorl	%ecx, %ecx
	andq	%rdx, %rax
	movq	%rdx, 16(%rdi)
	movq	8(%rdi), %rdx
	cmpq	$-1, %rax
	sete	%cl
	subq	%rcx, %rdx
	andq	%rdx, %rax
	movq	%rdx, 8(%rdi)
	cmpq	$-1, %rax
	sete	%al
	movzbl	%al, %eax
	subq	%rax, (%rdi)
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE42:
	.size	biguint_dec, .-biguint_dec
	.p2align 4
	.globl	biguint_sub
	.type	biguint_sub, @function
biguint_sub:
.LFB43:
	.cfi_startproc
	movq	40(%rdx), %rax
	movq	32(%rdx), %rcx
	movq	%rsi, %r8
	movq	8(%rdx), %r9
	movq	(%rdx), %rsi
	negq	%rax
	notq	%rcx
	movq	16(%rdx), %r10
	movq	24(%rdx), %r11
	cmpq	$1, %rax
	movq	%rax, 40(%rdi)
	notq	%r9
	notq	%rsi
	adcq	$0, %rcx
	notq	%r11
	notq	%r10
	movq	%rcx, %rdx
	movq	%rcx, 32(%rdi)
	xorl	%ecx, %ecx
	orq	%rdx, %rax
	sete	%cl
	xorl	%edx, %edx
	addq	%r11, %rcx
	orq	%rcx, %rax
	movq	%rcx, 24(%rdi)
	sete	%dl
	addq	%r10, %rdx
	orq	%rdx, %rax
	movq	%rdx, 16(%rdi)
	sete	%dl
	movzbl	%dl, %edx
	addq	%rdx, %r9
	movq	%rdi, %rdx
	orq	%r9, %rax
	movq	%r9, 8(%rdi)
	cmpq	$1, %rax
	adcq	$0, %rsi
	movq	%rsi, (%rdi)
	movq	%r8, %rsi
	jmp	biguint_add
	.cfi_endproc
.LFE43:
	.size	biguint_sub, .-biguint_sub
	.p2align 4
	.globl	biguint_mul
	.type	biguint_mul, @function
biguint_mul:
.LFB44:
	.cfi_startproc
	movq	%rdx, %rcx
	movl	(%rsi), %edx
	movq	%rdi, %rax
	imull	(%rcx), %edx
	movl	%edx, (%rdi)
	movl	(%rsi), %esi
	imull	4(%rcx), %esi
	leal	(%rsi,%rdx,2), %edx
	movl	%edx, 4(%rdi)
	ret
	.cfi_endproc
.LFE44:
	.size	biguint_mul, .-biguint_mul
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"0x%016lX%016lX%016lX%016lX%016lX%016lX\n"
	.text
	.p2align 4
	.globl	biguint_puthex
	.type	biguint_puthex, @function
biguint_puthex:
.LFB45:
	.cfi_startproc
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movq	16(%rdi), %rcx
	movq	8(%rdi), %rdx
	pushq	40(%rdi)
	.cfi_def_cfa_offset 32
	movq	32(%rdi), %r9
	xorl	%eax, %eax
	movq	24(%rdi), %r8
	movq	(%rdi), %rsi
	leaq	.LC0(%rip), %rdi
	call	printf@PLT
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	biguint_puthex, .-biguint_puthex
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"0x%016lX %016lX %016lX %016lX %016lX %016lX\n"
	.text
	.p2align 4
	.globl	biguint_putsephex64
	.type	biguint_putsephex64, @function
biguint_putsephex64:
.LFB46:
	.cfi_startproc
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movq	16(%rdi), %rcx
	movq	8(%rdi), %rdx
	pushq	40(%rdi)
	.cfi_def_cfa_offset 32
	movq	32(%rdi), %r9
	xorl	%eax, %eax
	movq	24(%rdi), %r8
	movq	(%rdi), %rsi
	leaq	.LC1(%rip), %rdi
	call	printf@PLT
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	biguint_putsephex64, .-biguint_putsephex64
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
