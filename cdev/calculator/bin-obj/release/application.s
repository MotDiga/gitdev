	.file	"application.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\nTesting BigUInt RSHIFT Of:\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"\nFrom -388 => 388 (4bits by step):\n"
	.section	.rodata.str1.1
.LC2:
	.string	"Completed in: %.9lf\n"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"\nFrom -388 => 388 (1bits by step):\n"
	.text
	.p2align 4
	.globl	rshift_test
	.type	rshift_test, @function
rshift_test:
.LFB23:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	.LC0(%rip), %rdi
	movabsq	$2459565876494606882, %rax
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	$-388, %rbx
	subq	$384, %rsp
	.cfi_def_cfa_offset 432
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %r12
	leaq	96(%rsp), %r14
	movq	%rsp, %rbp
	movabsq	$4919131752989213764, %rax
	movq	%rax, 56(%rsp)
	movabsq	$7378697629483820646, %rax
	movq	%rax, 64(%rsp)
	movabsq	$-8608480567731124088, %rax
	movq	%rax, 72(%rsp)
	movabsq	$-6148914691236517206, %rax
	movq	%rax, 80(%rsp)
	movabsq	$-3689348814741910324, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r12, %rdi
	call	biguint_puthex@PLT
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r14, %rdi
	call	updatetime@PLT
	.p2align 4,,10
	.p2align 3
.L2:
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rbp, %rdi
	addq	$4, %rbx
	call	biguint_rsh@PLT
	movq	%rbp, %rdi
	call	biguint_puthex@PLT
	cmpq	$392, %rbx
	jne	.L2
	leaq	240(%rsp), %r13
	movq	$-388, %rbx
	movq	%r13, %rdi
	call	updatetime@PLT
	pushq	232(%rsp)
	.cfi_def_cfa_offset 440
	pushq	232(%rsp)
	.cfi_def_cfa_offset 448
	pushq	232(%rsp)
	.cfi_def_cfa_offset 456
	pushq	232(%rsp)
	.cfi_def_cfa_offset 464
	pushq	232(%rsp)
	.cfi_def_cfa_offset 472
	pushq	232(%rsp)
	.cfi_def_cfa_offset 480
	pushq	232(%rsp)
	.cfi_def_cfa_offset 488
	pushq	232(%rsp)
	.cfi_def_cfa_offset 496
	pushq	232(%rsp)
	.cfi_def_cfa_offset 504
	pushq	232(%rsp)
	.cfi_def_cfa_offset 512
	pushq	232(%rsp)
	.cfi_def_cfa_offset 520
	pushq	232(%rsp)
	.cfi_def_cfa_offset 528
	pushq	232(%rsp)
	.cfi_def_cfa_offset 536
	pushq	232(%rsp)
	.cfi_def_cfa_offset 544
	pushq	232(%rsp)
	.cfi_def_cfa_offset 552
	pushq	232(%rsp)
	.cfi_def_cfa_offset 560
	pushq	232(%rsp)
	.cfi_def_cfa_offset 568
	pushq	232(%rsp)
	.cfi_def_cfa_offset 576
	pushq	520(%rsp)
	.cfi_def_cfa_offset 584
	pushq	520(%rsp)
	.cfi_def_cfa_offset 592
	pushq	520(%rsp)
	.cfi_def_cfa_offset 600
	pushq	520(%rsp)
	.cfi_def_cfa_offset 608
	pushq	520(%rsp)
	.cfi_def_cfa_offset 616
	pushq	520(%rsp)
	.cfi_def_cfa_offset 624
	pushq	520(%rsp)
	.cfi_def_cfa_offset 632
	pushq	520(%rsp)
	.cfi_def_cfa_offset 640
	pushq	520(%rsp)
	.cfi_def_cfa_offset 648
	pushq	520(%rsp)
	.cfi_def_cfa_offset 656
	pushq	520(%rsp)
	.cfi_def_cfa_offset 664
	pushq	520(%rsp)
	.cfi_def_cfa_offset 672
	pushq	520(%rsp)
	.cfi_def_cfa_offset 680
	pushq	520(%rsp)
	.cfi_def_cfa_offset 688
	pushq	520(%rsp)
	.cfi_def_cfa_offset 696
	pushq	520(%rsp)
	.cfi_def_cfa_offset 704
	pushq	520(%rsp)
	.cfi_def_cfa_offset 712
	pushq	520(%rsp)
	.cfi_def_cfa_offset 720
	call	deltatime@PLT
	addq	$288, %rsp
	.cfi_def_cfa_offset 432
	movl	$1, %eax
	leaq	.LC2(%rip), %rdi
	call	log_colorgreen@PLT
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r14, %rdi
	call	updatetime@PLT
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rbp, %rdi
	addq	$1, %rbx
	call	biguint_rsh@PLT
	movq	%rbp, %rdi
	call	biguint_puthex@PLT
	cmpq	$389, %rbx
	jne	.L3
	movq	%r13, %rdi
	call	updatetime@PLT
	pushq	232(%rsp)
	.cfi_def_cfa_offset 440
	pushq	232(%rsp)
	.cfi_def_cfa_offset 448
	pushq	232(%rsp)
	.cfi_def_cfa_offset 456
	pushq	232(%rsp)
	.cfi_def_cfa_offset 464
	pushq	232(%rsp)
	.cfi_def_cfa_offset 472
	pushq	232(%rsp)
	.cfi_def_cfa_offset 480
	pushq	232(%rsp)
	.cfi_def_cfa_offset 488
	pushq	232(%rsp)
	.cfi_def_cfa_offset 496
	pushq	232(%rsp)
	.cfi_def_cfa_offset 504
	pushq	232(%rsp)
	.cfi_def_cfa_offset 512
	pushq	232(%rsp)
	.cfi_def_cfa_offset 520
	pushq	232(%rsp)
	.cfi_def_cfa_offset 528
	pushq	232(%rsp)
	.cfi_def_cfa_offset 536
	pushq	232(%rsp)
	.cfi_def_cfa_offset 544
	pushq	232(%rsp)
	.cfi_def_cfa_offset 552
	pushq	232(%rsp)
	.cfi_def_cfa_offset 560
	pushq	232(%rsp)
	.cfi_def_cfa_offset 568
	pushq	232(%rsp)
	.cfi_def_cfa_offset 576
	pushq	520(%rsp)
	.cfi_def_cfa_offset 584
	pushq	520(%rsp)
	.cfi_def_cfa_offset 592
	pushq	520(%rsp)
	.cfi_def_cfa_offset 600
	pushq	520(%rsp)
	.cfi_def_cfa_offset 608
	pushq	520(%rsp)
	.cfi_def_cfa_offset 616
	pushq	520(%rsp)
	.cfi_def_cfa_offset 624
	pushq	520(%rsp)
	.cfi_def_cfa_offset 632
	pushq	520(%rsp)
	.cfi_def_cfa_offset 640
	pushq	520(%rsp)
	.cfi_def_cfa_offset 648
	pushq	520(%rsp)
	.cfi_def_cfa_offset 656
	pushq	520(%rsp)
	.cfi_def_cfa_offset 664
	pushq	520(%rsp)
	.cfi_def_cfa_offset 672
	pushq	520(%rsp)
	.cfi_def_cfa_offset 680
	pushq	520(%rsp)
	.cfi_def_cfa_offset 688
	pushq	520(%rsp)
	.cfi_def_cfa_offset 696
	pushq	520(%rsp)
	.cfi_def_cfa_offset 704
	pushq	520(%rsp)
	.cfi_def_cfa_offset 712
	pushq	520(%rsp)
	.cfi_def_cfa_offset 720
	call	deltatime@PLT
	addq	$288, %rsp
	.cfi_def_cfa_offset 432
	movl	$1, %eax
	leaq	.LC2(%rip), %rdi
	call	log_colorgreen@PLT
	addq	$384, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	rshift_test, .-rshift_test
	.section	.rodata.str1.1
.LC4:
	.string	"\nTesting BigUInt LSHIFT Of:\n"
	.text
	.p2align 4
	.globl	lshift_test
	.type	lshift_test, @function
lshift_test:
.LFB24:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	.LC4(%rip), %rdi
	movabsq	$2459565876494606882, %rax
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	$-388, %rbx
	subq	$384, %rsp
	.cfi_def_cfa_offset 432
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %r12
	leaq	96(%rsp), %r14
	movq	%rsp, %rbp
	movabsq	$4919131752989213764, %rax
	movq	%rax, 56(%rsp)
	movabsq	$7378697629483820646, %rax
	movq	%rax, 64(%rsp)
	movabsq	$-8608480567731124088, %rax
	movq	%rax, 72(%rsp)
	movabsq	$-6148914691236517206, %rax
	movq	%rax, 80(%rsp)
	movabsq	$-3689348814741910324, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r12, %rdi
	call	biguint_puthex@PLT
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r14, %rdi
	call	updatetime@PLT
	.p2align 4,,10
	.p2align 3
.L9:
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rbp, %rdi
	addq	$4, %rbx
	call	biguint_lsh@PLT
	movq	%rbp, %rdi
	call	biguint_puthex@PLT
	cmpq	$392, %rbx
	jne	.L9
	leaq	240(%rsp), %r13
	movq	$-388, %rbx
	movq	%r13, %rdi
	call	updatetime@PLT
	pushq	232(%rsp)
	.cfi_def_cfa_offset 440
	pushq	232(%rsp)
	.cfi_def_cfa_offset 448
	pushq	232(%rsp)
	.cfi_def_cfa_offset 456
	pushq	232(%rsp)
	.cfi_def_cfa_offset 464
	pushq	232(%rsp)
	.cfi_def_cfa_offset 472
	pushq	232(%rsp)
	.cfi_def_cfa_offset 480
	pushq	232(%rsp)
	.cfi_def_cfa_offset 488
	pushq	232(%rsp)
	.cfi_def_cfa_offset 496
	pushq	232(%rsp)
	.cfi_def_cfa_offset 504
	pushq	232(%rsp)
	.cfi_def_cfa_offset 512
	pushq	232(%rsp)
	.cfi_def_cfa_offset 520
	pushq	232(%rsp)
	.cfi_def_cfa_offset 528
	pushq	232(%rsp)
	.cfi_def_cfa_offset 536
	pushq	232(%rsp)
	.cfi_def_cfa_offset 544
	pushq	232(%rsp)
	.cfi_def_cfa_offset 552
	pushq	232(%rsp)
	.cfi_def_cfa_offset 560
	pushq	232(%rsp)
	.cfi_def_cfa_offset 568
	pushq	232(%rsp)
	.cfi_def_cfa_offset 576
	pushq	520(%rsp)
	.cfi_def_cfa_offset 584
	pushq	520(%rsp)
	.cfi_def_cfa_offset 592
	pushq	520(%rsp)
	.cfi_def_cfa_offset 600
	pushq	520(%rsp)
	.cfi_def_cfa_offset 608
	pushq	520(%rsp)
	.cfi_def_cfa_offset 616
	pushq	520(%rsp)
	.cfi_def_cfa_offset 624
	pushq	520(%rsp)
	.cfi_def_cfa_offset 632
	pushq	520(%rsp)
	.cfi_def_cfa_offset 640
	pushq	520(%rsp)
	.cfi_def_cfa_offset 648
	pushq	520(%rsp)
	.cfi_def_cfa_offset 656
	pushq	520(%rsp)
	.cfi_def_cfa_offset 664
	pushq	520(%rsp)
	.cfi_def_cfa_offset 672
	pushq	520(%rsp)
	.cfi_def_cfa_offset 680
	pushq	520(%rsp)
	.cfi_def_cfa_offset 688
	pushq	520(%rsp)
	.cfi_def_cfa_offset 696
	pushq	520(%rsp)
	.cfi_def_cfa_offset 704
	pushq	520(%rsp)
	.cfi_def_cfa_offset 712
	pushq	520(%rsp)
	.cfi_def_cfa_offset 720
	call	deltatime@PLT
	addq	$288, %rsp
	.cfi_def_cfa_offset 432
	movl	$1, %eax
	leaq	.LC2(%rip), %rdi
	call	log_colorgreen@PLT
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r14, %rdi
	call	updatetime@PLT
	.p2align 4,,10
	.p2align 3
.L10:
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rbp, %rdi
	addq	$1, %rbx
	call	biguint_lsh@PLT
	movq	%rbp, %rdi
	call	biguint_puthex@PLT
	cmpq	$389, %rbx
	jne	.L10
	movq	%r13, %rdi
	call	updatetime@PLT
	pushq	232(%rsp)
	.cfi_def_cfa_offset 440
	pushq	232(%rsp)
	.cfi_def_cfa_offset 448
	pushq	232(%rsp)
	.cfi_def_cfa_offset 456
	pushq	232(%rsp)
	.cfi_def_cfa_offset 464
	pushq	232(%rsp)
	.cfi_def_cfa_offset 472
	pushq	232(%rsp)
	.cfi_def_cfa_offset 480
	pushq	232(%rsp)
	.cfi_def_cfa_offset 488
	pushq	232(%rsp)
	.cfi_def_cfa_offset 496
	pushq	232(%rsp)
	.cfi_def_cfa_offset 504
	pushq	232(%rsp)
	.cfi_def_cfa_offset 512
	pushq	232(%rsp)
	.cfi_def_cfa_offset 520
	pushq	232(%rsp)
	.cfi_def_cfa_offset 528
	pushq	232(%rsp)
	.cfi_def_cfa_offset 536
	pushq	232(%rsp)
	.cfi_def_cfa_offset 544
	pushq	232(%rsp)
	.cfi_def_cfa_offset 552
	pushq	232(%rsp)
	.cfi_def_cfa_offset 560
	pushq	232(%rsp)
	.cfi_def_cfa_offset 568
	pushq	232(%rsp)
	.cfi_def_cfa_offset 576
	pushq	520(%rsp)
	.cfi_def_cfa_offset 584
	pushq	520(%rsp)
	.cfi_def_cfa_offset 592
	pushq	520(%rsp)
	.cfi_def_cfa_offset 600
	pushq	520(%rsp)
	.cfi_def_cfa_offset 608
	pushq	520(%rsp)
	.cfi_def_cfa_offset 616
	pushq	520(%rsp)
	.cfi_def_cfa_offset 624
	pushq	520(%rsp)
	.cfi_def_cfa_offset 632
	pushq	520(%rsp)
	.cfi_def_cfa_offset 640
	pushq	520(%rsp)
	.cfi_def_cfa_offset 648
	pushq	520(%rsp)
	.cfi_def_cfa_offset 656
	pushq	520(%rsp)
	.cfi_def_cfa_offset 664
	pushq	520(%rsp)
	.cfi_def_cfa_offset 672
	pushq	520(%rsp)
	.cfi_def_cfa_offset 680
	pushq	520(%rsp)
	.cfi_def_cfa_offset 688
	pushq	520(%rsp)
	.cfi_def_cfa_offset 696
	pushq	520(%rsp)
	.cfi_def_cfa_offset 704
	pushq	520(%rsp)
	.cfi_def_cfa_offset 712
	pushq	520(%rsp)
	.cfi_def_cfa_offset 720
	call	deltatime@PLT
	addq	$288, %rsp
	.cfi_def_cfa_offset 432
	movl	$1, %eax
	leaq	.LC2(%rip), %rdi
	call	log_colorgreen@PLT
	addq	$384, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	lshift_test, .-lshift_test
	.section	.rodata.str1.1
.LC5:
	.string	"\nTesting BigUInt RROTATE Of:\n"
	.text
	.p2align 4
	.globl	rrot_test
	.type	rrot_test, @function
rrot_test:
.LFB25:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	.LC5(%rip), %rdi
	movabsq	$2459565876494606882, %rax
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	$-388, %rbx
	subq	$384, %rsp
	.cfi_def_cfa_offset 432
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %r12
	leaq	96(%rsp), %r14
	movq	%rsp, %rbp
	movabsq	$4919131752989213764, %rax
	movq	%rax, 56(%rsp)
	movabsq	$7378697629483820646, %rax
	movq	%rax, 64(%rsp)
	movabsq	$-8608480567731124088, %rax
	movq	%rax, 72(%rsp)
	movabsq	$-6148914691236517206, %rax
	movq	%rax, 80(%rsp)
	movabsq	$-3689348814741910324, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r12, %rdi
	call	biguint_puthex@PLT
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r14, %rdi
	call	updatetime@PLT
	.p2align 4,,10
	.p2align 3
.L15:
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rbp, %rdi
	addq	$4, %rbx
	call	biguint_rrot@PLT
	movq	%rbp, %rdi
	call	biguint_puthex@PLT
	cmpq	$392, %rbx
	jne	.L15
	leaq	240(%rsp), %r13
	movq	$-388, %rbx
	movq	%r13, %rdi
	call	updatetime@PLT
	pushq	232(%rsp)
	.cfi_def_cfa_offset 440
	pushq	232(%rsp)
	.cfi_def_cfa_offset 448
	pushq	232(%rsp)
	.cfi_def_cfa_offset 456
	pushq	232(%rsp)
	.cfi_def_cfa_offset 464
	pushq	232(%rsp)
	.cfi_def_cfa_offset 472
	pushq	232(%rsp)
	.cfi_def_cfa_offset 480
	pushq	232(%rsp)
	.cfi_def_cfa_offset 488
	pushq	232(%rsp)
	.cfi_def_cfa_offset 496
	pushq	232(%rsp)
	.cfi_def_cfa_offset 504
	pushq	232(%rsp)
	.cfi_def_cfa_offset 512
	pushq	232(%rsp)
	.cfi_def_cfa_offset 520
	pushq	232(%rsp)
	.cfi_def_cfa_offset 528
	pushq	232(%rsp)
	.cfi_def_cfa_offset 536
	pushq	232(%rsp)
	.cfi_def_cfa_offset 544
	pushq	232(%rsp)
	.cfi_def_cfa_offset 552
	pushq	232(%rsp)
	.cfi_def_cfa_offset 560
	pushq	232(%rsp)
	.cfi_def_cfa_offset 568
	pushq	232(%rsp)
	.cfi_def_cfa_offset 576
	pushq	520(%rsp)
	.cfi_def_cfa_offset 584
	pushq	520(%rsp)
	.cfi_def_cfa_offset 592
	pushq	520(%rsp)
	.cfi_def_cfa_offset 600
	pushq	520(%rsp)
	.cfi_def_cfa_offset 608
	pushq	520(%rsp)
	.cfi_def_cfa_offset 616
	pushq	520(%rsp)
	.cfi_def_cfa_offset 624
	pushq	520(%rsp)
	.cfi_def_cfa_offset 632
	pushq	520(%rsp)
	.cfi_def_cfa_offset 640
	pushq	520(%rsp)
	.cfi_def_cfa_offset 648
	pushq	520(%rsp)
	.cfi_def_cfa_offset 656
	pushq	520(%rsp)
	.cfi_def_cfa_offset 664
	pushq	520(%rsp)
	.cfi_def_cfa_offset 672
	pushq	520(%rsp)
	.cfi_def_cfa_offset 680
	pushq	520(%rsp)
	.cfi_def_cfa_offset 688
	pushq	520(%rsp)
	.cfi_def_cfa_offset 696
	pushq	520(%rsp)
	.cfi_def_cfa_offset 704
	pushq	520(%rsp)
	.cfi_def_cfa_offset 712
	pushq	520(%rsp)
	.cfi_def_cfa_offset 720
	call	deltatime@PLT
	addq	$288, %rsp
	.cfi_def_cfa_offset 432
	movl	$1, %eax
	leaq	.LC2(%rip), %rdi
	call	log_colorgreen@PLT
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r14, %rdi
	call	updatetime@PLT
	.p2align 4,,10
	.p2align 3
.L16:
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rbp, %rdi
	addq	$1, %rbx
	call	biguint_rrot@PLT
	movq	%rbp, %rdi
	call	biguint_puthex@PLT
	cmpq	$389, %rbx
	jne	.L16
	movq	%r13, %rdi
	call	updatetime@PLT
	pushq	232(%rsp)
	.cfi_def_cfa_offset 440
	pushq	232(%rsp)
	.cfi_def_cfa_offset 448
	pushq	232(%rsp)
	.cfi_def_cfa_offset 456
	pushq	232(%rsp)
	.cfi_def_cfa_offset 464
	pushq	232(%rsp)
	.cfi_def_cfa_offset 472
	pushq	232(%rsp)
	.cfi_def_cfa_offset 480
	pushq	232(%rsp)
	.cfi_def_cfa_offset 488
	pushq	232(%rsp)
	.cfi_def_cfa_offset 496
	pushq	232(%rsp)
	.cfi_def_cfa_offset 504
	pushq	232(%rsp)
	.cfi_def_cfa_offset 512
	pushq	232(%rsp)
	.cfi_def_cfa_offset 520
	pushq	232(%rsp)
	.cfi_def_cfa_offset 528
	pushq	232(%rsp)
	.cfi_def_cfa_offset 536
	pushq	232(%rsp)
	.cfi_def_cfa_offset 544
	pushq	232(%rsp)
	.cfi_def_cfa_offset 552
	pushq	232(%rsp)
	.cfi_def_cfa_offset 560
	pushq	232(%rsp)
	.cfi_def_cfa_offset 568
	pushq	232(%rsp)
	.cfi_def_cfa_offset 576
	pushq	520(%rsp)
	.cfi_def_cfa_offset 584
	pushq	520(%rsp)
	.cfi_def_cfa_offset 592
	pushq	520(%rsp)
	.cfi_def_cfa_offset 600
	pushq	520(%rsp)
	.cfi_def_cfa_offset 608
	pushq	520(%rsp)
	.cfi_def_cfa_offset 616
	pushq	520(%rsp)
	.cfi_def_cfa_offset 624
	pushq	520(%rsp)
	.cfi_def_cfa_offset 632
	pushq	520(%rsp)
	.cfi_def_cfa_offset 640
	pushq	520(%rsp)
	.cfi_def_cfa_offset 648
	pushq	520(%rsp)
	.cfi_def_cfa_offset 656
	pushq	520(%rsp)
	.cfi_def_cfa_offset 664
	pushq	520(%rsp)
	.cfi_def_cfa_offset 672
	pushq	520(%rsp)
	.cfi_def_cfa_offset 680
	pushq	520(%rsp)
	.cfi_def_cfa_offset 688
	pushq	520(%rsp)
	.cfi_def_cfa_offset 696
	pushq	520(%rsp)
	.cfi_def_cfa_offset 704
	pushq	520(%rsp)
	.cfi_def_cfa_offset 712
	pushq	520(%rsp)
	.cfi_def_cfa_offset 720
	call	deltatime@PLT
	addq	$288, %rsp
	.cfi_def_cfa_offset 432
	movl	$1, %eax
	leaq	.LC2(%rip), %rdi
	call	log_colorgreen@PLT
	addq	$384, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	rrot_test, .-rrot_test
	.section	.rodata.str1.1
.LC6:
	.string	"\nTesting BigUInt LROTATE Of:\n"
	.text
	.p2align 4
	.globl	lrot_test
	.type	lrot_test, @function
lrot_test:
.LFB26:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	.LC6(%rip), %rdi
	movabsq	$2459565876494606882, %rax
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	$-388, %rbx
	subq	$384, %rsp
	.cfi_def_cfa_offset 432
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %r12
	leaq	96(%rsp), %r14
	movq	%rsp, %rbp
	movabsq	$4919131752989213764, %rax
	movq	%rax, 56(%rsp)
	movabsq	$7378697629483820646, %rax
	movq	%rax, 64(%rsp)
	movabsq	$-8608480567731124088, %rax
	movq	%rax, 72(%rsp)
	movabsq	$-6148914691236517206, %rax
	movq	%rax, 80(%rsp)
	movabsq	$-3689348814741910324, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r12, %rdi
	call	biguint_puthex@PLT
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r14, %rdi
	call	updatetime@PLT
	.p2align 4,,10
	.p2align 3
.L21:
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rbp, %rdi
	addq	$4, %rbx
	call	biguint_lrot@PLT
	movq	%rbp, %rdi
	call	biguint_puthex@PLT
	cmpq	$392, %rbx
	jne	.L21
	leaq	240(%rsp), %r13
	movq	$-388, %rbx
	movq	%r13, %rdi
	call	updatetime@PLT
	pushq	232(%rsp)
	.cfi_def_cfa_offset 440
	pushq	232(%rsp)
	.cfi_def_cfa_offset 448
	pushq	232(%rsp)
	.cfi_def_cfa_offset 456
	pushq	232(%rsp)
	.cfi_def_cfa_offset 464
	pushq	232(%rsp)
	.cfi_def_cfa_offset 472
	pushq	232(%rsp)
	.cfi_def_cfa_offset 480
	pushq	232(%rsp)
	.cfi_def_cfa_offset 488
	pushq	232(%rsp)
	.cfi_def_cfa_offset 496
	pushq	232(%rsp)
	.cfi_def_cfa_offset 504
	pushq	232(%rsp)
	.cfi_def_cfa_offset 512
	pushq	232(%rsp)
	.cfi_def_cfa_offset 520
	pushq	232(%rsp)
	.cfi_def_cfa_offset 528
	pushq	232(%rsp)
	.cfi_def_cfa_offset 536
	pushq	232(%rsp)
	.cfi_def_cfa_offset 544
	pushq	232(%rsp)
	.cfi_def_cfa_offset 552
	pushq	232(%rsp)
	.cfi_def_cfa_offset 560
	pushq	232(%rsp)
	.cfi_def_cfa_offset 568
	pushq	232(%rsp)
	.cfi_def_cfa_offset 576
	pushq	520(%rsp)
	.cfi_def_cfa_offset 584
	pushq	520(%rsp)
	.cfi_def_cfa_offset 592
	pushq	520(%rsp)
	.cfi_def_cfa_offset 600
	pushq	520(%rsp)
	.cfi_def_cfa_offset 608
	pushq	520(%rsp)
	.cfi_def_cfa_offset 616
	pushq	520(%rsp)
	.cfi_def_cfa_offset 624
	pushq	520(%rsp)
	.cfi_def_cfa_offset 632
	pushq	520(%rsp)
	.cfi_def_cfa_offset 640
	pushq	520(%rsp)
	.cfi_def_cfa_offset 648
	pushq	520(%rsp)
	.cfi_def_cfa_offset 656
	pushq	520(%rsp)
	.cfi_def_cfa_offset 664
	pushq	520(%rsp)
	.cfi_def_cfa_offset 672
	pushq	520(%rsp)
	.cfi_def_cfa_offset 680
	pushq	520(%rsp)
	.cfi_def_cfa_offset 688
	pushq	520(%rsp)
	.cfi_def_cfa_offset 696
	pushq	520(%rsp)
	.cfi_def_cfa_offset 704
	pushq	520(%rsp)
	.cfi_def_cfa_offset 712
	pushq	520(%rsp)
	.cfi_def_cfa_offset 720
	call	deltatime@PLT
	addq	$288, %rsp
	.cfi_def_cfa_offset 432
	movl	$1, %eax
	leaq	.LC2(%rip), %rdi
	call	log_colorgreen@PLT
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r14, %rdi
	call	updatetime@PLT
	.p2align 4,,10
	.p2align 3
.L22:
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rbp, %rdi
	addq	$1, %rbx
	call	biguint_lrot@PLT
	movq	%rbp, %rdi
	call	biguint_puthex@PLT
	cmpq	$389, %rbx
	jne	.L22
	movq	%r13, %rdi
	call	updatetime@PLT
	pushq	232(%rsp)
	.cfi_def_cfa_offset 440
	pushq	232(%rsp)
	.cfi_def_cfa_offset 448
	pushq	232(%rsp)
	.cfi_def_cfa_offset 456
	pushq	232(%rsp)
	.cfi_def_cfa_offset 464
	pushq	232(%rsp)
	.cfi_def_cfa_offset 472
	pushq	232(%rsp)
	.cfi_def_cfa_offset 480
	pushq	232(%rsp)
	.cfi_def_cfa_offset 488
	pushq	232(%rsp)
	.cfi_def_cfa_offset 496
	pushq	232(%rsp)
	.cfi_def_cfa_offset 504
	pushq	232(%rsp)
	.cfi_def_cfa_offset 512
	pushq	232(%rsp)
	.cfi_def_cfa_offset 520
	pushq	232(%rsp)
	.cfi_def_cfa_offset 528
	pushq	232(%rsp)
	.cfi_def_cfa_offset 536
	pushq	232(%rsp)
	.cfi_def_cfa_offset 544
	pushq	232(%rsp)
	.cfi_def_cfa_offset 552
	pushq	232(%rsp)
	.cfi_def_cfa_offset 560
	pushq	232(%rsp)
	.cfi_def_cfa_offset 568
	pushq	232(%rsp)
	.cfi_def_cfa_offset 576
	pushq	520(%rsp)
	.cfi_def_cfa_offset 584
	pushq	520(%rsp)
	.cfi_def_cfa_offset 592
	pushq	520(%rsp)
	.cfi_def_cfa_offset 600
	pushq	520(%rsp)
	.cfi_def_cfa_offset 608
	pushq	520(%rsp)
	.cfi_def_cfa_offset 616
	pushq	520(%rsp)
	.cfi_def_cfa_offset 624
	pushq	520(%rsp)
	.cfi_def_cfa_offset 632
	pushq	520(%rsp)
	.cfi_def_cfa_offset 640
	pushq	520(%rsp)
	.cfi_def_cfa_offset 648
	pushq	520(%rsp)
	.cfi_def_cfa_offset 656
	pushq	520(%rsp)
	.cfi_def_cfa_offset 664
	pushq	520(%rsp)
	.cfi_def_cfa_offset 672
	pushq	520(%rsp)
	.cfi_def_cfa_offset 680
	pushq	520(%rsp)
	.cfi_def_cfa_offset 688
	pushq	520(%rsp)
	.cfi_def_cfa_offset 696
	pushq	520(%rsp)
	.cfi_def_cfa_offset 704
	pushq	520(%rsp)
	.cfi_def_cfa_offset 712
	pushq	520(%rsp)
	.cfi_def_cfa_offset 720
	call	deltatime@PLT
	addq	$288, %rsp
	.cfi_def_cfa_offset 432
	movl	$1, %eax
	leaq	.LC2(%rip), %rdi
	call	log_colorgreen@PLT
	addq	$384, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE26:
	.size	lrot_test, .-lrot_test
	.section	.rodata.str1.1
.LC7:
	.string	"\nTesting BigUInt REVERSE Of:\n"
.LC8:
	.string	"Is:\n"
	.text
	.p2align 4
	.globl	rev_test
	.type	rev_test, @function
rev_test:
.LFB27:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC7(%rip), %rdi
	movabsq	$2459565876494606882, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movabsq	$1311768467463790320, %rbx
	subq	$96, %rsp
	.cfi_def_cfa_offset 128
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %r12
	movq	%rsp, %rbp
	movabsq	$4919131752989213764, %rax
	movq	%rax, 56(%rsp)
	movabsq	$7378697629483820646, %rax
	movq	%rax, 64(%rsp)
	movabsq	$-8608480567731124088, %rax
	movq	%rax, 72(%rsp)
	movabsq	$-6148914691236517206, %rax
	movq	%rax, 80(%rsp)
	movabsq	$-3689348814741910324, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r12, %rdi
	call	biguint_puthex@PLT
	xorl	%eax, %eax
	leaq	.LC8(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_rev@PLT
	movq	%rbp, %rdi
	call	biguint_puthex@PLT
	xorl	%eax, %eax
	leaq	.LC7(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r12, %rdi
	movabsq	$1229782938533634594, %rax
	movq	%rax, 48(%rsp)
	movabsq	$3689348815028241476, %rax
	movq	%rax, 56(%rsp)
	movabsq	$6148914691522848358, %rax
	movq	%rax, 64(%rsp)
	movabsq	$8608480568017455240, %rax
	movq	%rax, 72(%rsp)
	movabsq	$-7378697629197489494, %rax
	movq	%rax, 80(%rsp)
	movabsq	$-4919131752702882612, %rax
	movq	%rax, 88(%rsp)
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC8(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_rev@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC7(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r12, %rdi
	movq	%rbx, 80(%rsp)
	movabsq	$1229801703532086340, %rax
	movq	%rax, 48(%rsp)
	movabsq	$6148933456521300104, %rax
	movq	%rax, 56(%rsp)
	movabsq	$-7378678864199037748, %rax
	movq	%rax, 64(%rsp)
	movabsq	$-2459547111209893888, %rax
	movq	%rax, 72(%rsp)
	movq	%rbx, 88(%rsp)
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC8(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_rev@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC7(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r12, %rdi
	movabsq	$1234605616436508552, %rdx
	movabsq	$-7373874951294615808, %rax
	movq	%rdx, 48(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rax, 88(%rsp)
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC8(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_rev@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC7(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r12, %rdi
	movq	%rbx, 48(%rsp)
	movq	%rbx, 56(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rbx, 72(%rsp)
	movq	%rbx, 80(%rsp)
	movq	%rbx, 88(%rsp)
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC8(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_rev@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	addq	$96, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE27:
	.size	rev_test, .-rev_test
	.section	.rodata.str1.1
.LC9:
	.string	"\nTesting BigUInt Conditions:\n"
.LC10:
	.string	"BigUInt Equal:\n"
.LC11:
	.string	"Test1: "
.LC12:
	.string	"Test2: "
.LC13:
	.string	"Test3: "
.LC14:
	.string	"Test4: "
.LC15:
	.string	"Test5: "
.LC16:
	.string	"Test6: "
.LC17:
	.string	"Test7: "
.LC18:
	.string	"Test8: "
.LC19:
	.string	"Test9: "
.LC20:
	.string	"Test10: "
.LC21:
	.string	"BigUInt NotEqual:\n"
.LC22:
	.string	"BigUInt GreaterThan:\n"
.LC23:
	.string	"Test11: "
.LC24:
	.string	"Test12: "
.LC25:
	.string	"Test13: "
.LC26:
	.string	"Test14: "
.LC27:
	.string	"Test15: "
.LC28:
	.string	"Test16: "
.LC29:
	.string	"Test17: "
.LC30:
	.string	"Test18: "
.LC31:
	.string	"Test19: "
.LC32:
	.string	"Test20: "
.LC33:
	.string	"Test21: "
.LC34:
	.string	"BigUInt GreaterThanEqual:\n"
.LC35:
	.string	"BigUInt LowerThan:\n"
.LC36:
	.string	"BigUInt LowerThanEqual:\n"
	.text
	.p2align 4
	.globl	condition_test
	.type	condition_test, @function
condition_test:
.LFB28:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%eax, %eax
	leaq	.LC9(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$104, %rsp
	.cfi_def_cfa_offset 128
	call	log_colorcyan@PLT
	xorl	%eax, %eax
	leaq	48(%rsp), %rbp
	movq	%rsp, %r12
	leaq	.LC10(%rip), %rdi
	call	log_colorcyan@PLT
	movq	$0, (%rsp)
	xorl	%eax, %eax
	leaq	.LC11(%rip), %rdi
	movq	$0, 8(%rsp)
	movdqu	(%rsp), %xmm0
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movdqu	16(%rsp), %xmm1
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movdqu	32(%rsp), %xmm2
	movups	%xmm1, 64(%rsp)
	movups	%xmm2, 80(%rsp)
	movups	%xmm0, 48(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_eq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC12(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_eq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC13(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_eq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	movq	$-1, (%rsp)
	xorl	%eax, %eax
	leaq	.LC14(%rip), %rdi
	movq	$-1, 8(%rsp)
	movdqu	(%rsp), %xmm3
	movq	$-1, 16(%rsp)
	movq	$-1, 24(%rsp)
	movdqu	16(%rsp), %xmm4
	movq	$-1, 32(%rsp)
	movq	$-1, 40(%rsp)
	movdqu	32(%rsp), %xmm5
	movups	%xmm4, 64(%rsp)
	movups	%xmm5, 80(%rsp)
	movups	%xmm3, 48(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_eq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC15(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_eq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC16(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$1, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_eq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	movq	$1, (%rsp)
	xorl	%eax, %eax
	leaq	.LC17(%rip), %rdi
	movq	$0, 8(%rsp)
	movdqu	(%rsp), %xmm6
	movq	$1, 16(%rsp)
	movq	$0, 24(%rsp)
	movdqu	16(%rsp), %xmm7
	movq	$1, 32(%rsp)
	movq	$0, 40(%rsp)
	movdqu	32(%rsp), %xmm0
	movups	%xmm7, 64(%rsp)
	movups	%xmm0, 80(%rsp)
	movups	%xmm6, 48(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_eq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC18(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_eq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC19(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_eq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC20(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$1, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$1, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_eq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC21(%rip), %rdi
	call	log_colorcyan@PLT
	movq	$0, (%rsp)
	xorl	%eax, %eax
	leaq	.LC11(%rip), %rdi
	movq	$0, 8(%rsp)
	movdqu	(%rsp), %xmm1
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movdqu	16(%rsp), %xmm2
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movdqu	32(%rsp), %xmm3
	movups	%xmm2, 64(%rsp)
	movups	%xmm3, 80(%rsp)
	movups	%xmm1, 48(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_neq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC12(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_neq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC13(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_neq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	movq	$-1, (%rsp)
	xorl	%eax, %eax
	leaq	.LC14(%rip), %rdi
	movq	$-1, 8(%rsp)
	movdqu	(%rsp), %xmm4
	movq	$-1, 16(%rsp)
	movq	$-1, 24(%rsp)
	movdqu	16(%rsp), %xmm5
	movq	$-1, 32(%rsp)
	movq	$-1, 40(%rsp)
	movdqu	32(%rsp), %xmm6
	movups	%xmm5, 64(%rsp)
	movups	%xmm6, 80(%rsp)
	movups	%xmm4, 48(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_neq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC15(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_neq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC16(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$1, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_neq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	movq	$1, (%rsp)
	xorl	%eax, %eax
	leaq	.LC17(%rip), %rdi
	movq	$0, 8(%rsp)
	movdqu	(%rsp), %xmm7
	movq	$1, 16(%rsp)
	movq	$0, 24(%rsp)
	movdqu	16(%rsp), %xmm0
	movq	$1, 32(%rsp)
	movq	$0, 40(%rsp)
	movdqu	32(%rsp), %xmm1
	movups	%xmm7, 48(%rsp)
	movups	%xmm0, 64(%rsp)
	movups	%xmm1, 80(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_neq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC18(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_neq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC19(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_neq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC20(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$1, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$1, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_neq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC22(%rip), %rdi
	call	log_colorcyan@PLT
	movq	$0, (%rsp)
	xorl	%eax, %eax
	leaq	.LC11(%rip), %rdi
	movq	$0, 8(%rsp)
	movdqu	(%rsp), %xmm2
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movdqu	16(%rsp), %xmm3
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movdqu	32(%rsp), %xmm4
	movups	%xmm2, 48(%rsp)
	movups	%xmm3, 64(%rsp)
	movups	%xmm4, 80(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC12(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC13(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC14(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC15(%rip), %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$1, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC16(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC17(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC18(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC19(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC20(%rip), %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$-1, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC23(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC24(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC25(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC26(%rip), %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$-1, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC27(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC28(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC29(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC30(%rip), %rdi
	movq	$-1, (%rsp)
	movq	$-1, 8(%rsp)
	movq	$-1, 16(%rsp)
	movq	$-1, 24(%rsp)
	movq	$-1, 32(%rsp)
	movq	$-1, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC31(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC32(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC33(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC34(%rip), %rdi
	call	log_colorcyan@PLT
	movq	$0, (%rsp)
	xorl	%eax, %eax
	leaq	.LC11(%rip), %rdi
	movq	$0, 8(%rsp)
	movdqu	(%rsp), %xmm5
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movdqu	16(%rsp), %xmm6
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movdqu	32(%rsp), %xmm7
	movups	%xmm5, 48(%rsp)
	movups	%xmm6, 64(%rsp)
	movups	%xmm7, 80(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC12(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC13(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC14(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC15(%rip), %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$1, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC16(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC17(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC18(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC19(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC20(%rip), %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$-1, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC23(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC24(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC25(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC26(%rip), %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$-1, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC27(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC28(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC29(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC30(%rip), %rdi
	movq	$-1, (%rsp)
	movq	$-1, 8(%rsp)
	movq	$-1, 16(%rsp)
	movq	$-1, 24(%rsp)
	movq	$-1, 32(%rsp)
	movq	$-1, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC31(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC32(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC33(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_gteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC35(%rip), %rdi
	call	log_colorcyan@PLT
	movq	$0, (%rsp)
	xorl	%eax, %eax
	leaq	.LC11(%rip), %rdi
	movq	$0, 8(%rsp)
	movdqu	(%rsp), %xmm0
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movdqu	16(%rsp), %xmm1
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movdqu	32(%rsp), %xmm2
	movups	%xmm0, 48(%rsp)
	movups	%xmm1, 64(%rsp)
	movups	%xmm2, 80(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC12(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC13(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC14(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC15(%rip), %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$1, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC16(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC17(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC18(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC19(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC20(%rip), %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$-1, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC23(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC24(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC25(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC26(%rip), %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$-1, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC27(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC28(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC29(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC30(%rip), %rdi
	movq	$-1, (%rsp)
	movq	$-1, 8(%rsp)
	movq	$-1, 16(%rsp)
	movq	$-1, 24(%rsp)
	movq	$-1, 32(%rsp)
	movq	$-1, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC31(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC32(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC33(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lt@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC36(%rip), %rdi
	call	log_colorcyan@PLT
	movq	$0, (%rsp)
	xorl	%eax, %eax
	leaq	.LC11(%rip), %rdi
	movq	$0, 8(%rsp)
	movdqu	(%rsp), %xmm3
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movdqu	16(%rsp), %xmm4
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movdqu	32(%rsp), %xmm5
	movups	%xmm3, 48(%rsp)
	movups	%xmm4, 64(%rsp)
	movups	%xmm5, 80(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC12(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC13(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC14(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC15(%rip), %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$1, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC16(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC17(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC18(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC19(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC20(%rip), %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$-1, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC23(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC24(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC25(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC26(%rip), %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$-1, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC27(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC28(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC29(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC30(%rip), %rdi
	movq	$-1, (%rsp)
	movq	$-1, 8(%rsp)
	movq	$-1, 16(%rsp)
	movq	$-1, 24(%rsp)
	movq	$-1, 32(%rsp)
	movq	$-1, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC31(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC32(%rip), %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	testb	%al, %al
	sete	%dil
	call	log_condition@PLT
	xorl	%eax, %eax
	leaq	.LC33(%rip), %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	log_colorcyan@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	biguint_lteq@PLT
	xorl	%edi, %edi
	cmpb	$1, %al
	sete	%dil
	call	log_condition@PLT
	addq	$104, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE28:
	.size	condition_test, .-condition_test
	.p2align 4
	.globl	inc_test
	.type	inc_test, @function
inc_test:
.LFB29:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE29:
	.size	inc_test, .-inc_test
	.section	.rodata.str1.1
.LC37:
	.string	"\nTesting BigUInt Add:\n"
.LC38:
	.string	"+\n"
.LC39:
	.string	"=\n"
.LC40:
	.string	""
	.text
	.p2align 4
	.globl	add_test
	.type	add_test, @function
add_test:
.LFB30:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	xorl	%eax, %eax
	leaq	.LC37(%rip), %rdi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	subq	$144, %rsp
	.cfi_def_cfa_offset 176
	leaq	48(%rsp), %r12
	leaq	96(%rsp), %r13
	movq	%rsp, %rbp
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$-1, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 128(%rsp)
	movq	$1, 136(%rsp)
	call	log_colorcyan@PLT
	movq	%r12, %rdi
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC38(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdi
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC39(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_add@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	leaq	.LC40(%rip), %rdi
	call	puts@PLT
	movq	%r12, %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC38(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdi
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC39(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_add@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	leaq	.LC40(%rip), %rdi
	call	puts@PLT
	movq	%r12, %rdi
	movq	$-1, 96(%rsp)
	movq	$-1, 104(%rsp)
	movq	$-1, 112(%rsp)
	movq	$-1, 120(%rsp)
	movq	$-1, 128(%rsp)
	movq	$-1, 136(%rsp)
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC38(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdi
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC39(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_add@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	leaq	.LC40(%rip), %rdi
	call	puts@PLT
	pxor	%xmm0, %xmm0
	movq	%r12, %rdi
	movups	%xmm0, 80(%rsp)
	movups	%xmm0, 48(%rsp)
	movups	%xmm0, 64(%rsp)
	movl	$2, 84(%rsp)
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC38(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdi
	call	biguint_putsephex64@PLT
	leaq	.LC39(%rip), %rdi
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_add@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	addq	$144, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE30:
	.size	add_test, .-add_test
	.p2align 4
	.globl	dec_test
	.type	dec_test, @function
dec_test:
.LFB35:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE35:
	.size	dec_test, .-dec_test
	.section	.rodata.str1.1
.LC41:
	.string	"\nTesting BigUInt Sub:\n"
.LC42:
	.string	"-\n"
	.text
	.p2align 4
	.globl	sub_test
	.type	sub_test, @function
sub_test:
.LFB32:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	xorl	%eax, %eax
	leaq	.LC41(%rip), %rdi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	subq	$144, %rsp
	.cfi_def_cfa_offset 176
	leaq	48(%rsp), %r12
	leaq	96(%rsp), %r13
	movq	%rsp, %rbp
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$16, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 128(%rsp)
	movq	$1, 136(%rsp)
	call	log_colorcyan@PLT
	movq	%r12, %rdi
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC42(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdi
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC39(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_sub@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	leaq	.LC40(%rip), %rdi
	call	puts@PLT
	movq	%r12, %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$1, 80(%rsp)
	movq	$0, 88(%rsp)
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC42(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdi
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC39(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_sub@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	leaq	.LC40(%rip), %rdi
	call	puts@PLT
	movq	%r12, %rdi
	movq	$-1, 48(%rsp)
	movq	$-1, 56(%rsp)
	movq	$-1, 64(%rsp)
	movq	$-1, 72(%rsp)
	movq	$-1, 80(%rsp)
	movq	$-1, 88(%rsp)
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC42(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdi
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC39(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_sub@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	leaq	.LC40(%rip), %rdi
	call	puts@PLT
	movq	%r12, %rdi
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC42(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdi
	call	biguint_putsephex64@PLT
	leaq	.LC39(%rip), %rdi
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_sub@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	leaq	.LC40(%rip), %rdi
	call	puts@PLT
	movq	%r12, %rdi
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	call	biguint_putsephex64@PLT
	xorl	%eax, %eax
	leaq	.LC42(%rip), %rdi
	call	log_colorcyan@PLT
	movq	%r13, %rdi
	call	biguint_putsephex64@PLT
	leaq	.LC39(%rip), %rdi
	xorl	%eax, %eax
	call	log_colorcyan@PLT
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	biguint_sub@PLT
	movq	%rbp, %rdi
	call	biguint_putsephex64@PLT
	addq	$144, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	sub_test, .-sub_test
	.section	.rodata.str1.1
.LC43:
	.string	"\nSalam Alicom\n\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB33:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	.LC43(%rip), %rdi
	xorl	%eax, %eax
	call	log_colorwhite@PLT
	xorl	%eax, %eax
	call	sub_test
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	main, .-main
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
