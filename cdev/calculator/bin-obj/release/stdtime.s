	.file	"stdtime.c"
	.text
	.p2align 4
	.globl	updatetime
	.type	updatetime, @function
updatetime:
.LFB23:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdi, %rsi
	xorl	%edi, %edi
	call	getrusage@PLT
	pxor	%xmm0, %xmm0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	cvtsi2sdl	%eax, %xmm0
	ret
	.cfi_endproc
.LFE23:
	.size	updatetime, .-updatetime
	.p2align 4
	.globl	deltatime
	.type	deltatime, @function
deltatime:
.LFB24:
	.cfi_startproc
	imulq	$1000000, 8(%rsp), %rax
	addq	16(%rsp), %rax
	pxor	%xmm0, %xmm0
	imulq	$1000000, 152(%rsp), %rcx
	addq	160(%rsp), %rcx
	subq	%rcx, %rax
	imulq	$1000000, 168(%rsp), %rcx
	addq	176(%rsp), %rcx
	movq	%rax, %rdx
	imulq	$1000000, 24(%rsp), %rax
	addq	32(%rsp), %rax
	subq	%rcx, %rax
	addq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	ret
	.cfi_endproc
.LFE24:
	.size	deltatime, .-deltatime
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
