	.file	"bignum.c"
	.text
.Ltext0:
	.globl	biguint_set
	.type	biguint_set, @function
biguint_set:
.LVL0:
.LFB22:
	.file 1 "src/bignum.c"
	.loc 1 5 1 view -0
	.cfi_startproc
	.loc 1 5 1 is_stmt 0 view .LVU1
	movq	%rdi, %rax
	.loc 1 6 5 is_stmt 1 view .LVU2
	.loc 1 6 20 is_stmt 0 view .LVU3
	movq	(%rsi), %rdx
	.loc 1 6 15 view .LVU4
	movq	%rdx, (%rdi)
	.loc 1 7 20 view .LVU5
	movq	8(%rsi), %rdx
	.loc 1 7 15 view .LVU6
	movq	%rdx, 8(%rdi)
	.loc 1 8 20 view .LVU7
	movq	16(%rsi), %rdx
	.loc 1 8 15 view .LVU8
	movq	%rdx, 16(%rdi)
	.loc 1 9 20 view .LVU9
	movq	24(%rsi), %rdx
	.loc 1 9 15 view .LVU10
	movq	%rdx, 24(%rdi)
	.loc 1 10 20 view .LVU11
	movq	32(%rsi), %rdx
	.loc 1 10 15 view .LVU12
	movq	%rdx, 32(%rdi)
	.loc 1 11 20 view .LVU13
	movq	40(%rsi), %rdx
	.loc 1 11 15 view .LVU14
	movq	%rdx, 40(%rdi)
	.loc 1 13 5 is_stmt 1 view .LVU15
	.loc 1 14 1 is_stmt 0 view .LVU16
	ret
	.cfi_endproc
.LFE22:
	.size	biguint_set, .-biguint_set
	.globl	biguint_not
	.type	biguint_not, @function
biguint_not:
.LVL1:
.LFB23:
	.loc 1 18 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 18 1 is_stmt 0 view .LVU18
	movq	%rdi, %rax
	.loc 1 19 5 is_stmt 1 view .LVU19
	.loc 1 19 16 is_stmt 0 view .LVU20
	movq	(%rsi), %rdx
	notq	%rdx
	.loc 1 19 14 view .LVU21
	movq	%rdx, (%rdi)
	.loc 1 20 16 view .LVU22
	movq	8(%rsi), %rdx
	notq	%rdx
	.loc 1 20 14 view .LVU23
	movq	%rdx, 8(%rdi)
	.loc 1 21 16 view .LVU24
	movq	16(%rsi), %rdx
	notq	%rdx
	.loc 1 21 14 view .LVU25
	movq	%rdx, 16(%rdi)
	.loc 1 22 16 view .LVU26
	movq	24(%rsi), %rdx
	notq	%rdx
	.loc 1 22 14 view .LVU27
	movq	%rdx, 24(%rdi)
	.loc 1 23 16 view .LVU28
	movq	32(%rsi), %rdx
	notq	%rdx
	.loc 1 23 14 view .LVU29
	movq	%rdx, 32(%rdi)
	.loc 1 24 20 view .LVU30
	movq	40(%rsi), %rdx
	.loc 1 24 16 view .LVU31
	notq	%rdx
	.loc 1 24 14 view .LVU32
	movq	%rdx, 40(%rdi)
	.loc 1 26 5 is_stmt 1 view .LVU33
	.loc 1 27 1 is_stmt 0 view .LVU34
	ret
	.cfi_endproc
.LFE23:
	.size	biguint_not, .-biguint_not
	.globl	biguint_bar
	.type	biguint_bar, @function
biguint_bar:
.LVL2:
.LFB24:
	.loc 1 29 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 29 1 is_stmt 0 view .LVU36
	movq	%rdi, %rax
	.loc 1 30 5 is_stmt 1 view .LVU37
	.loc 1 30 32 is_stmt 0 view .LVU38
	movq	8(%rsi), %rdx
	.loc 1 30 26 view .LVU39
	orq	(%rsi), %rdx
	.loc 1 30 38 view .LVU40
	orq	16(%rsi), %rdx
	.loc 1 30 50 view .LVU41
	orq	24(%rsi), %rdx
	.loc 1 30 62 view .LVU42
	orq	32(%rsi), %rdx
	.loc 1 30 74 view .LVU43
	orq	40(%rsi), %rdx
	sete	%dl
	movzbl	%dl, %edx
	.loc 1 30 14 view .LVU44
	movq	%rdx, 40(%rdi)
	.loc 1 31 5 is_stmt 1 view .LVU45
	.loc 1 31 58 is_stmt 0 view .LVU46
	movq	$0, 32(%rdi)
	.loc 1 31 47 view .LVU47
	movq	$0, 24(%rdi)
	.loc 1 31 36 view .LVU48
	movq	$0, 16(%rdi)
	.loc 1 31 25 view .LVU49
	movq	$0, 8(%rdi)
	.loc 1 31 14 view .LVU50
	movq	$0, (%rdi)
	.loc 1 33 5 is_stmt 1 view .LVU51
	.loc 1 34 1 is_stmt 0 view .LVU52
	ret
	.cfi_endproc
.LFE24:
	.size	biguint_bar, .-biguint_bar
	.globl	biguint_neg
	.type	biguint_neg, @function
biguint_neg:
.LVL3:
.LFB25:
	.loc 1 36 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 39 5 view .LVU54
	.loc 1 39 16 is_stmt 0 view .LVU55
	movq	(%rsi), %r9
	notq	%r9
	.loc 1 39 14 view .LVU56
	movq	%r9, (%rdi)
	.loc 1 40 16 view .LVU57
	movq	8(%rsi), %r8
	notq	%r8
	.loc 1 40 14 view .LVU58
	movq	%r8, 8(%rdi)
	.loc 1 41 16 view .LVU59
	movq	16(%rsi), %r10
	notq	%r10
	.loc 1 41 14 view .LVU60
	movq	%r10, 16(%rdi)
	.loc 1 42 16 view .LVU61
	movq	24(%rsi), %rdx
	notq	%rdx
	.loc 1 42 14 view .LVU62
	movq	%rdx, 24(%rdi)
	.loc 1 43 16 view .LVU63
	movq	32(%rsi), %rcx
	notq	%rcx
	.loc 1 43 14 view .LVU64
	movq	%rcx, 32(%rdi)
	.loc 1 44 20 view .LVU65
	movq	40(%rsi), %rax
	.loc 1 44 16 view .LVU66
	notq	%rax
	.loc 1 44 14 view .LVU67
	movq	%rax, 40(%rdi)
	.loc 1 46 5 is_stmt 1 view .LVU68
	.loc 1 46 13 is_stmt 0 view .LVU69
	addq	$1, %rax
	movq	%rax, 40(%rdi)
	.loc 1 47 5 is_stmt 1 view .LVU70
	.loc 1 47 17 is_stmt 0 view .LVU71
	sete	%sil
.LVL4:
	.loc 1 47 17 view .LVU72
	movzbl	%sil, %esi
	.loc 1 47 14 view .LVU73
	addq	%rsi, %rcx
	movq	%rcx, 32(%rdi)
	.loc 1 48 5 is_stmt 1 view .LVU74
	.loc 1 48 27 is_stmt 0 view .LVU75
	orq	%rcx, %rax
	sete	%cl
	movzbl	%cl, %ecx
	.loc 1 48 14 view .LVU76
	addq	%rcx, %rdx
	movq	%rdx, 24(%rdi)
	.loc 1 49 5 is_stmt 1 view .LVU77
	.loc 1 49 39 is_stmt 0 view .LVU78
	orq	%rdx, %rax
	sete	%dl
	movzbl	%dl, %edx
	.loc 1 49 14 view .LVU79
	addq	%r10, %rdx
	movq	%rdx, 16(%rdi)
	.loc 1 50 5 is_stmt 1 view .LVU80
	.loc 1 50 51 is_stmt 0 view .LVU81
	orq	%rdx, %rax
	sete	%dl
	movzbl	%dl, %edx
	.loc 1 50 14 view .LVU82
	addq	%rdx, %r8
	movq	%r8, 8(%rdi)
	.loc 1 51 5 is_stmt 1 view .LVU83
	.loc 1 51 63 is_stmt 0 view .LVU84
	orq	%r8, %rax
	sete	%al
	movzbl	%al, %eax
	.loc 1 51 14 view .LVU85
	addq	%rax, %r9
	movq	%r9, (%rdi)
	.loc 1 53 5 is_stmt 1 view .LVU86
	.loc 1 54 1 is_stmt 0 view .LVU87
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE25:
	.size	biguint_neg, .-biguint_neg
	.globl	biguint_or
	.type	biguint_or, @function
biguint_or:
.LVL5:
.LFB26:
	.loc 1 56 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 56 1 is_stmt 0 view .LVU89
	movq	%rdi, %rax
	.loc 1 57 5 is_stmt 1 view .LVU90
	.loc 1 57 31 is_stmt 0 view .LVU91
	movq	(%rdx), %rcx
	.loc 1 57 25 view .LVU92
	orq	(%rsi), %rcx
	.loc 1 57 13 view .LVU93
	movq	%rcx, (%rdi)
	.loc 1 58 31 view .LVU94
	movq	8(%rdx), %rcx
	.loc 1 58 25 view .LVU95
	orq	8(%rsi), %rcx
	.loc 1 58 13 view .LVU96
	movq	%rcx, 8(%rdi)
	.loc 1 59 31 view .LVU97
	movq	16(%rdx), %rcx
	.loc 1 59 25 view .LVU98
	orq	16(%rsi), %rcx
	.loc 1 59 13 view .LVU99
	movq	%rcx, 16(%rdi)
	.loc 1 60 31 view .LVU100
	movq	24(%rdx), %rcx
	.loc 1 60 25 view .LVU101
	orq	24(%rsi), %rcx
	.loc 1 60 13 view .LVU102
	movq	%rcx, 24(%rdi)
	.loc 1 61 31 view .LVU103
	movq	32(%rdx), %rcx
	.loc 1 61 25 view .LVU104
	orq	32(%rsi), %rcx
	.loc 1 61 13 view .LVU105
	movq	%rcx, 32(%rdi)
	.loc 1 62 31 view .LVU106
	movq	40(%rdx), %rdx
.LVL6:
	.loc 1 62 25 view .LVU107
	orq	40(%rsi), %rdx
	.loc 1 62 13 view .LVU108
	movq	%rdx, 40(%rdi)
	.loc 1 64 5 is_stmt 1 view .LVU109
	.loc 1 65 1 is_stmt 0 view .LVU110
	ret
	.cfi_endproc
.LFE26:
	.size	biguint_or, .-biguint_or
	.globl	biguint_and
	.type	biguint_and, @function
biguint_and:
.LVL7:
.LFB27:
	.loc 1 67 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 67 1 is_stmt 0 view .LVU112
	movq	%rdi, %rax
	.loc 1 68 5 is_stmt 1 view .LVU113
	.loc 1 68 32 is_stmt 0 view .LVU114
	movq	(%rdx), %rcx
	.loc 1 68 26 view .LVU115
	andq	(%rsi), %rcx
	.loc 1 68 14 view .LVU116
	movq	%rcx, (%rdi)
	.loc 1 69 32 view .LVU117
	movq	8(%rdx), %rcx
	.loc 1 69 26 view .LVU118
	andq	8(%rsi), %rcx
	.loc 1 69 14 view .LVU119
	movq	%rcx, 8(%rdi)
	.loc 1 70 32 view .LVU120
	movq	16(%rdx), %rcx
	.loc 1 70 26 view .LVU121
	andq	16(%rsi), %rcx
	.loc 1 70 14 view .LVU122
	movq	%rcx, 16(%rdi)
	.loc 1 71 32 view .LVU123
	movq	24(%rdx), %rcx
	.loc 1 71 26 view .LVU124
	andq	24(%rsi), %rcx
	.loc 1 71 14 view .LVU125
	movq	%rcx, 24(%rdi)
	.loc 1 72 32 view .LVU126
	movq	32(%rdx), %rcx
	.loc 1 72 26 view .LVU127
	andq	32(%rsi), %rcx
	.loc 1 72 14 view .LVU128
	movq	%rcx, 32(%rdi)
	.loc 1 73 32 view .LVU129
	movq	40(%rdx), %rdx
.LVL8:
	.loc 1 73 26 view .LVU130
	andq	40(%rsi), %rdx
	.loc 1 73 14 view .LVU131
	movq	%rdx, 40(%rdi)
	.loc 1 75 5 is_stmt 1 view .LVU132
	.loc 1 76 1 is_stmt 0 view .LVU133
	ret
	.cfi_endproc
.LFE27:
	.size	biguint_and, .-biguint_and
	.globl	biguint_xor
	.type	biguint_xor, @function
biguint_xor:
.LVL9:
.LFB28:
	.loc 1 78 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 78 1 is_stmt 0 view .LVU135
	movq	%rdi, %rax
	.loc 1 79 5 is_stmt 1 view .LVU136
	.loc 1 79 32 is_stmt 0 view .LVU137
	movq	(%rdx), %rcx
	.loc 1 79 26 view .LVU138
	xorq	(%rsi), %rcx
	.loc 1 79 14 view .LVU139
	movq	%rcx, (%rdi)
	.loc 1 80 32 view .LVU140
	movq	8(%rdx), %rcx
	.loc 1 80 26 view .LVU141
	xorq	8(%rsi), %rcx
	.loc 1 80 14 view .LVU142
	movq	%rcx, 8(%rdi)
	.loc 1 81 32 view .LVU143
	movq	16(%rdx), %rcx
	.loc 1 81 26 view .LVU144
	xorq	16(%rsi), %rcx
	.loc 1 81 14 view .LVU145
	movq	%rcx, 16(%rdi)
	.loc 1 82 32 view .LVU146
	movq	24(%rdx), %rcx
	.loc 1 82 26 view .LVU147
	xorq	24(%rsi), %rcx
	.loc 1 82 14 view .LVU148
	movq	%rcx, 24(%rdi)
	.loc 1 83 32 view .LVU149
	movq	32(%rdx), %rcx
	.loc 1 83 26 view .LVU150
	xorq	32(%rsi), %rcx
	.loc 1 83 14 view .LVU151
	movq	%rcx, 32(%rdi)
	.loc 1 84 32 view .LVU152
	movq	40(%rdx), %rdx
.LVL10:
	.loc 1 84 26 view .LVU153
	xorq	40(%rsi), %rdx
	.loc 1 84 14 view .LVU154
	movq	%rdx, 40(%rdi)
	.loc 1 86 5 is_stmt 1 view .LVU155
	.loc 1 87 1 is_stmt 0 view .LVU156
	ret
	.cfi_endproc
.LFE28:
	.size	biguint_xor, .-biguint_xor
	.globl	biguint_rsh
	.type	biguint_rsh, @function
biguint_rsh:
.LVL11:
.LFB29:
	.loc 1 128 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 128 1 is_stmt 0 view .LVU158
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	.loc 1 129 5 is_stmt 1 view .LVU159
	.loc 1 129 8 is_stmt 0 view .LVU160
	testq	%rsi, %rsi
	js	.L180
	.loc 1 136 9 is_stmt 1 view .LVU161
	.loc 1 136 70 is_stmt 0 view .LVU162
	cmpq	$63, %rsi
	ja	.L137
	.loc 1 136 70 discriminator 1 view .LVU163
	movq	(%rdx), %rax
	movl	%esi, %ecx
	shrq	%cl, %rax
	jmp	.L53
.L180:
	.loc 1 131 9 is_stmt 1 view .LVU164
	.loc 1 131 16 is_stmt 0 view .LVU165
	movq	%rsi, %rax
	negq	%rax
.LVL12:
	.loc 1 132 9 is_stmt 1 view .LVU166
	.loc 1 132 70 is_stmt 0 view .LVU167
	cmpq	$63, %rax
	ja	.L95
	.loc 1 132 70 discriminator 1 view .LVU168
	movq	40(%rdx), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L10:
	.loc 1 132 70 discriminator 1 view .LVU169
	movl	$63, %r9d
	subq	%rsi, %r9
	.loc 1 132 153 discriminator 4 view .LVU170
	cmpq	$62, %r9
	ja	.L96
	.loc 1 132 153 discriminator 5 view .LVU171
	movq	40(%rdx), %rbx
	movl	%esi, %ecx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L11:
	.loc 1 132 103 discriminator 8 view .LVU172
	addq	%rcx, %r8
	.loc 1 132 20 discriminator 8 view .LVU173
	movq	%r8, 40(%rdi)
	.loc 1 132 189 is_stmt 1 discriminator 8 view .LVU174
	.loc 1 132 250 is_stmt 0 discriminator 8 view .LVU175
	cmpq	$63, %rax
	ja	.L97
	.loc 1 132 250 discriminator 9 view .LVU176
	movq	32(%rdx), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L12:
	.loc 1 132 337 discriminator 12 view .LVU177
	cmpq	$62, %r9
	ja	.L98
	.loc 1 132 337 discriminator 13 view .LVU178
	movq	32(%rdx), %rbx
	movl	%esi, %ecx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L13:
	.loc 1 132 287 discriminator 16 view .LVU179
	addq	%rcx, %r8
	movq	$-64, %r10
	subq	%rsi, %r10
	.loc 1 132 428 discriminator 16 view .LVU180
	cmpq	$63, %r10
	ja	.L99
	.loc 1 132 455 discriminator 17 view .LVU181
	leal	-64(%rax), %ecx
	.loc 1 132 428 discriminator 17 view .LVU182
	movq	40(%rdx), %r11
	salq	%cl, %r11
.L14:
	.loc 1 132 428 discriminator 17 view .LVU183
	movq	%rsi, %r13
	notq	%r13
	.loc 1 132 514 discriminator 20 view .LVU184
	cmpq	$62, %r13
	ja	.L100
	.loc 1 132 539 discriminator 21 view .LVU185
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 132 514 discriminator 21 view .LVU186
	movq	40(%rdx), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L15:
	.loc 1 132 462 discriminator 24 view .LVU187
	addq	%rcx, %r11
	.loc 1 132 376 discriminator 24 view .LVU188
	orq	%r8, %r11
	.loc 1 132 200 discriminator 24 view .LVU189
	movq	%r11, 32(%rdi)
	.loc 1 132 551 is_stmt 1 discriminator 24 view .LVU190
	.loc 1 132 612 is_stmt 0 discriminator 24 view .LVU191
	cmpq	$63, %rax
	ja	.L101
	.loc 1 132 612 discriminator 25 view .LVU192
	movq	24(%rdx), %r11
	movl	%eax, %ecx
	salq	%cl, %r11
.L16:
	.loc 1 132 703 discriminator 28 view .LVU193
	cmpq	$62, %r9
	ja	.L102
	.loc 1 132 703 discriminator 29 view .LVU194
	movq	24(%rdx), %rbx
	movl	%esi, %ecx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L17:
	.loc 1 132 653 discriminator 32 view .LVU195
	addq	%rcx, %r11
	.loc 1 132 798 discriminator 32 view .LVU196
	cmpq	$63, %r10
	ja	.L103
	.loc 1 132 829 discriminator 33 view .LVU197
	leal	-64(%rax), %ecx
	.loc 1 132 798 discriminator 33 view .LVU198
	movq	32(%rdx), %r8
	salq	%cl, %r8
.L18:
	.loc 1 132 888 discriminator 36 view .LVU199
	cmpq	$62, %r13
	ja	.L104
	.loc 1 132 917 discriminator 37 view .LVU200
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 132 888 discriminator 37 view .LVU201
	movq	32(%rdx), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L19:
	.loc 1 132 836 discriminator 40 view .LVU202
	addq	%rcx, %r8
	.loc 1 132 746 discriminator 40 view .LVU203
	orq	%r11, %r8
	movq	$-128, %rbx
	subq	%rsi, %rbx
	.loc 1 132 982 discriminator 40 view .LVU204
	cmpq	$63, %rbx
	ja	.L105
	.loc 1 132 1009 discriminator 41 view .LVU205
	leal	-128(%rax), %ecx
	.loc 1 132 982 discriminator 41 view .LVU206
	movq	40(%rdx), %rbp
	salq	%cl, %rbp
.L20:
	.loc 1 132 982 discriminator 41 view .LVU207
	movq	$-65, %r11
	subq	%rsi, %r11
	.loc 1 132 1071 discriminator 44 view .LVU208
	cmpq	$62, %r11
	ja	.L106
	.loc 1 132 1097 discriminator 45 view .LVU209
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 132 1071 discriminator 45 view .LVU210
	movq	40(%rdx), %r14
	shrq	%cl, %r14
	movq	%r14, %rcx
.L21:
	.loc 1 132 1017 discriminator 48 view .LVU211
	addq	%rbp, %rcx
	.loc 1 132 928 discriminator 48 view .LVU212
	orq	%rcx, %r8
	.loc 1 132 562 discriminator 48 view .LVU213
	movq	%r8, 24(%rdi)
	.loc 1 132 1109 is_stmt 1 discriminator 48 view .LVU214
	.loc 1 132 1170 is_stmt 0 discriminator 48 view .LVU215
	cmpq	$63, %rax
	ja	.L107
	.loc 1 132 1170 discriminator 49 view .LVU216
	movq	16(%rdx), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L22:
	.loc 1 132 1265 discriminator 52 view .LVU217
	cmpq	$62, %r9
	ja	.L108
	.loc 1 132 1265 discriminator 53 view .LVU218
	movq	16(%rdx), %r14
	movl	%esi, %ecx
	shrq	%cl, %r14
	movq	%r14, %rcx
.L23:
	.loc 1 132 1215 discriminator 56 view .LVU219
	addq	%rcx, %r8
	.loc 1 132 1364 discriminator 56 view .LVU220
	cmpq	$63, %r10
	ja	.L109
	.loc 1 132 1399 discriminator 57 view .LVU221
	leal	-64(%rax), %ecx
	.loc 1 132 1364 discriminator 57 view .LVU222
	movq	24(%rdx), %rbp
	salq	%cl, %rbp
.L24:
	.loc 1 132 1458 discriminator 60 view .LVU223
	cmpq	$62, %r13
	ja	.L110
	.loc 1 132 1491 discriminator 61 view .LVU224
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 132 1458 discriminator 61 view .LVU225
	movq	24(%rdx), %r14
	shrq	%cl, %r14
	movq	%r14, %rcx
.L25:
	.loc 1 132 1406 discriminator 64 view .LVU226
	addq	%rcx, %rbp
	.loc 1 132 1312 discriminator 64 view .LVU227
	orq	%r8, %rbp
	.loc 1 132 1556 discriminator 64 view .LVU228
	cmpq	$63, %rbx
	ja	.L111
	.loc 1 132 1587 discriminator 65 view .LVU229
	leal	-128(%rax), %ecx
	.loc 1 132 1556 discriminator 65 view .LVU230
	movq	32(%rdx), %r8
	salq	%cl, %r8
.L26:
	.loc 1 132 1649 discriminator 68 view .LVU231
	cmpq	$62, %r11
	ja	.L112
	.loc 1 132 1679 discriminator 69 view .LVU232
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 132 1649 discriminator 69 view .LVU233
	movq	32(%rdx), %r14
	shrq	%cl, %r14
	movq	%r14, %rcx
.L27:
	.loc 1 132 1595 discriminator 72 view .LVU234
	addq	%rcx, %r8
	.loc 1 132 1502 discriminator 72 view .LVU235
	orq	%rbp, %r8
	movq	$-192, %r12
	subq	%rsi, %r12
	.loc 1 132 1744 discriminator 72 view .LVU236
	cmpq	$63, %r12
	ja	.L113
	.loc 1 132 1771 discriminator 73 view .LVU237
	leal	-192(%rax), %ecx
	.loc 1 132 1744 discriminator 73 view .LVU238
	movq	40(%rdx), %r14
	salq	%cl, %r14
.L28:
	.loc 1 132 1744 discriminator 73 view .LVU239
	movq	$-129, %rbp
	subq	%rsi, %rbp
	.loc 1 132 1833 discriminator 76 view .LVU240
	cmpq	$62, %rbp
	ja	.L114
	.loc 1 132 1859 discriminator 77 view .LVU241
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 132 1833 discriminator 77 view .LVU242
	movq	40(%rdx), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L29:
	.loc 1 132 1779 discriminator 80 view .LVU243
	addq	%r14, %rcx
	.loc 1 132 1690 discriminator 80 view .LVU244
	orq	%rcx, %r8
	.loc 1 132 1120 discriminator 80 view .LVU245
	movq	%r8, 16(%rdi)
	.loc 1 132 1871 is_stmt 1 discriminator 80 view .LVU246
	.loc 1 132 1932 is_stmt 0 discriminator 80 view .LVU247
	cmpq	$63, %rax
	ja	.L115
	.loc 1 132 1932 discriminator 81 view .LVU248
	movq	8(%rdx), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L30:
	.loc 1 132 2031 discriminator 84 view .LVU249
	cmpq	$62, %r9
	ja	.L116
	.loc 1 132 2031 discriminator 85 view .LVU250
	movq	8(%rdx), %r14
	movl	%esi, %ecx
	shrq	%cl, %r14
	movq	%r14, %rcx
.L31:
	.loc 1 132 1981 discriminator 88 view .LVU251
	addq	%rcx, %r8
	.loc 1 132 2134 discriminator 88 view .LVU252
	cmpq	$63, %r10
	ja	.L117
	.loc 1 132 2173 discriminator 89 view .LVU253
	leal	-64(%rax), %ecx
	.loc 1 132 2134 discriminator 89 view .LVU254
	movq	16(%rdx), %r14
	salq	%cl, %r14
.L32:
	.loc 1 132 2232 discriminator 92 view .LVU255
	cmpq	$62, %r13
	ja	.L118
	.loc 1 132 2269 discriminator 93 view .LVU256
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 132 2232 discriminator 93 view .LVU257
	movq	16(%rdx), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L33:
	.loc 1 132 2180 discriminator 96 view .LVU258
	addq	%r14, %rcx
	.loc 1 132 2082 discriminator 96 view .LVU259
	orq	%rcx, %r8
	.loc 1 132 2334 discriminator 96 view .LVU260
	cmpq	$63, %rbx
	ja	.L119
	.loc 1 132 2369 discriminator 97 view .LVU261
	leal	-128(%rax), %ecx
	.loc 1 132 2334 discriminator 97 view .LVU262
	movq	24(%rdx), %r14
	salq	%cl, %r14
.L34:
	.loc 1 132 2431 discriminator 100 view .LVU263
	cmpq	$62, %r11
	ja	.L120
	.loc 1 132 2465 discriminator 101 view .LVU264
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 132 2431 discriminator 101 view .LVU265
	movq	24(%rdx), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L35:
	.loc 1 132 2377 discriminator 104 view .LVU266
	addq	%r14, %rcx
	.loc 1 132 2280 discriminator 104 view .LVU267
	orq	%rcx, %r8
	.loc 1 132 2530 discriminator 104 view .LVU268
	cmpq	$63, %r12
	ja	.L121
	.loc 1 132 2561 discriminator 105 view .LVU269
	leal	-192(%rax), %ecx
	.loc 1 132 2530 discriminator 105 view .LVU270
	movq	32(%rdx), %r14
	salq	%cl, %r14
.L36:
	.loc 1 132 2623 discriminator 108 view .LVU271
	cmpq	$62, %rbp
	ja	.L122
	.loc 1 132 2653 discriminator 109 view .LVU272
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 132 2623 discriminator 109 view .LVU273
	movq	32(%rdx), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L37:
	.loc 1 132 2569 discriminator 112 view .LVU274
	addq	%r14, %rcx
	.loc 1 132 2476 discriminator 112 view .LVU275
	orq	%rcx, %r8
	movq	%r8, -16(%rsp)
	movq	$-256, %r15
	subq	%rsi, %r15
	.loc 1 132 2718 discriminator 112 view .LVU276
	cmpq	$63, %r15
	ja	.L123
	.loc 1 132 2718 discriminator 113 view .LVU277
	movq	40(%rdx), %r14
	movl	%eax, %ecx
	salq	%cl, %r14
	movq	%r14, -8(%rsp)
.L38:
	.loc 1 132 2718 discriminator 113 view .LVU278
	movq	$-193, %r14
	subq	%rsi, %r14
	.loc 1 132 2807 discriminator 116 view .LVU279
	cmpq	$62, %r14
	ja	.L124
	.loc 1 132 2833 discriminator 117 view .LVU280
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 132 2807 discriminator 117 view .LVU281
	movq	40(%rdx), %r8
	shrq	%cl, %r8
	movq	%r8, %rcx
.L39:
	.loc 1 132 2753 discriminator 120 view .LVU282
	addq	-8(%rsp), %rcx
	.loc 1 132 2664 discriminator 120 view .LVU283
	movq	-16(%rsp), %r8
	orq	%rcx, %r8
	.loc 1 132 1882 discriminator 120 view .LVU284
	movq	%r8, 8(%rdi)
	.loc 1 132 2845 is_stmt 1 discriminator 120 view .LVU285
	.loc 1 132 2906 is_stmt 0 discriminator 120 view .LVU286
	cmpq	$63, %rax
	ja	.L125
	.loc 1 132 2906 discriminator 121 view .LVU287
	movq	(%rdx), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L40:
	.loc 1 132 3005 discriminator 124 view .LVU288
	cmpq	$62, %r9
	ja	.L126
	.loc 1 132 3005 discriminator 125 view .LVU289
	movq	(%rdx), %r9
	movl	%esi, %ecx
	shrq	%cl, %r9
.L41:
	.loc 1 132 2955 discriminator 128 view .LVU290
	addq	%r8, %r9
	.loc 1 132 3108 discriminator 128 view .LVU291
	cmpq	$63, %r10
	ja	.L127
	.loc 1 132 3147 discriminator 129 view .LVU292
	leal	-64(%rax), %ecx
	.loc 1 132 3108 discriminator 129 view .LVU293
	movq	8(%rdx), %r8
	salq	%cl, %r8
.L42:
	.loc 1 132 3206 discriminator 132 view .LVU294
	cmpq	$62, %r13
	ja	.L128
	.loc 1 132 3243 discriminator 133 view .LVU295
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 132 3206 discriminator 133 view .LVU296
	movq	8(%rdx), %r10
	shrq	%cl, %r10
	movq	%r10, %rcx
.L43:
	.loc 1 132 3154 discriminator 136 view .LVU297
	addq	%rcx, %r8
	.loc 1 132 3056 discriminator 136 view .LVU298
	orq	%r9, %r8
	.loc 1 132 3308 discriminator 136 view .LVU299
	cmpq	$63, %rbx
	ja	.L129
	.loc 1 132 3343 discriminator 137 view .LVU300
	leal	-128(%rax), %ecx
	.loc 1 132 3308 discriminator 137 view .LVU301
	movq	16(%rdx), %r10
	salq	%cl, %r10
.L44:
	.loc 1 132 3405 discriminator 140 view .LVU302
	cmpq	$62, %r11
	ja	.L130
	.loc 1 132 3439 discriminator 141 view .LVU303
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 132 3405 discriminator 141 view .LVU304
	movq	16(%rdx), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L45:
	.loc 1 132 3351 discriminator 144 view .LVU305
	addq	%rcx, %r10
	.loc 1 132 3254 discriminator 144 view .LVU306
	orq	%r8, %r10
	.loc 1 132 3504 discriminator 144 view .LVU307
	cmpq	$63, %r12
	ja	.L131
	.loc 1 132 3535 discriminator 145 view .LVU308
	leal	-192(%rax), %ecx
	.loc 1 132 3504 discriminator 145 view .LVU309
	movq	24(%rdx), %r9
	salq	%cl, %r9
.L46:
	.loc 1 132 3597 discriminator 148 view .LVU310
	cmpq	$62, %rbp
	ja	.L132
	.loc 1 132 3627 discriminator 149 view .LVU311
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 132 3597 discriminator 149 view .LVU312
	movq	24(%rdx), %r8
	shrq	%cl, %r8
.L47:
	.loc 1 132 3543 discriminator 152 view .LVU313
	addq	%r8, %r9
	.loc 1 132 3450 discriminator 152 view .LVU314
	orq	%r9, %r10
	movq	%r10, %r8
	.loc 1 132 3692 discriminator 152 view .LVU315
	cmpq	$63, %r15
	ja	.L133
	.loc 1 132 3692 discriminator 153 view .LVU316
	movq	32(%rdx), %r9
	movl	%eax, %ecx
	salq	%cl, %r9
.L48:
	.loc 1 132 3781 discriminator 156 view .LVU317
	cmpq	$62, %r14
	ja	.L134
	.loc 1 132 3807 discriminator 157 view .LVU318
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 132 3781 discriminator 157 view .LVU319
	movq	32(%rdx), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L49:
	.loc 1 132 3727 discriminator 160 view .LVU320
	addq	%rcx, %r9
	.loc 1 132 3638 discriminator 160 view .LVU321
	orq	%r9, %r8
	.loc 1 132 3872 discriminator 160 view .LVU322
	movq	$-320, %rcx
	subq	%rsi, %rcx
	cmpq	$63, %rcx
	ja	.L135
	.loc 1 132 3895 discriminator 161 view .LVU323
	leal	-320(%rax), %ecx
	.loc 1 132 3872 discriminator 161 view .LVU324
	movq	40(%rdx), %r9
	salq	%cl, %r9
.L50:
	.loc 1 132 3957 discriminator 164 view .LVU325
	movq	$-257, %rcx
	subq	%rsi, %rcx
	cmpq	$62, %rcx
	ja	.L136
	.loc 1 132 3964 discriminator 165 view .LVU326
	movq	40(%rdx), %rdx
.LVL13:
	.loc 1 132 3979 discriminator 165 view .LVU327
	movl	$320, %ecx
	subl	%eax, %ecx
	.loc 1 132 3957 discriminator 165 view .LVU328
	movq	%rdx, %rax
.LVL14:
	.loc 1 132 3957 discriminator 165 view .LVU329
	shrq	%cl, %rax
.L51:
	.loc 1 132 3903 discriminator 168 view .LVU330
	addq	%rax, %r9
	.loc 1 132 3818 discriminator 168 view .LVU331
	orq	%r8, %r9
	.loc 1 132 2856 discriminator 168 view .LVU332
	movq	%r9, (%rdi)
	.loc 1 132 3990 is_stmt 1 discriminator 168 view .LVU333
	jmp	.L52
.LVL15:
.L95:
	.loc 1 132 70 is_stmt 0 view .LVU334
	movl	$0, %r8d
	jmp	.L10
.L96:
	.loc 1 132 153 view .LVU335
	movl	$0, %ecx
	jmp	.L11
.L97:
	.loc 1 132 250 view .LVU336
	movl	$0, %r8d
	jmp	.L12
.L98:
	.loc 1 132 337 view .LVU337
	movl	$0, %ecx
	jmp	.L13
.L99:
	.loc 1 132 428 view .LVU338
	movl	$0, %r11d
	jmp	.L14
.L100:
	.loc 1 132 514 view .LVU339
	movl	$0, %ecx
	jmp	.L15
.L101:
	.loc 1 132 612 view .LVU340
	movl	$0, %r11d
	jmp	.L16
.L102:
	.loc 1 132 703 view .LVU341
	movl	$0, %ecx
	jmp	.L17
.L103:
	.loc 1 132 798 view .LVU342
	movl	$0, %r8d
	jmp	.L18
.L104:
	.loc 1 132 888 view .LVU343
	movl	$0, %ecx
	jmp	.L19
.L105:
	.loc 1 132 982 view .LVU344
	movl	$0, %ebp
	jmp	.L20
.L106:
	.loc 1 132 1071 view .LVU345
	movl	$0, %ecx
	jmp	.L21
.L107:
	.loc 1 132 1170 view .LVU346
	movl	$0, %r8d
	jmp	.L22
.L108:
	.loc 1 132 1265 view .LVU347
	movl	$0, %ecx
	jmp	.L23
.L109:
	.loc 1 132 1364 view .LVU348
	movl	$0, %ebp
	jmp	.L24
.L110:
	.loc 1 132 1458 view .LVU349
	movl	$0, %ecx
	jmp	.L25
.L111:
	.loc 1 132 1556 view .LVU350
	movl	$0, %r8d
	jmp	.L26
.L112:
	.loc 1 132 1649 view .LVU351
	movl	$0, %ecx
	jmp	.L27
.L113:
	.loc 1 132 1744 view .LVU352
	movl	$0, %r14d
	jmp	.L28
.L114:
	.loc 1 132 1833 view .LVU353
	movl	$0, %ecx
	jmp	.L29
.L115:
	.loc 1 132 1932 view .LVU354
	movl	$0, %r8d
	jmp	.L30
.L116:
	.loc 1 132 2031 view .LVU355
	movl	$0, %ecx
	jmp	.L31
.L117:
	.loc 1 132 2134 view .LVU356
	movl	$0, %r14d
	jmp	.L32
.L118:
	.loc 1 132 2232 view .LVU357
	movl	$0, %ecx
	jmp	.L33
.L119:
	.loc 1 132 2334 view .LVU358
	movl	$0, %r14d
	jmp	.L34
.L120:
	.loc 1 132 2431 view .LVU359
	movl	$0, %ecx
	jmp	.L35
.L121:
	.loc 1 132 2530 view .LVU360
	movl	$0, %r14d
	jmp	.L36
.L122:
	.loc 1 132 2623 view .LVU361
	movl	$0, %ecx
	jmp	.L37
.L123:
	.loc 1 132 2718 view .LVU362
	movq	$0, -8(%rsp)
	jmp	.L38
.L124:
	.loc 1 132 2807 view .LVU363
	movl	$0, %ecx
	jmp	.L39
.L125:
	.loc 1 132 2906 view .LVU364
	movl	$0, %r8d
	jmp	.L40
.L126:
	.loc 1 132 3005 view .LVU365
	movl	$0, %r9d
	jmp	.L41
.L127:
	.loc 1 132 3108 view .LVU366
	movl	$0, %r8d
	jmp	.L42
.L128:
	.loc 1 132 3206 view .LVU367
	movl	$0, %ecx
	jmp	.L43
.L129:
	.loc 1 132 3308 view .LVU368
	movl	$0, %r10d
	jmp	.L44
.L130:
	.loc 1 132 3405 view .LVU369
	movl	$0, %ecx
	jmp	.L45
.L131:
	.loc 1 132 3504 view .LVU370
	movl	$0, %r9d
	jmp	.L46
.L132:
	.loc 1 132 3597 view .LVU371
	movl	$0, %r8d
	jmp	.L47
.L133:
	.loc 1 132 3692 view .LVU372
	movl	$0, %r9d
	jmp	.L48
.L134:
	.loc 1 132 3781 view .LVU373
	movl	$0, %ecx
	jmp	.L49
.L135:
	.loc 1 132 3872 view .LVU374
	movl	$0, %r9d
	jmp	.L50
.L136:
	.loc 1 132 3957 view .LVU375
	movl	$0, %eax
.LVL16:
	.loc 1 132 3957 view .LVU376
	jmp	.L51
.LVL17:
.L137:
	.loc 1 136 70 view .LVU377
	movl	$0, %eax
.L53:
	.loc 1 136 107 discriminator 4 view .LVU378
	leaq	63(%rsi), %r14
	.loc 1 136 155 discriminator 4 view .LVU379
	cmpq	$-63, %rsi
	jb	.L138
	.loc 1 136 174 discriminator 5 view .LVU380
	movl	%esi, %ecx
	negl	%ecx
	.loc 1 136 155 discriminator 5 view .LVU381
	movq	(%rdx), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L54
.L138:
	.loc 1 136 155 view .LVU382
	movl	$0, %ecx
.L54:
	.loc 1 136 105 discriminator 8 view .LVU383
	addq	%rcx, %rax
	.loc 1 136 20 discriminator 8 view .LVU384
	movq	%rax, (%rdi)
	.loc 1 136 193 is_stmt 1 discriminator 8 view .LVU385
	.loc 1 136 254 is_stmt 0 discriminator 8 view .LVU386
	cmpq	$63, %rsi
	ja	.L139
	.loc 1 136 254 discriminator 9 view .LVU387
	movq	8(%rdx), %rax
	movl	%esi, %ecx
	shrq	%cl, %rax
	jmp	.L55
.L139:
	.loc 1 136 254 view .LVU388
	movl	$0, %eax
.L55:
	.loc 1 136 343 discriminator 12 view .LVU389
	cmpq	$62, %r14
	ja	.L140
	.loc 1 136 366 discriminator 13 view .LVU390
	movl	%esi, %ecx
	negl	%ecx
	.loc 1 136 343 discriminator 13 view .LVU391
	movq	8(%rdx), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L56
.L140:
	.loc 1 136 343 view .LVU392
	movl	$0, %ecx
.L56:
	.loc 1 136 293 discriminator 16 view .LVU393
	addq	%rcx, %rax
	.loc 1 136 387 discriminator 16 view .LVU394
	leaq	-64(%rsi), %r9
	.loc 1 136 436 discriminator 16 view .LVU395
	cmpq	$63, %r9
	ja	.L141
	.loc 1 136 465 discriminator 17 view .LVU396
	leal	-64(%rsi), %ecx
	.loc 1 136 436 discriminator 17 view .LVU397
	movq	(%rdx), %r10
	shrq	%cl, %r10
	jmp	.L57
.L141:
	.loc 1 136 436 view .LVU398
	movl	$0, %r10d
.L57:
	.loc 1 136 474 discriminator 20 view .LVU399
	leaq	-1(%rsi), %r8
	.loc 1 136 524 discriminator 20 view .LVU400
	cmpq	$62, %r8
	ja	.L142
	.loc 1 136 551 discriminator 21 view .LVU401
	movl	$64, %ecx
	subl	%esi, %ecx
	.loc 1 136 524 discriminator 21 view .LVU402
	movq	(%rdx), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L58
.L142:
	.loc 1 136 524 view .LVU403
	movl	$0, %ecx
.L58:
	.loc 1 136 472 discriminator 24 view .LVU404
	addq	%rcx, %r10
	.loc 1 136 384 discriminator 24 view .LVU405
	orq	%r10, %rax
	.loc 1 136 204 discriminator 24 view .LVU406
	movq	%rax, 8(%rdi)
	.loc 1 136 563 is_stmt 1 discriminator 24 view .LVU407
	.loc 1 136 624 is_stmt 0 discriminator 24 view .LVU408
	cmpq	$63, %rsi
	ja	.L143
	.loc 1 136 624 discriminator 25 view .LVU409
	movq	16(%rdx), %rax
	movl	%esi, %ecx
	shrq	%cl, %rax
	jmp	.L59
.L143:
	.loc 1 136 624 view .LVU410
	movl	$0, %eax
.L59:
	.loc 1 136 717 discriminator 28 view .LVU411
	cmpq	$62, %r14
	ja	.L144
	.loc 1 136 744 discriminator 29 view .LVU412
	movl	%esi, %ecx
	negl	%ecx
	.loc 1 136 717 discriminator 29 view .LVU413
	movq	16(%rdx), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L60
.L144:
	.loc 1 136 717 view .LVU414
	movl	$0, %ecx
.L60:
	.loc 1 136 667 discriminator 32 view .LVU415
	addq	%rcx, %rax
	.loc 1 136 814 discriminator 32 view .LVU416
	cmpq	$63, %r9
	ja	.L145
	.loc 1 136 847 discriminator 33 view .LVU417
	leal	-64(%rsi), %ecx
	.loc 1 136 814 discriminator 33 view .LVU418
	movq	8(%rdx), %r10
	shrq	%cl, %r10
	jmp	.L61
.L145:
	.loc 1 136 814 view .LVU419
	movl	$0, %r10d
.L61:
	.loc 1 136 906 discriminator 36 view .LVU420
	cmpq	$62, %r8
	ja	.L146
	.loc 1 136 937 discriminator 37 view .LVU421
	movl	$64, %ecx
	subl	%esi, %ecx
	.loc 1 136 906 discriminator 37 view .LVU422
	movq	8(%rdx), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L62
.L146:
	.loc 1 136 906 view .LVU423
	movl	$0, %ecx
.L62:
	.loc 1 136 854 discriminator 40 view .LVU424
	addq	%rcx, %r10
	.loc 1 136 762 discriminator 40 view .LVU425
	orq	%r10, %rax
	.loc 1 136 951 discriminator 40 view .LVU426
	leaq	-128(%rsi), %r11
	.loc 1 136 1002 discriminator 40 view .LVU427
	cmpq	$63, %r11
	ja	.L147
	.loc 1 136 1031 discriminator 41 view .LVU428
	leal	-128(%rsi), %ecx
	.loc 1 136 1002 discriminator 41 view .LVU429
	movq	(%rdx), %rbx
	shrq	%cl, %rbx
	jmp	.L63
.L147:
	.loc 1 136 1002 view .LVU430
	movl	$0, %ebx
.L63:
	.loc 1 136 1041 discriminator 44 view .LVU431
	leaq	-65(%rsi), %r10
	.loc 1 136 1093 discriminator 44 view .LVU432
	cmpq	$62, %r10
	ja	.L148
	.loc 1 136 1121 discriminator 45 view .LVU433
	movl	$128, %ecx
	subl	%esi, %ecx
	.loc 1 136 1093 discriminator 45 view .LVU434
	movq	(%rdx), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L64
.L148:
	.loc 1 136 1093 view .LVU435
	movl	$0, %ecx
.L64:
	.loc 1 136 1039 discriminator 48 view .LVU436
	addq	%rcx, %rbx
	.loc 1 136 948 discriminator 48 view .LVU437
	orq	%rax, %rbx
	.loc 1 136 574 discriminator 48 view .LVU438
	movq	%rbx, 16(%rdi)
	.loc 1 136 1133 is_stmt 1 discriminator 48 view .LVU439
	.loc 1 136 1194 is_stmt 0 discriminator 48 view .LVU440
	cmpq	$63, %rsi
	ja	.L149
	.loc 1 136 1194 discriminator 49 view .LVU441
	movq	24(%rdx), %rbx
	movl	%esi, %ecx
	shrq	%cl, %rbx
	jmp	.L65
.L149:
	.loc 1 136 1194 view .LVU442
	movl	$0, %ebx
.L65:
	.loc 1 136 1291 discriminator 52 view .LVU443
	cmpq	$62, %r14
	ja	.L150
	.loc 1 136 1322 discriminator 53 view .LVU444
	movl	%esi, %ecx
	negl	%ecx
	.loc 1 136 1291 discriminator 53 view .LVU445
	movq	24(%rdx), %rax
	salq	%cl, %rax
	jmp	.L66
.L150:
	.loc 1 136 1291 view .LVU446
	movl	$0, %eax
.L66:
	.loc 1 136 1241 discriminator 56 view .LVU447
	addq	%rbx, %rax
	.loc 1 136 1392 discriminator 56 view .LVU448
	cmpq	$63, %r9
	ja	.L151
	.loc 1 136 1429 discriminator 57 view .LVU449
	leal	-64(%rsi), %ecx
	.loc 1 136 1392 discriminator 57 view .LVU450
	movq	16(%rdx), %rbx
	shrq	%cl, %rbx
	jmp	.L67
.L151:
	.loc 1 136 1392 view .LVU451
	movl	$0, %ebx
.L67:
	.loc 1 136 1488 discriminator 60 view .LVU452
	cmpq	$62, %r8
	ja	.L152
	.loc 1 136 1523 discriminator 61 view .LVU453
	movl	$64, %ecx
	subl	%esi, %ecx
	.loc 1 136 1488 discriminator 61 view .LVU454
	movq	16(%rdx), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L68
.L152:
	.loc 1 136 1488 view .LVU455
	movl	$0, %ecx
.L68:
	.loc 1 136 1436 discriminator 64 view .LVU456
	addq	%rcx, %rbx
	.loc 1 136 1340 discriminator 64 view .LVU457
	orq	%rbx, %rax
	.loc 1 136 1588 discriminator 64 view .LVU458
	cmpq	$63, %r11
	ja	.L153
	.loc 1 136 1621 discriminator 65 view .LVU459
	leal	-128(%rsi), %ecx
	.loc 1 136 1588 discriminator 65 view .LVU460
	movq	8(%rdx), %rbx
	shrq	%cl, %rbx
	jmp	.L69
.L153:
	.loc 1 136 1588 view .LVU461
	movl	$0, %ebx
.L69:
	.loc 1 136 1683 discriminator 68 view .LVU462
	cmpq	$62, %r10
	ja	.L154
	.loc 1 136 1715 discriminator 69 view .LVU463
	movl	$128, %ecx
	subl	%esi, %ecx
	.loc 1 136 1683 discriminator 69 view .LVU464
	movq	8(%rdx), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L70
.L154:
	.loc 1 136 1683 view .LVU465
	movl	$0, %ecx
.L70:
	.loc 1 136 1629 discriminator 72 view .LVU466
	addq	%rcx, %rbx
	.loc 1 136 1534 discriminator 72 view .LVU467
	orq	%rbx, %rax
	.loc 1 136 1729 discriminator 72 view .LVU468
	leaq	-192(%rsi), %rbp
	.loc 1 136 1780 discriminator 72 view .LVU469
	cmpq	$63, %rbp
	ja	.L155
	.loc 1 136 1809 discriminator 73 view .LVU470
	leal	-192(%rsi), %ecx
	.loc 1 136 1780 discriminator 73 view .LVU471
	movq	(%rdx), %r12
	shrq	%cl, %r12
	jmp	.L71
.L155:
	.loc 1 136 1780 view .LVU472
	movl	$0, %r12d
.L71:
	.loc 1 136 1819 discriminator 76 view .LVU473
	leaq	-129(%rsi), %rbx
	.loc 1 136 1871 discriminator 76 view .LVU474
	cmpq	$62, %rbx
	ja	.L156
	.loc 1 136 1899 discriminator 77 view .LVU475
	movl	$192, %ecx
	subl	%esi, %ecx
	.loc 1 136 1871 discriminator 77 view .LVU476
	movq	(%rdx), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L72
.L156:
	.loc 1 136 1871 view .LVU477
	movl	$0, %ecx
.L72:
	.loc 1 136 1817 discriminator 80 view .LVU478
	addq	%r12, %rcx
	.loc 1 136 1726 discriminator 80 view .LVU479
	orq	%rcx, %rax
	.loc 1 136 1144 discriminator 80 view .LVU480
	movq	%rax, 24(%rdi)
	.loc 1 136 1911 is_stmt 1 discriminator 80 view .LVU481
	.loc 1 136 1972 is_stmt 0 discriminator 80 view .LVU482
	cmpq	$63, %rsi
	ja	.L157
	.loc 1 136 1972 discriminator 81 view .LVU483
	movq	32(%rdx), %r12
	movl	%esi, %ecx
	shrq	%cl, %r12
	jmp	.L73
.L157:
	.loc 1 136 1972 view .LVU484
	movl	$0, %r12d
.L73:
	.loc 1 136 2073 discriminator 84 view .LVU485
	cmpq	$62, %r14
	ja	.L158
	.loc 1 136 2108 discriminator 85 view .LVU486
	movl	%esi, %ecx
	negl	%ecx
	.loc 1 136 2073 discriminator 85 view .LVU487
	movq	32(%rdx), %rax
	salq	%cl, %rax
	jmp	.L74
.L158:
	.loc 1 136 2073 view .LVU488
	movl	$0, %eax
.L74:
	.loc 1 136 2023 discriminator 88 view .LVU489
	addq	%r12, %rax
	.loc 1 136 2178 discriminator 88 view .LVU490
	cmpq	$63, %r9
	ja	.L159
	.loc 1 136 2219 discriminator 89 view .LVU491
	leal	-64(%rsi), %ecx
	.loc 1 136 2178 discriminator 89 view .LVU492
	movq	24(%rdx), %r13
	shrq	%cl, %r13
	jmp	.L75
.L159:
	.loc 1 136 2178 view .LVU493
	movl	$0, %r13d
.L75:
	.loc 1 136 2278 discriminator 92 view .LVU494
	cmpq	$62, %r8
	ja	.L160
	.loc 1 136 2317 discriminator 93 view .LVU495
	movl	$64, %ecx
	subl	%esi, %ecx
	.loc 1 136 2278 discriminator 93 view .LVU496
	movq	24(%rdx), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L76
.L160:
	.loc 1 136 2278 view .LVU497
	movl	$0, %ecx
.L76:
	.loc 1 136 2226 discriminator 96 view .LVU498
	addq	%r13, %rcx
	.loc 1 136 2126 discriminator 96 view .LVU499
	orq	%rcx, %rax
	.loc 1 136 2382 discriminator 96 view .LVU500
	cmpq	$63, %r11
	ja	.L161
	.loc 1 136 2419 discriminator 97 view .LVU501
	leal	-128(%rsi), %ecx
	.loc 1 136 2382 discriminator 97 view .LVU502
	movq	16(%rdx), %r12
	shrq	%cl, %r12
	jmp	.L77
.L161:
	.loc 1 136 2382 view .LVU503
	movl	$0, %r12d
.L77:
	.loc 1 136 2481 discriminator 100 view .LVU504
	cmpq	$62, %r10
	ja	.L162
	.loc 1 136 2517 discriminator 101 view .LVU505
	movl	$128, %ecx
	subl	%esi, %ecx
	.loc 1 136 2481 discriminator 101 view .LVU506
	movq	16(%rdx), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L78
.L162:
	.loc 1 136 2481 view .LVU507
	movl	$0, %ecx
.L78:
	.loc 1 136 2427 discriminator 104 view .LVU508
	addq	%r12, %rcx
	.loc 1 136 2328 discriminator 104 view .LVU509
	orq	%rcx, %rax
	.loc 1 136 2582 discriminator 104 view .LVU510
	cmpq	$63, %rbp
	ja	.L163
	.loc 1 136 2615 discriminator 105 view .LVU511
	leal	-192(%rsi), %ecx
	.loc 1 136 2582 discriminator 105 view .LVU512
	movq	8(%rdx), %r12
	shrq	%cl, %r12
	jmp	.L79
.L163:
	.loc 1 136 2582 view .LVU513
	movl	$0, %r12d
.L79:
	.loc 1 136 2677 discriminator 108 view .LVU514
	cmpq	$62, %rbx
	ja	.L164
	.loc 1 136 2709 discriminator 109 view .LVU515
	movl	$192, %ecx
	subl	%esi, %ecx
	.loc 1 136 2677 discriminator 109 view .LVU516
	movq	8(%rdx), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L80
.L164:
	.loc 1 136 2677 view .LVU517
	movl	$0, %ecx
.L80:
	.loc 1 136 2623 discriminator 112 view .LVU518
	addq	%r12, %rcx
	.loc 1 136 2528 discriminator 112 view .LVU519
	orq	%rcx, %rax
	movq	%rax, -16(%rsp)
	.loc 1 136 2723 discriminator 112 view .LVU520
	leaq	-256(%rsi), %r13
	.loc 1 136 2774 discriminator 112 view .LVU521
	cmpq	$63, %r13
	ja	.L165
	.loc 1 136 2774 discriminator 113 view .LVU522
	movq	(%rdx), %r15
	movl	%esi, %ecx
	shrq	%cl, %r15
	jmp	.L81
.L165:
	.loc 1 136 2774 view .LVU523
	movl	$0, %r15d
.L81:
	.loc 1 136 2813 discriminator 116 view .LVU524
	leaq	-193(%rsi), %r12
	.loc 1 136 2865 discriminator 116 view .LVU525
	cmpq	$62, %r12
	ja	.L166
	.loc 1 136 2893 discriminator 117 view .LVU526
	movl	$256, %ecx
	subl	%esi, %ecx
	.loc 1 136 2865 discriminator 117 view .LVU527
	movq	(%rdx), %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	jmp	.L82
.L166:
	.loc 1 136 2865 view .LVU528
	movl	$0, %ecx
.L82:
	.loc 1 136 2811 discriminator 120 view .LVU529
	addq	%r15, %rcx
	.loc 1 136 2720 discriminator 120 view .LVU530
	movq	-16(%rsp), %rax
	orq	%rcx, %rax
	.loc 1 136 1922 discriminator 120 view .LVU531
	movq	%rax, 32(%rdi)
	.loc 1 136 2905 is_stmt 1 discriminator 120 view .LVU532
	.loc 1 136 2966 is_stmt 0 discriminator 120 view .LVU533
	cmpq	$63, %rsi
	ja	.L167
	.loc 1 136 2966 discriminator 121 view .LVU534
	movq	40(%rdx), %r15
	movl	%esi, %ecx
	shrq	%cl, %r15
	jmp	.L83
.L167:
	.loc 1 136 2966 view .LVU535
	movl	$0, %r15d
.L83:
	.loc 1 136 3067 discriminator 124 view .LVU536
	cmpq	$62, %r14
	ja	.L168
	.loc 1 136 3102 discriminator 125 view .LVU537
	movl	%esi, %ecx
	negl	%ecx
	.loc 1 136 3067 discriminator 125 view .LVU538
	movq	40(%rdx), %rax
	salq	%cl, %rax
	jmp	.L84
.L168:
	.loc 1 136 3067 view .LVU539
	movl	$0, %eax
.L84:
	.loc 1 136 3017 discriminator 128 view .LVU540
	leaq	(%r15,%rax), %r14
	.loc 1 136 3172 discriminator 128 view .LVU541
	cmpq	$63, %r9
	ja	.L169
	.loc 1 136 3213 discriminator 129 view .LVU542
	leal	-64(%rsi), %ecx
	.loc 1 136 3172 discriminator 129 view .LVU543
	movq	32(%rdx), %rax
	shrq	%cl, %rax
	jmp	.L85
.L169:
	.loc 1 136 3172 view .LVU544
	movl	$0, %eax
.L85:
	.loc 1 136 3272 discriminator 132 view .LVU545
	cmpq	$62, %r8
	ja	.L170
	.loc 1 136 3311 discriminator 133 view .LVU546
	movl	$64, %ecx
	subl	%esi, %ecx
	.loc 1 136 3272 discriminator 133 view .LVU547
	movq	32(%rdx), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L86
.L170:
	.loc 1 136 3272 view .LVU548
	movl	$0, %ecx
.L86:
	.loc 1 136 3220 discriminator 136 view .LVU549
	addq	%rcx, %rax
	.loc 1 136 3120 discriminator 136 view .LVU550
	orq	%r14, %rax
	.loc 1 136 3376 discriminator 136 view .LVU551
	cmpq	$63, %r11
	ja	.L171
	.loc 1 136 3413 discriminator 137 view .LVU552
	leal	-128(%rsi), %ecx
	.loc 1 136 3376 discriminator 137 view .LVU553
	movq	24(%rdx), %r8
	shrq	%cl, %r8
	jmp	.L87
.L171:
	.loc 1 136 3376 view .LVU554
	movl	$0, %r8d
.L87:
	.loc 1 136 3475 discriminator 140 view .LVU555
	cmpq	$62, %r10
	ja	.L172
	.loc 1 136 3511 discriminator 141 view .LVU556
	movl	$128, %ecx
	subl	%esi, %ecx
	.loc 1 136 3475 discriminator 141 view .LVU557
	movq	24(%rdx), %r11
	salq	%cl, %r11
	movq	%r11, %rcx
	jmp	.L88
.L172:
	.loc 1 136 3475 view .LVU558
	movl	$0, %ecx
.L88:
	.loc 1 136 3421 discriminator 144 view .LVU559
	addq	%rcx, %r8
	.loc 1 136 3322 discriminator 144 view .LVU560
	orq	%r8, %rax
	.loc 1 136 3576 discriminator 144 view .LVU561
	cmpq	$63, %rbp
	ja	.L173
	.loc 1 136 3609 discriminator 145 view .LVU562
	leal	-192(%rsi), %ecx
	.loc 1 136 3576 discriminator 145 view .LVU563
	movq	16(%rdx), %r8
	shrq	%cl, %r8
	jmp	.L89
.L173:
	.loc 1 136 3576 view .LVU564
	movl	$0, %r8d
.L89:
	.loc 1 136 3671 discriminator 148 view .LVU565
	cmpq	$62, %rbx
	ja	.L174
	.loc 1 136 3703 discriminator 149 view .LVU566
	movl	$192, %ecx
	subl	%esi, %ecx
	.loc 1 136 3671 discriminator 149 view .LVU567
	movq	16(%rdx), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L90
.L174:
	.loc 1 136 3671 view .LVU568
	movl	$0, %ecx
.L90:
	.loc 1 136 3617 discriminator 152 view .LVU569
	addq	%rcx, %r8
	.loc 1 136 3522 discriminator 152 view .LVU570
	orq	%r8, %rax
	.loc 1 136 3768 discriminator 152 view .LVU571
	cmpq	$63, %r13
	ja	.L175
	.loc 1 136 3768 discriminator 153 view .LVU572
	movq	8(%rdx), %r8
	movl	%esi, %ecx
	shrq	%cl, %r8
	jmp	.L91
.L175:
	.loc 1 136 3768 view .LVU573
	movl	$0, %r8d
.L91:
	.loc 1 136 3859 discriminator 156 view .LVU574
	cmpq	$62, %r12
	ja	.L176
	.loc 1 136 3887 discriminator 157 view .LVU575
	movl	$256, %ecx
	subl	%esi, %ecx
	.loc 1 136 3859 discriminator 157 view .LVU576
	movq	8(%rdx), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L92
.L176:
	.loc 1 136 3859 view .LVU577
	movl	$0, %ecx
.L92:
	.loc 1 136 3805 discriminator 160 view .LVU578
	addq	%rcx, %r8
	.loc 1 136 3714 discriminator 160 view .LVU579
	orq	%r8, %rax
	.loc 1 136 3901 discriminator 160 view .LVU580
	leaq	-320(%rsi), %rcx
	.loc 1 136 3952 discriminator 160 view .LVU581
	cmpq	$63, %rcx
	ja	.L177
	.loc 1 136 3977 discriminator 161 view .LVU582
	leal	-320(%rsi), %ecx
	.loc 1 136 3952 discriminator 161 view .LVU583
	movq	(%rdx), %r8
	shrq	%cl, %r8
	jmp	.L93
.L177:
	.loc 1 136 3952 view .LVU584
	movl	$0, %r8d
.L93:
	.loc 1 136 3987 discriminator 164 view .LVU585
	leaq	-257(%rsi), %rcx
	.loc 1 136 4039 discriminator 164 view .LVU586
	cmpq	$62, %rcx
	ja	.L178
	.loc 1 136 4047 discriminator 165 view .LVU587
	movq	(%rdx), %rdx
.LVL18:
	.loc 1 136 4063 discriminator 165 view .LVU588
	movl	$320, %ecx
	subl	%esi, %ecx
	.loc 1 136 4039 discriminator 165 view .LVU589
	salq	%cl, %rdx
	jmp	.L94
.LVL19:
.L178:
	.loc 1 136 4039 view .LVU590
	movl	$0, %edx
.LVL20:
.L94:
	.loc 1 136 3985 discriminator 168 view .LVU591
	addq	%rdx, %r8
	.loc 1 136 3898 discriminator 168 view .LVU592
	orq	%r8, %rax
	.loc 1 136 2916 discriminator 168 view .LVU593
	movq	%rax, 40(%rdi)
.LVL21:
.L52:
	.loc 1 136 4074 is_stmt 1 discriminator 169 view .LVU594
	.loc 1 139 5 discriminator 169 view .LVU595
	.loc 1 141 1 is_stmt 0 discriminator 169 view .LVU596
	movq	%rdi, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE29:
	.size	biguint_rsh, .-biguint_rsh
	.globl	biguint_lsh
	.type	biguint_lsh, @function
biguint_lsh:
.LVL22:
.LFB30:
	.loc 1 143 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 143 1 is_stmt 0 view .LVU598
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	.loc 1 144 5 is_stmt 1 view .LVU599
	.loc 1 144 8 is_stmt 0 view .LVU600
	testq	%rsi, %rsi
	js	.L353
	.loc 1 151 9 is_stmt 1 view .LVU601
	.loc 1 151 70 is_stmt 0 view .LVU602
	cmpq	$63, %rsi
	ja	.L310
	.loc 1 151 70 discriminator 1 view .LVU603
	movq	40(%rdx), %rax
	movl	%esi, %ecx
	salq	%cl, %rax
	jmp	.L226
.L353:
	.loc 1 146 9 is_stmt 1 view .LVU604
	.loc 1 146 16 is_stmt 0 view .LVU605
	movq	%rsi, %rax
	negq	%rax
.LVL23:
	.loc 1 147 9 is_stmt 1 view .LVU606
	.loc 1 147 70 is_stmt 0 view .LVU607
	cmpq	$63, %rax
	ja	.L268
	.loc 1 147 70 discriminator 1 view .LVU608
	movq	(%rdx), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L183:
	.loc 1 147 70 discriminator 1 view .LVU609
	movl	$63, %r9d
	subq	%rsi, %r9
	.loc 1 147 155 discriminator 4 view .LVU610
	cmpq	$62, %r9
	ja	.L269
	.loc 1 147 155 discriminator 5 view .LVU611
	movq	(%rdx), %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L184:
	.loc 1 147 105 discriminator 8 view .LVU612
	addq	%rcx, %r8
	.loc 1 147 20 discriminator 8 view .LVU613
	movq	%r8, (%rdi)
	.loc 1 147 193 is_stmt 1 discriminator 8 view .LVU614
	.loc 1 147 254 is_stmt 0 discriminator 8 view .LVU615
	cmpq	$63, %rax
	ja	.L270
	.loc 1 147 254 discriminator 9 view .LVU616
	movq	8(%rdx), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L185:
	.loc 1 147 343 discriminator 12 view .LVU617
	cmpq	$62, %r9
	ja	.L271
	.loc 1 147 343 discriminator 13 view .LVU618
	movq	8(%rdx), %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L186:
	.loc 1 147 293 discriminator 16 view .LVU619
	addq	%rcx, %r8
	movq	$-64, %r10
	subq	%rsi, %r10
	.loc 1 147 436 discriminator 16 view .LVU620
	cmpq	$63, %r10
	ja	.L272
	.loc 1 147 465 discriminator 17 view .LVU621
	leal	-64(%rax), %ecx
	.loc 1 147 436 discriminator 17 view .LVU622
	movq	(%rdx), %r11
	shrq	%cl, %r11
.L187:
	.loc 1 147 436 discriminator 17 view .LVU623
	movq	%rsi, %r13
	notq	%r13
	.loc 1 147 524 discriminator 20 view .LVU624
	cmpq	$62, %r13
	ja	.L273
	.loc 1 147 551 discriminator 21 view .LVU625
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 147 524 discriminator 21 view .LVU626
	movq	(%rdx), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L188:
	.loc 1 147 472 discriminator 24 view .LVU627
	addq	%rcx, %r11
	.loc 1 147 384 discriminator 24 view .LVU628
	orq	%r8, %r11
	.loc 1 147 204 discriminator 24 view .LVU629
	movq	%r11, 8(%rdi)
	.loc 1 147 563 is_stmt 1 discriminator 24 view .LVU630
	.loc 1 147 624 is_stmt 0 discriminator 24 view .LVU631
	cmpq	$63, %rax
	ja	.L274
	.loc 1 147 624 discriminator 25 view .LVU632
	movq	16(%rdx), %r11
	movl	%eax, %ecx
	shrq	%cl, %r11
.L189:
	.loc 1 147 717 discriminator 28 view .LVU633
	cmpq	$62, %r9
	ja	.L275
	.loc 1 147 717 discriminator 29 view .LVU634
	movq	16(%rdx), %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L190:
	.loc 1 147 667 discriminator 32 view .LVU635
	addq	%rcx, %r11
	.loc 1 147 814 discriminator 32 view .LVU636
	cmpq	$63, %r10
	ja	.L276
	.loc 1 147 847 discriminator 33 view .LVU637
	leal	-64(%rax), %ecx
	.loc 1 147 814 discriminator 33 view .LVU638
	movq	8(%rdx), %r8
	shrq	%cl, %r8
.L191:
	.loc 1 147 906 discriminator 36 view .LVU639
	cmpq	$62, %r13
	ja	.L277
	.loc 1 147 937 discriminator 37 view .LVU640
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 147 906 discriminator 37 view .LVU641
	movq	8(%rdx), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L192:
	.loc 1 147 854 discriminator 40 view .LVU642
	addq	%rcx, %r8
	.loc 1 147 762 discriminator 40 view .LVU643
	orq	%r11, %r8
	movq	$-128, %rbx
	subq	%rsi, %rbx
	.loc 1 147 1002 discriminator 40 view .LVU644
	cmpq	$63, %rbx
	ja	.L278
	.loc 1 147 1031 discriminator 41 view .LVU645
	leal	-128(%rax), %ecx
	.loc 1 147 1002 discriminator 41 view .LVU646
	movq	(%rdx), %rbp
	shrq	%cl, %rbp
.L193:
	.loc 1 147 1002 discriminator 41 view .LVU647
	movq	$-65, %r11
	subq	%rsi, %r11
	.loc 1 147 1093 discriminator 44 view .LVU648
	cmpq	$62, %r11
	ja	.L279
	.loc 1 147 1121 discriminator 45 view .LVU649
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 147 1093 discriminator 45 view .LVU650
	movq	(%rdx), %r14
	salq	%cl, %r14
	movq	%r14, %rcx
.L194:
	.loc 1 147 1039 discriminator 48 view .LVU651
	addq	%rbp, %rcx
	.loc 1 147 948 discriminator 48 view .LVU652
	orq	%rcx, %r8
	.loc 1 147 574 discriminator 48 view .LVU653
	movq	%r8, 16(%rdi)
	.loc 1 147 1133 is_stmt 1 discriminator 48 view .LVU654
	.loc 1 147 1194 is_stmt 0 discriminator 48 view .LVU655
	cmpq	$63, %rax
	ja	.L280
	.loc 1 147 1194 discriminator 49 view .LVU656
	movq	24(%rdx), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L195:
	.loc 1 147 1291 discriminator 52 view .LVU657
	cmpq	$62, %r9
	ja	.L281
	.loc 1 147 1291 discriminator 53 view .LVU658
	movq	24(%rdx), %r14
	movl	%esi, %ecx
	salq	%cl, %r14
	movq	%r14, %rcx
.L196:
	.loc 1 147 1241 discriminator 56 view .LVU659
	addq	%rcx, %r8
	.loc 1 147 1392 discriminator 56 view .LVU660
	cmpq	$63, %r10
	ja	.L282
	.loc 1 147 1429 discriminator 57 view .LVU661
	leal	-64(%rax), %ecx
	.loc 1 147 1392 discriminator 57 view .LVU662
	movq	16(%rdx), %rbp
	shrq	%cl, %rbp
.L197:
	.loc 1 147 1488 discriminator 60 view .LVU663
	cmpq	$62, %r13
	ja	.L283
	.loc 1 147 1523 discriminator 61 view .LVU664
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 147 1488 discriminator 61 view .LVU665
	movq	16(%rdx), %r14
	salq	%cl, %r14
	movq	%r14, %rcx
.L198:
	.loc 1 147 1436 discriminator 64 view .LVU666
	addq	%rcx, %rbp
	.loc 1 147 1340 discriminator 64 view .LVU667
	orq	%r8, %rbp
	.loc 1 147 1588 discriminator 64 view .LVU668
	cmpq	$63, %rbx
	ja	.L284
	.loc 1 147 1621 discriminator 65 view .LVU669
	leal	-128(%rax), %ecx
	.loc 1 147 1588 discriminator 65 view .LVU670
	movq	8(%rdx), %r8
	shrq	%cl, %r8
.L199:
	.loc 1 147 1683 discriminator 68 view .LVU671
	cmpq	$62, %r11
	ja	.L285
	.loc 1 147 1715 discriminator 69 view .LVU672
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 147 1683 discriminator 69 view .LVU673
	movq	8(%rdx), %r14
	salq	%cl, %r14
	movq	%r14, %rcx
.L200:
	.loc 1 147 1629 discriminator 72 view .LVU674
	addq	%rcx, %r8
	.loc 1 147 1534 discriminator 72 view .LVU675
	orq	%rbp, %r8
	movq	$-192, %r12
	subq	%rsi, %r12
	.loc 1 147 1780 discriminator 72 view .LVU676
	cmpq	$63, %r12
	ja	.L286
	.loc 1 147 1809 discriminator 73 view .LVU677
	leal	-192(%rax), %ecx
	.loc 1 147 1780 discriminator 73 view .LVU678
	movq	(%rdx), %r14
	shrq	%cl, %r14
.L201:
	.loc 1 147 1780 discriminator 73 view .LVU679
	movq	$-129, %rbp
	subq	%rsi, %rbp
	.loc 1 147 1871 discriminator 76 view .LVU680
	cmpq	$62, %rbp
	ja	.L287
	.loc 1 147 1899 discriminator 77 view .LVU681
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 147 1871 discriminator 77 view .LVU682
	movq	(%rdx), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L202:
	.loc 1 147 1817 discriminator 80 view .LVU683
	addq	%r14, %rcx
	.loc 1 147 1726 discriminator 80 view .LVU684
	orq	%rcx, %r8
	.loc 1 147 1144 discriminator 80 view .LVU685
	movq	%r8, 24(%rdi)
	.loc 1 147 1911 is_stmt 1 discriminator 80 view .LVU686
	.loc 1 147 1972 is_stmt 0 discriminator 80 view .LVU687
	cmpq	$63, %rax
	ja	.L288
	.loc 1 147 1972 discriminator 81 view .LVU688
	movq	32(%rdx), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L203:
	.loc 1 147 2073 discriminator 84 view .LVU689
	cmpq	$62, %r9
	ja	.L289
	.loc 1 147 2073 discriminator 85 view .LVU690
	movq	32(%rdx), %r14
	movl	%esi, %ecx
	salq	%cl, %r14
	movq	%r14, %rcx
.L204:
	.loc 1 147 2023 discriminator 88 view .LVU691
	addq	%rcx, %r8
	.loc 1 147 2178 discriminator 88 view .LVU692
	cmpq	$63, %r10
	ja	.L290
	.loc 1 147 2219 discriminator 89 view .LVU693
	leal	-64(%rax), %ecx
	.loc 1 147 2178 discriminator 89 view .LVU694
	movq	24(%rdx), %r14
	shrq	%cl, %r14
.L205:
	.loc 1 147 2278 discriminator 92 view .LVU695
	cmpq	$62, %r13
	ja	.L291
	.loc 1 147 2317 discriminator 93 view .LVU696
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 147 2278 discriminator 93 view .LVU697
	movq	24(%rdx), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L206:
	.loc 1 147 2226 discriminator 96 view .LVU698
	addq	%r14, %rcx
	.loc 1 147 2126 discriminator 96 view .LVU699
	orq	%rcx, %r8
	.loc 1 147 2382 discriminator 96 view .LVU700
	cmpq	$63, %rbx
	ja	.L292
	.loc 1 147 2419 discriminator 97 view .LVU701
	leal	-128(%rax), %ecx
	.loc 1 147 2382 discriminator 97 view .LVU702
	movq	16(%rdx), %r14
	shrq	%cl, %r14
.L207:
	.loc 1 147 2481 discriminator 100 view .LVU703
	cmpq	$62, %r11
	ja	.L293
	.loc 1 147 2517 discriminator 101 view .LVU704
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 147 2481 discriminator 101 view .LVU705
	movq	16(%rdx), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L208:
	.loc 1 147 2427 discriminator 104 view .LVU706
	addq	%r14, %rcx
	.loc 1 147 2328 discriminator 104 view .LVU707
	orq	%rcx, %r8
	.loc 1 147 2582 discriminator 104 view .LVU708
	cmpq	$63, %r12
	ja	.L294
	.loc 1 147 2615 discriminator 105 view .LVU709
	leal	-192(%rax), %ecx
	.loc 1 147 2582 discriminator 105 view .LVU710
	movq	8(%rdx), %r14
	shrq	%cl, %r14
.L209:
	.loc 1 147 2677 discriminator 108 view .LVU711
	cmpq	$62, %rbp
	ja	.L295
	.loc 1 147 2709 discriminator 109 view .LVU712
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 147 2677 discriminator 109 view .LVU713
	movq	8(%rdx), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L210:
	.loc 1 147 2623 discriminator 112 view .LVU714
	addq	%r14, %rcx
	.loc 1 147 2528 discriminator 112 view .LVU715
	orq	%rcx, %r8
	movq	%r8, -16(%rsp)
	movq	$-256, %r15
	subq	%rsi, %r15
	.loc 1 147 2774 discriminator 112 view .LVU716
	cmpq	$63, %r15
	ja	.L296
	.loc 1 147 2774 discriminator 113 view .LVU717
	movq	(%rdx), %r14
	movl	%eax, %ecx
	shrq	%cl, %r14
	movq	%r14, -8(%rsp)
.L211:
	.loc 1 147 2774 discriminator 113 view .LVU718
	movq	$-193, %r14
	subq	%rsi, %r14
	.loc 1 147 2865 discriminator 116 view .LVU719
	cmpq	$62, %r14
	ja	.L297
	.loc 1 147 2893 discriminator 117 view .LVU720
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 147 2865 discriminator 117 view .LVU721
	movq	(%rdx), %r8
	salq	%cl, %r8
	movq	%r8, %rcx
.L212:
	.loc 1 147 2811 discriminator 120 view .LVU722
	addq	-8(%rsp), %rcx
	.loc 1 147 2720 discriminator 120 view .LVU723
	movq	-16(%rsp), %r8
	orq	%rcx, %r8
	.loc 1 147 1922 discriminator 120 view .LVU724
	movq	%r8, 32(%rdi)
	.loc 1 147 2905 is_stmt 1 discriminator 120 view .LVU725
	.loc 1 147 2966 is_stmt 0 discriminator 120 view .LVU726
	cmpq	$63, %rax
	ja	.L298
	.loc 1 147 2966 discriminator 121 view .LVU727
	movq	40(%rdx), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L213:
	.loc 1 147 3067 discriminator 124 view .LVU728
	cmpq	$62, %r9
	ja	.L299
	.loc 1 147 3067 discriminator 125 view .LVU729
	movq	40(%rdx), %r9
	movl	%esi, %ecx
	salq	%cl, %r9
.L214:
	.loc 1 147 3017 discriminator 128 view .LVU730
	addq	%r8, %r9
	.loc 1 147 3172 discriminator 128 view .LVU731
	cmpq	$63, %r10
	ja	.L300
	.loc 1 147 3213 discriminator 129 view .LVU732
	leal	-64(%rax), %ecx
	.loc 1 147 3172 discriminator 129 view .LVU733
	movq	32(%rdx), %r8
	shrq	%cl, %r8
.L215:
	.loc 1 147 3272 discriminator 132 view .LVU734
	cmpq	$62, %r13
	ja	.L301
	.loc 1 147 3311 discriminator 133 view .LVU735
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 147 3272 discriminator 133 view .LVU736
	movq	32(%rdx), %r10
	salq	%cl, %r10
	movq	%r10, %rcx
.L216:
	.loc 1 147 3220 discriminator 136 view .LVU737
	addq	%rcx, %r8
	.loc 1 147 3120 discriminator 136 view .LVU738
	orq	%r9, %r8
	.loc 1 147 3376 discriminator 136 view .LVU739
	cmpq	$63, %rbx
	ja	.L302
	.loc 1 147 3413 discriminator 137 view .LVU740
	leal	-128(%rax), %ecx
	.loc 1 147 3376 discriminator 137 view .LVU741
	movq	24(%rdx), %r10
	shrq	%cl, %r10
.L217:
	.loc 1 147 3475 discriminator 140 view .LVU742
	cmpq	$62, %r11
	ja	.L303
	.loc 1 147 3511 discriminator 141 view .LVU743
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 147 3475 discriminator 141 view .LVU744
	movq	24(%rdx), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L218:
	.loc 1 147 3421 discriminator 144 view .LVU745
	addq	%rcx, %r10
	.loc 1 147 3322 discriminator 144 view .LVU746
	orq	%r8, %r10
	.loc 1 147 3576 discriminator 144 view .LVU747
	cmpq	$63, %r12
	ja	.L304
	.loc 1 147 3609 discriminator 145 view .LVU748
	leal	-192(%rax), %ecx
	.loc 1 147 3576 discriminator 145 view .LVU749
	movq	16(%rdx), %r9
	shrq	%cl, %r9
.L219:
	.loc 1 147 3671 discriminator 148 view .LVU750
	cmpq	$62, %rbp
	ja	.L305
	.loc 1 147 3703 discriminator 149 view .LVU751
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 147 3671 discriminator 149 view .LVU752
	movq	16(%rdx), %r8
	salq	%cl, %r8
.L220:
	.loc 1 147 3617 discriminator 152 view .LVU753
	addq	%r8, %r9
	.loc 1 147 3522 discriminator 152 view .LVU754
	orq	%r9, %r10
	movq	%r10, %r8
	.loc 1 147 3768 discriminator 152 view .LVU755
	cmpq	$63, %r15
	ja	.L306
	.loc 1 147 3768 discriminator 153 view .LVU756
	movq	8(%rdx), %r9
	movl	%eax, %ecx
	shrq	%cl, %r9
.L221:
	.loc 1 147 3859 discriminator 156 view .LVU757
	cmpq	$62, %r14
	ja	.L307
	.loc 1 147 3887 discriminator 157 view .LVU758
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 147 3859 discriminator 157 view .LVU759
	movq	8(%rdx), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L222:
	.loc 1 147 3805 discriminator 160 view .LVU760
	addq	%rcx, %r9
	.loc 1 147 3714 discriminator 160 view .LVU761
	orq	%r9, %r8
	.loc 1 147 3952 discriminator 160 view .LVU762
	movq	$-320, %rcx
	subq	%rsi, %rcx
	cmpq	$63, %rcx
	ja	.L308
	.loc 1 147 3977 discriminator 161 view .LVU763
	leal	-320(%rax), %ecx
	.loc 1 147 3952 discriminator 161 view .LVU764
	movq	(%rdx), %r9
	shrq	%cl, %r9
.L223:
	.loc 1 147 4039 discriminator 164 view .LVU765
	movq	$-257, %rcx
	subq	%rsi, %rcx
	cmpq	$62, %rcx
	ja	.L309
	.loc 1 147 4047 discriminator 165 view .LVU766
	movq	(%rdx), %rdx
.LVL24:
	.loc 1 147 4063 discriminator 165 view .LVU767
	movl	$320, %ecx
	subl	%eax, %ecx
	.loc 1 147 4039 discriminator 165 view .LVU768
	movq	%rdx, %rax
.LVL25:
	.loc 1 147 4039 discriminator 165 view .LVU769
	salq	%cl, %rax
.L224:
	.loc 1 147 3985 discriminator 168 view .LVU770
	addq	%rax, %r9
	.loc 1 147 3898 discriminator 168 view .LVU771
	orq	%r8, %r9
	.loc 1 147 2916 discriminator 168 view .LVU772
	movq	%r9, 40(%rdi)
	.loc 1 147 4074 is_stmt 1 discriminator 168 view .LVU773
	jmp	.L225
.LVL26:
.L268:
	.loc 1 147 70 is_stmt 0 view .LVU774
	movl	$0, %r8d
	jmp	.L183
.L269:
	.loc 1 147 155 view .LVU775
	movl	$0, %ecx
	jmp	.L184
.L270:
	.loc 1 147 254 view .LVU776
	movl	$0, %r8d
	jmp	.L185
.L271:
	.loc 1 147 343 view .LVU777
	movl	$0, %ecx
	jmp	.L186
.L272:
	.loc 1 147 436 view .LVU778
	movl	$0, %r11d
	jmp	.L187
.L273:
	.loc 1 147 524 view .LVU779
	movl	$0, %ecx
	jmp	.L188
.L274:
	.loc 1 147 624 view .LVU780
	movl	$0, %r11d
	jmp	.L189
.L275:
	.loc 1 147 717 view .LVU781
	movl	$0, %ecx
	jmp	.L190
.L276:
	.loc 1 147 814 view .LVU782
	movl	$0, %r8d
	jmp	.L191
.L277:
	.loc 1 147 906 view .LVU783
	movl	$0, %ecx
	jmp	.L192
.L278:
	.loc 1 147 1002 view .LVU784
	movl	$0, %ebp
	jmp	.L193
.L279:
	.loc 1 147 1093 view .LVU785
	movl	$0, %ecx
	jmp	.L194
.L280:
	.loc 1 147 1194 view .LVU786
	movl	$0, %r8d
	jmp	.L195
.L281:
	.loc 1 147 1291 view .LVU787
	movl	$0, %ecx
	jmp	.L196
.L282:
	.loc 1 147 1392 view .LVU788
	movl	$0, %ebp
	jmp	.L197
.L283:
	.loc 1 147 1488 view .LVU789
	movl	$0, %ecx
	jmp	.L198
.L284:
	.loc 1 147 1588 view .LVU790
	movl	$0, %r8d
	jmp	.L199
.L285:
	.loc 1 147 1683 view .LVU791
	movl	$0, %ecx
	jmp	.L200
.L286:
	.loc 1 147 1780 view .LVU792
	movl	$0, %r14d
	jmp	.L201
.L287:
	.loc 1 147 1871 view .LVU793
	movl	$0, %ecx
	jmp	.L202
.L288:
	.loc 1 147 1972 view .LVU794
	movl	$0, %r8d
	jmp	.L203
.L289:
	.loc 1 147 2073 view .LVU795
	movl	$0, %ecx
	jmp	.L204
.L290:
	.loc 1 147 2178 view .LVU796
	movl	$0, %r14d
	jmp	.L205
.L291:
	.loc 1 147 2278 view .LVU797
	movl	$0, %ecx
	jmp	.L206
.L292:
	.loc 1 147 2382 view .LVU798
	movl	$0, %r14d
	jmp	.L207
.L293:
	.loc 1 147 2481 view .LVU799
	movl	$0, %ecx
	jmp	.L208
.L294:
	.loc 1 147 2582 view .LVU800
	movl	$0, %r14d
	jmp	.L209
.L295:
	.loc 1 147 2677 view .LVU801
	movl	$0, %ecx
	jmp	.L210
.L296:
	.loc 1 147 2774 view .LVU802
	movq	$0, -8(%rsp)
	jmp	.L211
.L297:
	.loc 1 147 2865 view .LVU803
	movl	$0, %ecx
	jmp	.L212
.L298:
	.loc 1 147 2966 view .LVU804
	movl	$0, %r8d
	jmp	.L213
.L299:
	.loc 1 147 3067 view .LVU805
	movl	$0, %r9d
	jmp	.L214
.L300:
	.loc 1 147 3172 view .LVU806
	movl	$0, %r8d
	jmp	.L215
.L301:
	.loc 1 147 3272 view .LVU807
	movl	$0, %ecx
	jmp	.L216
.L302:
	.loc 1 147 3376 view .LVU808
	movl	$0, %r10d
	jmp	.L217
.L303:
	.loc 1 147 3475 view .LVU809
	movl	$0, %ecx
	jmp	.L218
.L304:
	.loc 1 147 3576 view .LVU810
	movl	$0, %r9d
	jmp	.L219
.L305:
	.loc 1 147 3671 view .LVU811
	movl	$0, %r8d
	jmp	.L220
.L306:
	.loc 1 147 3768 view .LVU812
	movl	$0, %r9d
	jmp	.L221
.L307:
	.loc 1 147 3859 view .LVU813
	movl	$0, %ecx
	jmp	.L222
.L308:
	.loc 1 147 3952 view .LVU814
	movl	$0, %r9d
	jmp	.L223
.L309:
	.loc 1 147 4039 view .LVU815
	movl	$0, %eax
.LVL27:
	.loc 1 147 4039 view .LVU816
	jmp	.L224
.LVL28:
.L310:
	.loc 1 151 70 view .LVU817
	movl	$0, %eax
.L226:
	.loc 1 151 105 discriminator 4 view .LVU818
	leaq	63(%rsi), %r14
	.loc 1 151 153 discriminator 4 view .LVU819
	cmpq	$-63, %rsi
	jb	.L311
	.loc 1 151 170 discriminator 5 view .LVU820
	movl	%esi, %ecx
	negl	%ecx
	.loc 1 151 153 discriminator 5 view .LVU821
	movq	40(%rdx), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L227
.L311:
	.loc 1 151 153 view .LVU822
	movl	$0, %ecx
.L227:
	.loc 1 151 103 discriminator 8 view .LVU823
	addq	%rcx, %rax
	.loc 1 151 20 discriminator 8 view .LVU824
	movq	%rax, 40(%rdi)
	.loc 1 151 189 is_stmt 1 discriminator 8 view .LVU825
	.loc 1 151 250 is_stmt 0 discriminator 8 view .LVU826
	cmpq	$63, %rsi
	ja	.L312
	.loc 1 151 250 discriminator 9 view .LVU827
	movq	32(%rdx), %rax
	movl	%esi, %ecx
	salq	%cl, %rax
	jmp	.L228
.L312:
	.loc 1 151 250 view .LVU828
	movl	$0, %eax
.L228:
	.loc 1 151 337 discriminator 12 view .LVU829
	cmpq	$62, %r14
	ja	.L313
	.loc 1 151 358 discriminator 13 view .LVU830
	movl	%esi, %ecx
	negl	%ecx
	.loc 1 151 337 discriminator 13 view .LVU831
	movq	32(%rdx), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L229
.L313:
	.loc 1 151 337 view .LVU832
	movl	$0, %ecx
.L229:
	.loc 1 151 287 discriminator 16 view .LVU833
	addq	%rcx, %rax
	.loc 1 151 379 discriminator 16 view .LVU834
	leaq	-64(%rsi), %r9
	.loc 1 151 428 discriminator 16 view .LVU835
	cmpq	$63, %r9
	ja	.L314
	.loc 1 151 455 discriminator 17 view .LVU836
	leal	-64(%rsi), %ecx
	.loc 1 151 428 discriminator 17 view .LVU837
	movq	40(%rdx), %r10
	salq	%cl, %r10
	jmp	.L230
.L314:
	.loc 1 151 428 view .LVU838
	movl	$0, %r10d
.L230:
	.loc 1 151 464 discriminator 20 view .LVU839
	leaq	-1(%rsi), %r8
	.loc 1 151 514 discriminator 20 view .LVU840
	cmpq	$62, %r8
	ja	.L315
	.loc 1 151 539 discriminator 21 view .LVU841
	movl	$64, %ecx
	subl	%esi, %ecx
	.loc 1 151 514 discriminator 21 view .LVU842
	movq	40(%rdx), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L231
.L315:
	.loc 1 151 514 view .LVU843
	movl	$0, %ecx
.L231:
	.loc 1 151 462 discriminator 24 view .LVU844
	addq	%rcx, %r10
	.loc 1 151 376 discriminator 24 view .LVU845
	orq	%r10, %rax
	.loc 1 151 200 discriminator 24 view .LVU846
	movq	%rax, 32(%rdi)
	.loc 1 151 551 is_stmt 1 discriminator 24 view .LVU847
	.loc 1 151 612 is_stmt 0 discriminator 24 view .LVU848
	cmpq	$63, %rsi
	ja	.L316
	.loc 1 151 612 discriminator 25 view .LVU849
	movq	24(%rdx), %rax
	movl	%esi, %ecx
	salq	%cl, %rax
	jmp	.L232
.L316:
	.loc 1 151 612 view .LVU850
	movl	$0, %eax
.L232:
	.loc 1 151 703 discriminator 28 view .LVU851
	cmpq	$62, %r14
	ja	.L317
	.loc 1 151 728 discriminator 29 view .LVU852
	movl	%esi, %ecx
	negl	%ecx
	.loc 1 151 703 discriminator 29 view .LVU853
	movq	24(%rdx), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L233
.L317:
	.loc 1 151 703 view .LVU854
	movl	$0, %ecx
.L233:
	.loc 1 151 653 discriminator 32 view .LVU855
	addq	%rcx, %rax
	.loc 1 151 798 discriminator 32 view .LVU856
	cmpq	$63, %r9
	ja	.L318
	.loc 1 151 829 discriminator 33 view .LVU857
	leal	-64(%rsi), %ecx
	.loc 1 151 798 discriminator 33 view .LVU858
	movq	32(%rdx), %r10
	salq	%cl, %r10
	jmp	.L234
.L318:
	.loc 1 151 798 view .LVU859
	movl	$0, %r10d
.L234:
	.loc 1 151 888 discriminator 36 view .LVU860
	cmpq	$62, %r8
	ja	.L319
	.loc 1 151 917 discriminator 37 view .LVU861
	movl	$64, %ecx
	subl	%esi, %ecx
	.loc 1 151 888 discriminator 37 view .LVU862
	movq	32(%rdx), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L235
.L319:
	.loc 1 151 888 view .LVU863
	movl	$0, %ecx
.L235:
	.loc 1 151 836 discriminator 40 view .LVU864
	addq	%rcx, %r10
	.loc 1 151 746 discriminator 40 view .LVU865
	orq	%r10, %rax
	.loc 1 151 931 discriminator 40 view .LVU866
	leaq	-128(%rsi), %r11
	.loc 1 151 982 discriminator 40 view .LVU867
	cmpq	$63, %r11
	ja	.L320
	.loc 1 151 1009 discriminator 41 view .LVU868
	leal	-128(%rsi), %ecx
	.loc 1 151 982 discriminator 41 view .LVU869
	movq	40(%rdx), %rbx
	salq	%cl, %rbx
	jmp	.L236
.L320:
	.loc 1 151 982 view .LVU870
	movl	$0, %ebx
.L236:
	.loc 1 151 1019 discriminator 44 view .LVU871
	leaq	-65(%rsi), %r10
	.loc 1 151 1071 discriminator 44 view .LVU872
	cmpq	$62, %r10
	ja	.L321
	.loc 1 151 1097 discriminator 45 view .LVU873
	movl	$128, %ecx
	subl	%esi, %ecx
	.loc 1 151 1071 discriminator 45 view .LVU874
	movq	40(%rdx), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L237
.L321:
	.loc 1 151 1071 view .LVU875
	movl	$0, %ecx
.L237:
	.loc 1 151 1017 discriminator 48 view .LVU876
	addq	%rcx, %rbx
	.loc 1 151 928 discriminator 48 view .LVU877
	orq	%rax, %rbx
	.loc 1 151 562 discriminator 48 view .LVU878
	movq	%rbx, 24(%rdi)
	.loc 1 151 1109 is_stmt 1 discriminator 48 view .LVU879
	.loc 1 151 1170 is_stmt 0 discriminator 48 view .LVU880
	cmpq	$63, %rsi
	ja	.L322
	.loc 1 151 1170 discriminator 49 view .LVU881
	movq	16(%rdx), %rbx
	movl	%esi, %ecx
	salq	%cl, %rbx
	jmp	.L238
.L322:
	.loc 1 151 1170 view .LVU882
	movl	$0, %ebx
.L238:
	.loc 1 151 1265 discriminator 52 view .LVU883
	cmpq	$62, %r14
	ja	.L323
	.loc 1 151 1294 discriminator 53 view .LVU884
	movl	%esi, %ecx
	negl	%ecx
	.loc 1 151 1265 discriminator 53 view .LVU885
	movq	16(%rdx), %rax
	shrq	%cl, %rax
	jmp	.L239
.L323:
	.loc 1 151 1265 view .LVU886
	movl	$0, %eax
.L239:
	.loc 1 151 1215 discriminator 56 view .LVU887
	addq	%rbx, %rax
	.loc 1 151 1364 discriminator 56 view .LVU888
	cmpq	$63, %r9
	ja	.L324
	.loc 1 151 1399 discriminator 57 view .LVU889
	leal	-64(%rsi), %ecx
	.loc 1 151 1364 discriminator 57 view .LVU890
	movq	24(%rdx), %rbx
	salq	%cl, %rbx
	jmp	.L240
.L324:
	.loc 1 151 1364 view .LVU891
	movl	$0, %ebx
.L240:
	.loc 1 151 1458 discriminator 60 view .LVU892
	cmpq	$62, %r8
	ja	.L325
	.loc 1 151 1491 discriminator 61 view .LVU893
	movl	$64, %ecx
	subl	%esi, %ecx
	.loc 1 151 1458 discriminator 61 view .LVU894
	movq	24(%rdx), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L241
.L325:
	.loc 1 151 1458 view .LVU895
	movl	$0, %ecx
.L241:
	.loc 1 151 1406 discriminator 64 view .LVU896
	addq	%rcx, %rbx
	.loc 1 151 1312 discriminator 64 view .LVU897
	orq	%rbx, %rax
	.loc 1 151 1556 discriminator 64 view .LVU898
	cmpq	$63, %r11
	ja	.L326
	.loc 1 151 1587 discriminator 65 view .LVU899
	leal	-128(%rsi), %ecx
	.loc 1 151 1556 discriminator 65 view .LVU900
	movq	32(%rdx), %rbx
	salq	%cl, %rbx
	jmp	.L242
.L326:
	.loc 1 151 1556 view .LVU901
	movl	$0, %ebx
.L242:
	.loc 1 151 1649 discriminator 68 view .LVU902
	cmpq	$62, %r10
	ja	.L327
	.loc 1 151 1679 discriminator 69 view .LVU903
	movl	$128, %ecx
	subl	%esi, %ecx
	.loc 1 151 1649 discriminator 69 view .LVU904
	movq	32(%rdx), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L243
.L327:
	.loc 1 151 1649 view .LVU905
	movl	$0, %ecx
.L243:
	.loc 1 151 1595 discriminator 72 view .LVU906
	addq	%rcx, %rbx
	.loc 1 151 1502 discriminator 72 view .LVU907
	orq	%rbx, %rax
	.loc 1 151 1693 discriminator 72 view .LVU908
	leaq	-192(%rsi), %rbp
	.loc 1 151 1744 discriminator 72 view .LVU909
	cmpq	$63, %rbp
	ja	.L328
	.loc 1 151 1771 discriminator 73 view .LVU910
	leal	-192(%rsi), %ecx
	.loc 1 151 1744 discriminator 73 view .LVU911
	movq	40(%rdx), %r12
	salq	%cl, %r12
	jmp	.L244
.L328:
	.loc 1 151 1744 view .LVU912
	movl	$0, %r12d
.L244:
	.loc 1 151 1781 discriminator 76 view .LVU913
	leaq	-129(%rsi), %rbx
	.loc 1 151 1833 discriminator 76 view .LVU914
	cmpq	$62, %rbx
	ja	.L329
	.loc 1 151 1859 discriminator 77 view .LVU915
	movl	$192, %ecx
	subl	%esi, %ecx
	.loc 1 151 1833 discriminator 77 view .LVU916
	movq	40(%rdx), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L245
.L329:
	.loc 1 151 1833 view .LVU917
	movl	$0, %ecx
.L245:
	.loc 1 151 1779 discriminator 80 view .LVU918
	addq	%r12, %rcx
	.loc 1 151 1690 discriminator 80 view .LVU919
	orq	%rcx, %rax
	.loc 1 151 1120 discriminator 80 view .LVU920
	movq	%rax, 16(%rdi)
	.loc 1 151 1871 is_stmt 1 discriminator 80 view .LVU921
	.loc 1 151 1932 is_stmt 0 discriminator 80 view .LVU922
	cmpq	$63, %rsi
	ja	.L330
	.loc 1 151 1932 discriminator 81 view .LVU923
	movq	8(%rdx), %r12
	movl	%esi, %ecx
	salq	%cl, %r12
	jmp	.L246
.L330:
	.loc 1 151 1932 view .LVU924
	movl	$0, %r12d
.L246:
	.loc 1 151 2031 discriminator 84 view .LVU925
	cmpq	$62, %r14
	ja	.L331
	.loc 1 151 2064 discriminator 85 view .LVU926
	movl	%esi, %ecx
	negl	%ecx
	.loc 1 151 2031 discriminator 85 view .LVU927
	movq	8(%rdx), %rax
	shrq	%cl, %rax
	jmp	.L247
.L331:
	.loc 1 151 2031 view .LVU928
	movl	$0, %eax
.L247:
	.loc 1 151 1981 discriminator 88 view .LVU929
	addq	%r12, %rax
	.loc 1 151 2134 discriminator 88 view .LVU930
	cmpq	$63, %r9
	ja	.L332
	.loc 1 151 2173 discriminator 89 view .LVU931
	leal	-64(%rsi), %ecx
	.loc 1 151 2134 discriminator 89 view .LVU932
	movq	16(%rdx), %r13
	salq	%cl, %r13
	jmp	.L248
.L332:
	.loc 1 151 2134 view .LVU933
	movl	$0, %r13d
.L248:
	.loc 1 151 2232 discriminator 92 view .LVU934
	cmpq	$62, %r8
	ja	.L333
	.loc 1 151 2269 discriminator 93 view .LVU935
	movl	$64, %ecx
	subl	%esi, %ecx
	.loc 1 151 2232 discriminator 93 view .LVU936
	movq	16(%rdx), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L249
.L333:
	.loc 1 151 2232 view .LVU937
	movl	$0, %ecx
.L249:
	.loc 1 151 2180 discriminator 96 view .LVU938
	addq	%r13, %rcx
	.loc 1 151 2082 discriminator 96 view .LVU939
	orq	%rcx, %rax
	.loc 1 151 2334 discriminator 96 view .LVU940
	cmpq	$63, %r11
	ja	.L334
	.loc 1 151 2369 discriminator 97 view .LVU941
	leal	-128(%rsi), %ecx
	.loc 1 151 2334 discriminator 97 view .LVU942
	movq	24(%rdx), %r12
	salq	%cl, %r12
	jmp	.L250
.L334:
	.loc 1 151 2334 view .LVU943
	movl	$0, %r12d
.L250:
	.loc 1 151 2431 discriminator 100 view .LVU944
	cmpq	$62, %r10
	ja	.L335
	.loc 1 151 2465 discriminator 101 view .LVU945
	movl	$128, %ecx
	subl	%esi, %ecx
	.loc 1 151 2431 discriminator 101 view .LVU946
	movq	24(%rdx), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L251
.L335:
	.loc 1 151 2431 view .LVU947
	movl	$0, %ecx
.L251:
	.loc 1 151 2377 discriminator 104 view .LVU948
	addq	%r12, %rcx
	.loc 1 151 2280 discriminator 104 view .LVU949
	orq	%rcx, %rax
	.loc 1 151 2530 discriminator 104 view .LVU950
	cmpq	$63, %rbp
	ja	.L336
	.loc 1 151 2561 discriminator 105 view .LVU951
	leal	-192(%rsi), %ecx
	.loc 1 151 2530 discriminator 105 view .LVU952
	movq	32(%rdx), %r12
	salq	%cl, %r12
	jmp	.L252
.L336:
	.loc 1 151 2530 view .LVU953
	movl	$0, %r12d
.L252:
	.loc 1 151 2623 discriminator 108 view .LVU954
	cmpq	$62, %rbx
	ja	.L337
	.loc 1 151 2653 discriminator 109 view .LVU955
	movl	$192, %ecx
	subl	%esi, %ecx
	.loc 1 151 2623 discriminator 109 view .LVU956
	movq	32(%rdx), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L253
.L337:
	.loc 1 151 2623 view .LVU957
	movl	$0, %ecx
.L253:
	.loc 1 151 2569 discriminator 112 view .LVU958
	addq	%r12, %rcx
	.loc 1 151 2476 discriminator 112 view .LVU959
	orq	%rcx, %rax
	movq	%rax, -16(%rsp)
	.loc 1 151 2667 discriminator 112 view .LVU960
	leaq	-256(%rsi), %r13
	.loc 1 151 2718 discriminator 112 view .LVU961
	cmpq	$63, %r13
	ja	.L338
	.loc 1 151 2718 discriminator 113 view .LVU962
	movq	40(%rdx), %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	jmp	.L254
.L338:
	.loc 1 151 2718 view .LVU963
	movl	$0, %r15d
.L254:
	.loc 1 151 2755 discriminator 116 view .LVU964
	leaq	-193(%rsi), %r12
	.loc 1 151 2807 discriminator 116 view .LVU965
	cmpq	$62, %r12
	ja	.L339
	.loc 1 151 2833 discriminator 117 view .LVU966
	movl	$256, %ecx
	subl	%esi, %ecx
	.loc 1 151 2807 discriminator 117 view .LVU967
	movq	40(%rdx), %rax
	shrq	%cl, %rax
	movq	%rax, %rcx
	jmp	.L255
.L339:
	.loc 1 151 2807 view .LVU968
	movl	$0, %ecx
.L255:
	.loc 1 151 2753 discriminator 120 view .LVU969
	addq	%r15, %rcx
	.loc 1 151 2664 discriminator 120 view .LVU970
	movq	-16(%rsp), %rax
	orq	%rcx, %rax
	.loc 1 151 1882 discriminator 120 view .LVU971
	movq	%rax, 8(%rdi)
	.loc 1 151 2845 is_stmt 1 discriminator 120 view .LVU972
	.loc 1 151 2906 is_stmt 0 discriminator 120 view .LVU973
	cmpq	$63, %rsi
	ja	.L340
	.loc 1 151 2906 discriminator 121 view .LVU974
	movq	(%rdx), %r15
	movl	%esi, %ecx
	salq	%cl, %r15
	jmp	.L256
.L340:
	.loc 1 151 2906 view .LVU975
	movl	$0, %r15d
.L256:
	.loc 1 151 3005 discriminator 124 view .LVU976
	cmpq	$62, %r14
	ja	.L341
	.loc 1 151 3038 discriminator 125 view .LVU977
	movl	%esi, %ecx
	negl	%ecx
	.loc 1 151 3005 discriminator 125 view .LVU978
	movq	(%rdx), %rax
	shrq	%cl, %rax
	jmp	.L257
.L341:
	.loc 1 151 3005 view .LVU979
	movl	$0, %eax
.L257:
	.loc 1 151 2955 discriminator 128 view .LVU980
	leaq	(%r15,%rax), %r14
	.loc 1 151 3108 discriminator 128 view .LVU981
	cmpq	$63, %r9
	ja	.L342
	.loc 1 151 3147 discriminator 129 view .LVU982
	leal	-64(%rsi), %ecx
	.loc 1 151 3108 discriminator 129 view .LVU983
	movq	8(%rdx), %rax
	salq	%cl, %rax
	jmp	.L258
.L342:
	.loc 1 151 3108 view .LVU984
	movl	$0, %eax
.L258:
	.loc 1 151 3206 discriminator 132 view .LVU985
	cmpq	$62, %r8
	ja	.L343
	.loc 1 151 3243 discriminator 133 view .LVU986
	movl	$64, %ecx
	subl	%esi, %ecx
	.loc 1 151 3206 discriminator 133 view .LVU987
	movq	8(%rdx), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L259
.L343:
	.loc 1 151 3206 view .LVU988
	movl	$0, %ecx
.L259:
	.loc 1 151 3154 discriminator 136 view .LVU989
	addq	%rcx, %rax
	.loc 1 151 3056 discriminator 136 view .LVU990
	orq	%r14, %rax
	.loc 1 151 3308 discriminator 136 view .LVU991
	cmpq	$63, %r11
	ja	.L344
	.loc 1 151 3343 discriminator 137 view .LVU992
	leal	-128(%rsi), %ecx
	.loc 1 151 3308 discriminator 137 view .LVU993
	movq	16(%rdx), %r8
	salq	%cl, %r8
	jmp	.L260
.L344:
	.loc 1 151 3308 view .LVU994
	movl	$0, %r8d
.L260:
	.loc 1 151 3405 discriminator 140 view .LVU995
	cmpq	$62, %r10
	ja	.L345
	.loc 1 151 3439 discriminator 141 view .LVU996
	movl	$128, %ecx
	subl	%esi, %ecx
	.loc 1 151 3405 discriminator 141 view .LVU997
	movq	16(%rdx), %r11
	shrq	%cl, %r11
	movq	%r11, %rcx
	jmp	.L261
.L345:
	.loc 1 151 3405 view .LVU998
	movl	$0, %ecx
.L261:
	.loc 1 151 3351 discriminator 144 view .LVU999
	addq	%rcx, %r8
	.loc 1 151 3254 discriminator 144 view .LVU1000
	orq	%r8, %rax
	.loc 1 151 3504 discriminator 144 view .LVU1001
	cmpq	$63, %rbp
	ja	.L346
	.loc 1 151 3535 discriminator 145 view .LVU1002
	leal	-192(%rsi), %ecx
	.loc 1 151 3504 discriminator 145 view .LVU1003
	movq	24(%rdx), %r8
	salq	%cl, %r8
	jmp	.L262
.L346:
	.loc 1 151 3504 view .LVU1004
	movl	$0, %r8d
.L262:
	.loc 1 151 3597 discriminator 148 view .LVU1005
	cmpq	$62, %rbx
	ja	.L347
	.loc 1 151 3627 discriminator 149 view .LVU1006
	movl	$192, %ecx
	subl	%esi, %ecx
	.loc 1 151 3597 discriminator 149 view .LVU1007
	movq	24(%rdx), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L263
.L347:
	.loc 1 151 3597 view .LVU1008
	movl	$0, %ecx
.L263:
	.loc 1 151 3543 discriminator 152 view .LVU1009
	addq	%rcx, %r8
	.loc 1 151 3450 discriminator 152 view .LVU1010
	orq	%r8, %rax
	.loc 1 151 3692 discriminator 152 view .LVU1011
	cmpq	$63, %r13
	ja	.L348
	.loc 1 151 3692 discriminator 153 view .LVU1012
	movq	32(%rdx), %r8
	movl	%esi, %ecx
	salq	%cl, %r8
	jmp	.L264
.L348:
	.loc 1 151 3692 view .LVU1013
	movl	$0, %r8d
.L264:
	.loc 1 151 3781 discriminator 156 view .LVU1014
	cmpq	$62, %r12
	ja	.L349
	.loc 1 151 3807 discriminator 157 view .LVU1015
	movl	$256, %ecx
	subl	%esi, %ecx
	.loc 1 151 3781 discriminator 157 view .LVU1016
	movq	32(%rdx), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L265
.L349:
	.loc 1 151 3781 view .LVU1017
	movl	$0, %ecx
.L265:
	.loc 1 151 3727 discriminator 160 view .LVU1018
	addq	%rcx, %r8
	.loc 1 151 3638 discriminator 160 view .LVU1019
	orq	%r8, %rax
	.loc 1 151 3821 discriminator 160 view .LVU1020
	leaq	-320(%rsi), %rcx
	.loc 1 151 3872 discriminator 160 view .LVU1021
	cmpq	$63, %rcx
	ja	.L350
	.loc 1 151 3895 discriminator 161 view .LVU1022
	leal	-320(%rsi), %ecx
	.loc 1 151 3872 discriminator 161 view .LVU1023
	movq	40(%rdx), %r8
	salq	%cl, %r8
	jmp	.L266
.L350:
	.loc 1 151 3872 view .LVU1024
	movl	$0, %r8d
.L266:
	.loc 1 151 3905 discriminator 164 view .LVU1025
	leaq	-257(%rsi), %rcx
	.loc 1 151 3957 discriminator 164 view .LVU1026
	cmpq	$62, %rcx
	ja	.L351
	.loc 1 151 3964 discriminator 165 view .LVU1027
	movq	40(%rdx), %rdx
.LVL29:
	.loc 1 151 3979 discriminator 165 view .LVU1028
	movl	$320, %ecx
	subl	%esi, %ecx
	.loc 1 151 3957 discriminator 165 view .LVU1029
	shrq	%cl, %rdx
	jmp	.L267
.LVL30:
.L351:
	.loc 1 151 3957 view .LVU1030
	movl	$0, %edx
.LVL31:
.L267:
	.loc 1 151 3903 discriminator 168 view .LVU1031
	addq	%rdx, %r8
	.loc 1 151 3818 discriminator 168 view .LVU1032
	orq	%r8, %rax
	.loc 1 151 2856 discriminator 168 view .LVU1033
	movq	%rax, (%rdi)
.LVL32:
.L225:
	.loc 1 151 3990 is_stmt 1 discriminator 169 view .LVU1034
	.loc 1 154 5 discriminator 169 view .LVU1035
	.loc 1 155 1 is_stmt 0 discriminator 169 view .LVU1036
	movq	%rdi, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE30:
	.size	biguint_lsh, .-biguint_lsh
	.globl	biguint_rrot
	.type	biguint_rrot, @function
biguint_rrot:
.LVL33:
.LFB31:
	.loc 1 158 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 158 1 is_stmt 0 view .LVU1038
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	movq	%rsi, %rcx
	movq	%rdx, %rsi
.LVL34:
	.loc 1 159 5 is_stmt 1 view .LVU1039
	.loc 1 159 22 is_stmt 0 view .LVU1040
	movabsq	$3074457345618258603, %rdx
.LVL35:
	.loc 1 159 22 view .LVU1041
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$6, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	salq	$7, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	.loc 1 159 36 view .LVU1042
	testq	%rcx, %rcx
	js	.L696
	movl	$0, %eax
.L355:
.LVL36:
	.loc 1 161 5 is_stmt 1 discriminator 4 view .LVU1043
	.loc 1 165 5 discriminator 4 view .LVU1044
	.loc 1 165 8 is_stmt 0 discriminator 4 view .LVU1045
	addq	%rax, %rdx
.LVL37:
	.loc 1 165 8 discriminator 4 view .LVU1046
	js	.L697
	.loc 1 174 9 is_stmt 1 view .LVU1047
	.loc 1 174 71 is_stmt 0 view .LVU1048
	cmpq	$63, %rdx
	ja	.L611
	.loc 1 174 71 discriminator 1 view .LVU1049
	movq	(%rsi), %rax
	movl	%edx, %ecx
	shrq	%cl, %rax
	jmp	.L442
.LVL38:
.L696:
	.loc 1 159 36 view .LVU1050
	movl	$384, %eax
	jmp	.L355
.LVL39:
.L697:
	.loc 1 167 9 is_stmt 1 view .LVU1051
	.loc 1 167 16 is_stmt 0 view .LVU1052
	movq	%rdx, %rax
	negq	%rax
.LVL40:
	.loc 1 168 9 is_stmt 1 view .LVU1053
	.loc 1 168 71 is_stmt 0 view .LVU1054
	cmpq	$63, %rax
	ja	.L527
	.loc 1 168 71 discriminator 1 view .LVU1055
	movq	40(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L357:
	.loc 1 168 71 discriminator 1 view .LVU1056
	movl	$63, %r9d
	subq	%rdx, %r9
	.loc 1 168 154 discriminator 4 view .LVU1057
	cmpq	$62, %r9
	ja	.L528
	.loc 1 168 154 discriminator 5 view .LVU1058
	movq	40(%rsi), %rbx
	movl	%edx, %ecx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L358:
	.loc 1 168 104 discriminator 8 view .LVU1059
	addq	%rcx, %r8
	.loc 1 168 21 discriminator 8 view .LVU1060
	movq	%r8, -56(%rsp)
	.loc 1 168 190 is_stmt 1 discriminator 8 view .LVU1061
	.loc 1 168 252 is_stmt 0 discriminator 8 view .LVU1062
	cmpq	$63, %rax
	ja	.L529
	.loc 1 168 252 discriminator 9 view .LVU1063
	movq	32(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L359:
	.loc 1 168 339 discriminator 12 view .LVU1064
	cmpq	$62, %r9
	ja	.L530
	.loc 1 168 339 discriminator 13 view .LVU1065
	movq	32(%rsi), %rbx
	movl	%edx, %ecx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L360:
	.loc 1 168 289 discriminator 16 view .LVU1066
	addq	%rcx, %r8
	movq	$-64, %r10
	subq	%rdx, %r10
	.loc 1 168 430 discriminator 16 view .LVU1067
	cmpq	$63, %r10
	ja	.L531
	.loc 1 168 457 discriminator 17 view .LVU1068
	leal	-64(%rax), %ecx
	.loc 1 168 430 discriminator 17 view .LVU1069
	movq	40(%rsi), %r11
	salq	%cl, %r11
.L361:
	.loc 1 168 430 discriminator 17 view .LVU1070
	movq	%rdx, %r13
	notq	%r13
	.loc 1 168 516 discriminator 20 view .LVU1071
	cmpq	$62, %r13
	ja	.L532
	.loc 1 168 541 discriminator 21 view .LVU1072
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 168 516 discriminator 21 view .LVU1073
	movq	40(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L362:
	.loc 1 168 464 discriminator 24 view .LVU1074
	addq	%rcx, %r11
	.loc 1 168 378 discriminator 24 view .LVU1075
	orq	%r8, %r11
	.loc 1 168 202 discriminator 24 view .LVU1076
	movq	%r11, -64(%rsp)
	.loc 1 168 553 is_stmt 1 discriminator 24 view .LVU1077
	.loc 1 168 615 is_stmt 0 discriminator 24 view .LVU1078
	cmpq	$63, %rax
	ja	.L533
	.loc 1 168 615 discriminator 25 view .LVU1079
	movq	24(%rsi), %r11
	movl	%eax, %ecx
	salq	%cl, %r11
.L363:
	.loc 1 168 706 discriminator 28 view .LVU1080
	cmpq	$62, %r9
	ja	.L534
	.loc 1 168 706 discriminator 29 view .LVU1081
	movq	24(%rsi), %rbx
	movl	%edx, %ecx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L364:
	.loc 1 168 656 discriminator 32 view .LVU1082
	addq	%rcx, %r11
	.loc 1 168 801 discriminator 32 view .LVU1083
	cmpq	$63, %r10
	ja	.L535
	.loc 1 168 832 discriminator 33 view .LVU1084
	leal	-64(%rax), %ecx
	.loc 1 168 801 discriminator 33 view .LVU1085
	movq	32(%rsi), %r8
	salq	%cl, %r8
.L365:
	.loc 1 168 891 discriminator 36 view .LVU1086
	cmpq	$62, %r13
	ja	.L536
	.loc 1 168 920 discriminator 37 view .LVU1087
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 168 891 discriminator 37 view .LVU1088
	movq	32(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L366:
	.loc 1 168 839 discriminator 40 view .LVU1089
	addq	%rcx, %r8
	.loc 1 168 749 discriminator 40 view .LVU1090
	orq	%r11, %r8
	movq	$-128, %rbx
	subq	%rdx, %rbx
	.loc 1 168 985 discriminator 40 view .LVU1091
	cmpq	$63, %rbx
	ja	.L537
	.loc 1 168 1012 discriminator 41 view .LVU1092
	leal	-128(%rax), %ecx
	.loc 1 168 985 discriminator 41 view .LVU1093
	movq	40(%rsi), %rbp
	salq	%cl, %rbp
.L367:
	.loc 1 168 985 discriminator 41 view .LVU1094
	movq	$-65, %r11
	subq	%rdx, %r11
	.loc 1 168 1074 discriminator 44 view .LVU1095
	cmpq	$62, %r11
	ja	.L538
	.loc 1 168 1100 discriminator 45 view .LVU1096
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 168 1074 discriminator 45 view .LVU1097
	movq	40(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L368:
	.loc 1 168 1020 discriminator 48 view .LVU1098
	addq	%rbp, %rcx
	.loc 1 168 931 discriminator 48 view .LVU1099
	orq	%rcx, %r8
	.loc 1 168 565 discriminator 48 view .LVU1100
	movq	%r8, -72(%rsp)
	.loc 1 168 1112 is_stmt 1 discriminator 48 view .LVU1101
	.loc 1 168 1174 is_stmt 0 discriminator 48 view .LVU1102
	cmpq	$63, %rax
	ja	.L539
	.loc 1 168 1174 discriminator 49 view .LVU1103
	movq	16(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L369:
	.loc 1 168 1269 discriminator 52 view .LVU1104
	cmpq	$62, %r9
	ja	.L540
	.loc 1 168 1269 discriminator 53 view .LVU1105
	movq	16(%rsi), %r14
	movl	%edx, %ecx
	shrq	%cl, %r14
	movq	%r14, %rcx
.L370:
	.loc 1 168 1219 discriminator 56 view .LVU1106
	addq	%rcx, %r8
	.loc 1 168 1368 discriminator 56 view .LVU1107
	cmpq	$63, %r10
	ja	.L541
	.loc 1 168 1403 discriminator 57 view .LVU1108
	leal	-64(%rax), %ecx
	.loc 1 168 1368 discriminator 57 view .LVU1109
	movq	24(%rsi), %rbp
	salq	%cl, %rbp
.L371:
	.loc 1 168 1462 discriminator 60 view .LVU1110
	cmpq	$62, %r13
	ja	.L542
	.loc 1 168 1495 discriminator 61 view .LVU1111
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 168 1462 discriminator 61 view .LVU1112
	movq	24(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L372:
	.loc 1 168 1410 discriminator 64 view .LVU1113
	addq	%rcx, %rbp
	.loc 1 168 1316 discriminator 64 view .LVU1114
	orq	%r8, %rbp
	.loc 1 168 1560 discriminator 64 view .LVU1115
	cmpq	$63, %rbx
	ja	.L543
	.loc 1 168 1591 discriminator 65 view .LVU1116
	leal	-128(%rax), %ecx
	.loc 1 168 1560 discriminator 65 view .LVU1117
	movq	32(%rsi), %r8
	salq	%cl, %r8
.L373:
	.loc 1 168 1653 discriminator 68 view .LVU1118
	cmpq	$62, %r11
	ja	.L544
	.loc 1 168 1683 discriminator 69 view .LVU1119
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 168 1653 discriminator 69 view .LVU1120
	movq	32(%rsi), %r14
	shrq	%cl, %r14
	movq	%r14, %rcx
.L374:
	.loc 1 168 1599 discriminator 72 view .LVU1121
	addq	%rcx, %r8
	.loc 1 168 1506 discriminator 72 view .LVU1122
	orq	%rbp, %r8
	movq	$-192, %r12
	subq	%rdx, %r12
	.loc 1 168 1748 discriminator 72 view .LVU1123
	cmpq	$63, %r12
	ja	.L545
	.loc 1 168 1775 discriminator 73 view .LVU1124
	leal	-192(%rax), %ecx
	.loc 1 168 1748 discriminator 73 view .LVU1125
	movq	40(%rsi), %r14
	salq	%cl, %r14
.L375:
	.loc 1 168 1748 discriminator 73 view .LVU1126
	movq	$-129, %rbp
	subq	%rdx, %rbp
	.loc 1 168 1837 discriminator 76 view .LVU1127
	cmpq	$62, %rbp
	ja	.L546
	.loc 1 168 1863 discriminator 77 view .LVU1128
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 168 1837 discriminator 77 view .LVU1129
	movq	40(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L376:
	.loc 1 168 1783 discriminator 80 view .LVU1130
	addq	%r14, %rcx
	.loc 1 168 1694 discriminator 80 view .LVU1131
	orq	%rcx, %r8
	.loc 1 168 1124 discriminator 80 view .LVU1132
	movq	%r8, -80(%rsp)
	.loc 1 168 1875 is_stmt 1 discriminator 80 view .LVU1133
	.loc 1 168 1937 is_stmt 0 discriminator 80 view .LVU1134
	cmpq	$63, %rax
	ja	.L547
	.loc 1 168 1937 discriminator 81 view .LVU1135
	movq	8(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L377:
	.loc 1 168 2036 discriminator 84 view .LVU1136
	cmpq	$62, %r9
	ja	.L548
	.loc 1 168 2036 discriminator 85 view .LVU1137
	movq	8(%rsi), %r15
	movl	%edx, %ecx
	shrq	%cl, %r15
	movq	%r15, %rcx
.L378:
	.loc 1 168 1986 discriminator 88 view .LVU1138
	addq	%rcx, %r8
	.loc 1 168 2139 discriminator 88 view .LVU1139
	cmpq	$63, %r10
	ja	.L549
	.loc 1 168 2178 discriminator 89 view .LVU1140
	leal	-64(%rax), %ecx
	.loc 1 168 2139 discriminator 89 view .LVU1141
	movq	16(%rsi), %r14
	salq	%cl, %r14
.L379:
	.loc 1 168 2237 discriminator 92 view .LVU1142
	cmpq	$62, %r13
	ja	.L550
	.loc 1 168 2274 discriminator 93 view .LVU1143
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 168 2237 discriminator 93 view .LVU1144
	movq	16(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L380:
	.loc 1 168 2185 discriminator 96 view .LVU1145
	addq	%r14, %rcx
	.loc 1 168 2087 discriminator 96 view .LVU1146
	orq	%rcx, %r8
	.loc 1 168 2339 discriminator 96 view .LVU1147
	cmpq	$63, %rbx
	ja	.L551
	.loc 1 168 2374 discriminator 97 view .LVU1148
	leal	-128(%rax), %ecx
	.loc 1 168 2339 discriminator 97 view .LVU1149
	movq	24(%rsi), %r14
	salq	%cl, %r14
.L381:
	.loc 1 168 2436 discriminator 100 view .LVU1150
	cmpq	$62, %r11
	ja	.L552
	.loc 1 168 2470 discriminator 101 view .LVU1151
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 168 2436 discriminator 101 view .LVU1152
	movq	24(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L382:
	.loc 1 168 2382 discriminator 104 view .LVU1153
	addq	%r14, %rcx
	.loc 1 168 2285 discriminator 104 view .LVU1154
	orq	%rcx, %r8
	.loc 1 168 2535 discriminator 104 view .LVU1155
	cmpq	$63, %r12
	ja	.L553
	.loc 1 168 2566 discriminator 105 view .LVU1156
	leal	-192(%rax), %ecx
	.loc 1 168 2535 discriminator 105 view .LVU1157
	movq	32(%rsi), %r14
	salq	%cl, %r14
.L383:
	.loc 1 168 2628 discriminator 108 view .LVU1158
	cmpq	$62, %rbp
	ja	.L554
	.loc 1 168 2658 discriminator 109 view .LVU1159
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 168 2628 discriminator 109 view .LVU1160
	movq	32(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L384:
	.loc 1 168 2574 discriminator 112 view .LVU1161
	addq	%r14, %rcx
	.loc 1 168 2481 discriminator 112 view .LVU1162
	orq	%rcx, %r8
	movq	%r8, -112(%rsp)
	movq	$-256, %r15
	subq	%rdx, %r15
	.loc 1 168 2723 discriminator 112 view .LVU1163
	cmpq	$63, %r15
	ja	.L555
	.loc 1 168 2723 discriminator 113 view .LVU1164
	movq	40(%rsi), %r14
	movl	%eax, %ecx
	salq	%cl, %r14
	movq	%r14, -104(%rsp)
.L385:
	.loc 1 168 2723 discriminator 113 view .LVU1165
	movq	$-193, %r14
	subq	%rdx, %r14
	.loc 1 168 2812 discriminator 116 view .LVU1166
	cmpq	$62, %r14
	ja	.L556
	.loc 1 168 2838 discriminator 117 view .LVU1167
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 168 2812 discriminator 117 view .LVU1168
	movq	40(%rsi), %r8
	shrq	%cl, %r8
	movq	%r8, %rcx
.L386:
	.loc 1 168 2758 discriminator 120 view .LVU1169
	addq	-104(%rsp), %rcx
	.loc 1 168 2669 discriminator 120 view .LVU1170
	movq	-112(%rsp), %r8
	orq	%rcx, %r8
	.loc 1 168 1887 discriminator 120 view .LVU1171
	movq	%r8, -88(%rsp)
	.loc 1 168 2850 is_stmt 1 discriminator 120 view .LVU1172
	.loc 1 168 2912 is_stmt 0 discriminator 120 view .LVU1173
	cmpq	$63, %rax
	ja	.L557
	.loc 1 168 2912 discriminator 121 view .LVU1174
	movq	(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L387:
	.loc 1 168 3011 discriminator 124 view .LVU1175
	cmpq	$62, %r9
	ja	.L558
	.loc 1 168 3011 discriminator 125 view .LVU1176
	movq	(%rsi), %r9
	movl	%edx, %ecx
	shrq	%cl, %r9
.L388:
	.loc 1 168 2961 discriminator 128 view .LVU1177
	addq	%r8, %r9
	.loc 1 168 3114 discriminator 128 view .LVU1178
	cmpq	$63, %r10
	ja	.L559
	.loc 1 168 3153 discriminator 129 view .LVU1179
	leal	-64(%rax), %ecx
	.loc 1 168 3114 discriminator 129 view .LVU1180
	movq	8(%rsi), %r8
	salq	%cl, %r8
.L389:
	.loc 1 168 3212 discriminator 132 view .LVU1181
	cmpq	$62, %r13
	ja	.L560
	.loc 1 168 3249 discriminator 133 view .LVU1182
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 168 3212 discriminator 133 view .LVU1183
	movq	8(%rsi), %r10
	shrq	%cl, %r10
	movq	%r10, %rcx
.L390:
	.loc 1 168 3160 discriminator 136 view .LVU1184
	addq	%rcx, %r8
	.loc 1 168 3062 discriminator 136 view .LVU1185
	orq	%r9, %r8
	.loc 1 168 3314 discriminator 136 view .LVU1186
	cmpq	$63, %rbx
	ja	.L561
	.loc 1 168 3349 discriminator 137 view .LVU1187
	leal	-128(%rax), %ecx
	.loc 1 168 3314 discriminator 137 view .LVU1188
	movq	16(%rsi), %r10
	salq	%cl, %r10
.L391:
	.loc 1 168 3411 discriminator 140 view .LVU1189
	cmpq	$62, %r11
	ja	.L562
	.loc 1 168 3445 discriminator 141 view .LVU1190
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 168 3411 discriminator 141 view .LVU1191
	movq	16(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L392:
	.loc 1 168 3357 discriminator 144 view .LVU1192
	addq	%rcx, %r10
	.loc 1 168 3260 discriminator 144 view .LVU1193
	orq	%r8, %r10
	.loc 1 168 3510 discriminator 144 view .LVU1194
	cmpq	$63, %r12
	ja	.L563
	.loc 1 168 3541 discriminator 145 view .LVU1195
	leal	-192(%rax), %ecx
	.loc 1 168 3510 discriminator 145 view .LVU1196
	movq	24(%rsi), %r9
	salq	%cl, %r9
.L393:
	.loc 1 168 3603 discriminator 148 view .LVU1197
	cmpq	$62, %rbp
	ja	.L564
	.loc 1 168 3633 discriminator 149 view .LVU1198
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 168 3603 discriminator 149 view .LVU1199
	movq	24(%rsi), %r8
	shrq	%cl, %r8
.L394:
	.loc 1 168 3549 discriminator 152 view .LVU1200
	addq	%r8, %r9
	.loc 1 168 3456 discriminator 152 view .LVU1201
	orq	%r9, %r10
	movq	%r10, %r8
	.loc 1 168 3698 discriminator 152 view .LVU1202
	cmpq	$63, %r15
	ja	.L565
	.loc 1 168 3698 discriminator 153 view .LVU1203
	movq	32(%rsi), %r9
	movl	%eax, %ecx
	salq	%cl, %r9
.L395:
	.loc 1 168 3787 discriminator 156 view .LVU1204
	cmpq	$62, %r14
	ja	.L566
	.loc 1 168 3813 discriminator 157 view .LVU1205
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 168 3787 discriminator 157 view .LVU1206
	movq	32(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L396:
	.loc 1 168 3733 discriminator 160 view .LVU1207
	addq	%rcx, %r9
	.loc 1 168 3644 discriminator 160 view .LVU1208
	orq	%r9, %r8
	.loc 1 168 3878 discriminator 160 view .LVU1209
	movq	$-320, %rcx
	subq	%rdx, %rcx
	cmpq	$63, %rcx
	ja	.L567
	.loc 1 168 3901 discriminator 161 view .LVU1210
	leal	-320(%rax), %ecx
	.loc 1 168 3878 discriminator 161 view .LVU1211
	movq	40(%rsi), %r9
	salq	%cl, %r9
.L397:
	.loc 1 168 3963 discriminator 164 view .LVU1212
	movq	$-257, %rcx
	subq	%rdx, %rcx
	cmpq	$62, %rcx
	ja	.L568
	.loc 1 168 3985 discriminator 165 view .LVU1213
	movl	$320, %ecx
	subl	%eax, %ecx
	.loc 1 168 3963 discriminator 165 view .LVU1214
	movq	40(%rsi), %rax
.LVL41:
	.loc 1 168 3963 discriminator 165 view .LVU1215
	shrq	%cl, %rax
.L398:
	.loc 1 168 3909 discriminator 168 view .LVU1216
	addq	%rax, %r9
	.loc 1 168 3824 discriminator 168 view .LVU1217
	orq	%r8, %r9
	.loc 1 168 2862 discriminator 168 view .LVU1218
	movq	%r9, -96(%rsp)
	.loc 1 168 3996 is_stmt 1 discriminator 168 view .LVU1219
	.loc 1 169 9 discriminator 168 view .LVU1220
	.loc 1 169 16 is_stmt 0 discriminator 168 view .LVU1221
	leaq	384(%rdx), %rax
.LVL42:
	.loc 1 170 9 is_stmt 1 discriminator 168 view .LVU1222
	.loc 1 170 71 is_stmt 0 discriminator 168 view .LVU1223
	cmpq	$63, %rax
	ja	.L569
	.loc 1 170 71 discriminator 1 view .LVU1224
	movq	(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L399:
	.loc 1 170 108 discriminator 4 view .LVU1225
	leaq	447(%rdx), %r9
	.loc 1 170 156 discriminator 4 view .LVU1226
	cmpq	$62, %r9
	ja	.L570
	.loc 1 170 175 discriminator 5 view .LVU1227
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 170 156 discriminator 5 view .LVU1228
	movq	(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L400:
	.loc 1 170 106 discriminator 8 view .LVU1229
	addq	%rcx, %r8
	.loc 1 170 21 discriminator 8 view .LVU1230
	movq	%r8, -48(%rsp)
	.loc 1 170 194 is_stmt 1 discriminator 8 view .LVU1231
	.loc 1 170 256 is_stmt 0 discriminator 8 view .LVU1232
	cmpq	$63, %rax
	ja	.L571
	.loc 1 170 256 discriminator 9 view .LVU1233
	movq	8(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L401:
	.loc 1 170 345 discriminator 12 view .LVU1234
	cmpq	$62, %r9
	ja	.L572
	.loc 1 170 368 discriminator 13 view .LVU1235
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 170 345 discriminator 13 view .LVU1236
	movq	8(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L402:
	.loc 1 170 295 discriminator 16 view .LVU1237
	addq	%rcx, %r8
	.loc 1 170 389 discriminator 16 view .LVU1238
	leaq	320(%rdx), %r11
	.loc 1 170 438 discriminator 16 view .LVU1239
	cmpq	$63, %r11
	ja	.L573
	.loc 1 170 467 discriminator 17 view .LVU1240
	leal	-64(%rax), %ecx
	.loc 1 170 438 discriminator 17 view .LVU1241
	movq	(%rsi), %rbx
	shrq	%cl, %rbx
.L403:
	.loc 1 170 476 discriminator 20 view .LVU1242
	leaq	383(%rdx), %r10
	.loc 1 170 526 discriminator 20 view .LVU1243
	cmpq	$62, %r10
	ja	.L574
	.loc 1 170 553 discriminator 21 view .LVU1244
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 170 526 discriminator 21 view .LVU1245
	movq	(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L404:
	.loc 1 170 474 discriminator 24 view .LVU1246
	addq	%rcx, %rbx
	.loc 1 170 386 discriminator 24 view .LVU1247
	orq	%rbx, %r8
	.loc 1 170 206 discriminator 24 view .LVU1248
	movq	%r8, -40(%rsp)
	.loc 1 170 565 is_stmt 1 discriminator 24 view .LVU1249
	.loc 1 170 627 is_stmt 0 discriminator 24 view .LVU1250
	cmpq	$63, %rax
	ja	.L575
	.loc 1 170 627 discriminator 25 view .LVU1251
	movq	16(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L405:
	.loc 1 170 720 discriminator 28 view .LVU1252
	cmpq	$62, %r9
	ja	.L576
	.loc 1 170 747 discriminator 29 view .LVU1253
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 170 720 discriminator 29 view .LVU1254
	movq	16(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L406:
	.loc 1 170 670 discriminator 32 view .LVU1255
	addq	%rcx, %r8
	.loc 1 170 817 discriminator 32 view .LVU1256
	cmpq	$63, %r11
	ja	.L577
	.loc 1 170 850 discriminator 33 view .LVU1257
	leal	-64(%rax), %ecx
	.loc 1 170 817 discriminator 33 view .LVU1258
	movq	8(%rsi), %rbx
	shrq	%cl, %rbx
.L407:
	.loc 1 170 909 discriminator 36 view .LVU1259
	cmpq	$62, %r10
	ja	.L578
	.loc 1 170 940 discriminator 37 view .LVU1260
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 170 909 discriminator 37 view .LVU1261
	movq	8(%rsi), %r14
	salq	%cl, %r14
	movq	%r14, %rcx
.L408:
	.loc 1 170 857 discriminator 40 view .LVU1262
	addq	%rcx, %rbx
	.loc 1 170 765 discriminator 40 view .LVU1263
	orq	%rbx, %r8
	movq	%r8, %r12
	.loc 1 170 954 discriminator 40 view .LVU1264
	leaq	256(%rdx), %rbp
	.loc 1 170 1005 discriminator 40 view .LVU1265
	cmpq	$63, %rbp
	ja	.L579
	.loc 1 170 1034 discriminator 41 view .LVU1266
	leal	-128(%rax), %ecx
	.loc 1 170 1005 discriminator 41 view .LVU1267
	movq	(%rsi), %r8
	shrq	%cl, %r8
.L409:
	.loc 1 170 1044 discriminator 44 view .LVU1268
	leaq	319(%rdx), %rbx
	.loc 1 170 1096 discriminator 44 view .LVU1269
	cmpq	$62, %rbx
	ja	.L580
	.loc 1 170 1124 discriminator 45 view .LVU1270
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 170 1096 discriminator 45 view .LVU1271
	movq	(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L410:
	.loc 1 170 1042 discriminator 48 view .LVU1272
	addq	%rcx, %r8
	.loc 1 170 951 discriminator 48 view .LVU1273
	orq	%r12, %r8
	.loc 1 170 577 discriminator 48 view .LVU1274
	movq	%r8, -32(%rsp)
	.loc 1 170 1136 is_stmt 1 discriminator 48 view .LVU1275
	.loc 1 170 1198 is_stmt 0 discriminator 48 view .LVU1276
	cmpq	$63, %rax
	ja	.L581
	.loc 1 170 1198 discriminator 49 view .LVU1277
	movq	24(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L411:
	.loc 1 170 1295 discriminator 52 view .LVU1278
	cmpq	$62, %r9
	ja	.L582
	.loc 1 170 1326 discriminator 53 view .LVU1279
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 170 1295 discriminator 53 view .LVU1280
	movq	24(%rsi), %r14
	salq	%cl, %r14
	movq	%r14, %rcx
.L412:
	.loc 1 170 1245 discriminator 56 view .LVU1281
	addq	%rcx, %r8
	.loc 1 170 1396 discriminator 56 view .LVU1282
	cmpq	$63, %r11
	ja	.L583
	.loc 1 170 1433 discriminator 57 view .LVU1283
	leal	-64(%rax), %ecx
	.loc 1 170 1396 discriminator 57 view .LVU1284
	movq	16(%rsi), %r12
	shrq	%cl, %r12
.L413:
	.loc 1 170 1492 discriminator 60 view .LVU1285
	cmpq	$62, %r10
	ja	.L584
	.loc 1 170 1527 discriminator 61 view .LVU1286
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 170 1492 discriminator 61 view .LVU1287
	movq	16(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L414:
	.loc 1 170 1440 discriminator 64 view .LVU1288
	addq	%rcx, %r12
	.loc 1 170 1344 discriminator 64 view .LVU1289
	orq	%r8, %r12
	.loc 1 170 1592 discriminator 64 view .LVU1290
	cmpq	$63, %rbp
	ja	.L585
	.loc 1 170 1625 discriminator 65 view .LVU1291
	leal	-128(%rax), %ecx
	.loc 1 170 1592 discriminator 65 view .LVU1292
	movq	8(%rsi), %r8
	shrq	%cl, %r8
.L415:
	.loc 1 170 1687 discriminator 68 view .LVU1293
	cmpq	$62, %rbx
	ja	.L586
	.loc 1 170 1719 discriminator 69 view .LVU1294
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 170 1687 discriminator 69 view .LVU1295
	movq	8(%rsi), %r14
	salq	%cl, %r14
	movq	%r14, %rcx
.L416:
	.loc 1 170 1633 discriminator 72 view .LVU1296
	addq	%rcx, %r8
	.loc 1 170 1538 discriminator 72 view .LVU1297
	orq	%r12, %r8
	.loc 1 170 1733 discriminator 72 view .LVU1298
	leaq	192(%rdx), %r13
	.loc 1 170 1784 discriminator 72 view .LVU1299
	cmpq	$63, %r13
	ja	.L587
	.loc 1 170 1813 discriminator 73 view .LVU1300
	leal	-192(%rax), %ecx
	.loc 1 170 1784 discriminator 73 view .LVU1301
	movq	(%rsi), %r14
	shrq	%cl, %r14
.L417:
	.loc 1 170 1823 discriminator 76 view .LVU1302
	leaq	255(%rdx), %r12
	.loc 1 170 1875 discriminator 76 view .LVU1303
	cmpq	$62, %r12
	ja	.L588
	.loc 1 170 1903 discriminator 77 view .LVU1304
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 170 1875 discriminator 77 view .LVU1305
	movq	(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L418:
	.loc 1 170 1821 discriminator 80 view .LVU1306
	addq	%r14, %rcx
	.loc 1 170 1730 discriminator 80 view .LVU1307
	orq	%rcx, %r8
	.loc 1 170 1148 discriminator 80 view .LVU1308
	movq	%r8, -24(%rsp)
	.loc 1 170 1915 is_stmt 1 discriminator 80 view .LVU1309
	.loc 1 170 1977 is_stmt 0 discriminator 80 view .LVU1310
	cmpq	$63, %rax
	ja	.L589
	.loc 1 170 1977 discriminator 81 view .LVU1311
	movq	32(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L419:
	.loc 1 170 2078 discriminator 84 view .LVU1312
	cmpq	$62, %r9
	ja	.L590
	.loc 1 170 2113 discriminator 85 view .LVU1313
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 170 2078 discriminator 85 view .LVU1314
	movq	32(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L420:
	.loc 1 170 2028 discriminator 88 view .LVU1315
	addq	%rcx, %r8
	.loc 1 170 2183 discriminator 88 view .LVU1316
	cmpq	$63, %r11
	ja	.L591
	.loc 1 170 2224 discriminator 89 view .LVU1317
	leal	-64(%rax), %ecx
	.loc 1 170 2183 discriminator 89 view .LVU1318
	movq	24(%rsi), %r14
	shrq	%cl, %r14
.L421:
	.loc 1 170 2283 discriminator 92 view .LVU1319
	cmpq	$62, %r10
	ja	.L592
	.loc 1 170 2322 discriminator 93 view .LVU1320
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 170 2283 discriminator 93 view .LVU1321
	movq	24(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L422:
	.loc 1 170 2231 discriminator 96 view .LVU1322
	addq	%r14, %rcx
	.loc 1 170 2131 discriminator 96 view .LVU1323
	orq	%rcx, %r8
	.loc 1 170 2387 discriminator 96 view .LVU1324
	cmpq	$63, %rbp
	ja	.L593
	.loc 1 170 2424 discriminator 97 view .LVU1325
	leal	-128(%rax), %ecx
	.loc 1 170 2387 discriminator 97 view .LVU1326
	movq	16(%rsi), %r14
	shrq	%cl, %r14
.L423:
	.loc 1 170 2486 discriminator 100 view .LVU1327
	cmpq	$62, %rbx
	ja	.L594
	.loc 1 170 2522 discriminator 101 view .LVU1328
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 170 2486 discriminator 101 view .LVU1329
	movq	16(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L424:
	.loc 1 170 2432 discriminator 104 view .LVU1330
	addq	%r14, %rcx
	.loc 1 170 2333 discriminator 104 view .LVU1331
	orq	%rcx, %r8
	.loc 1 170 2587 discriminator 104 view .LVU1332
	cmpq	$63, %r13
	ja	.L595
	.loc 1 170 2620 discriminator 105 view .LVU1333
	leal	-192(%rax), %ecx
	.loc 1 170 2587 discriminator 105 view .LVU1334
	movq	8(%rsi), %r14
	shrq	%cl, %r14
.L425:
	.loc 1 170 2682 discriminator 108 view .LVU1335
	cmpq	$62, %r12
	ja	.L596
	.loc 1 170 2714 discriminator 109 view .LVU1336
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 170 2682 discriminator 109 view .LVU1337
	movq	8(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L426:
	.loc 1 170 2628 discriminator 112 view .LVU1338
	addq	%r14, %rcx
	.loc 1 170 2533 discriminator 112 view .LVU1339
	orq	%rcx, %r8
	movq	%r8, -112(%rsp)
	.loc 1 170 2728 discriminator 112 view .LVU1340
	leaq	128(%rdx), %r15
	.loc 1 170 2779 discriminator 112 view .LVU1341
	cmpq	$63, %r15
	ja	.L597
	.loc 1 170 2779 discriminator 113 view .LVU1342
	movq	(%rsi), %r14
	movl	%eax, %ecx
	shrq	%cl, %r14
	movq	%r14, -104(%rsp)
.L427:
	.loc 1 170 2818 discriminator 116 view .LVU1343
	leaq	191(%rdx), %r14
	.loc 1 170 2870 discriminator 116 view .LVU1344
	cmpq	$62, %r14
	ja	.L598
	.loc 1 170 2898 discriminator 117 view .LVU1345
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 170 2870 discriminator 117 view .LVU1346
	movq	(%rsi), %r8
	salq	%cl, %r8
	movq	%r8, %rcx
.L428:
	.loc 1 170 2816 discriminator 120 view .LVU1347
	addq	-104(%rsp), %rcx
	.loc 1 170 2725 discriminator 120 view .LVU1348
	movq	-112(%rsp), %r8
	orq	%rcx, %r8
	.loc 1 170 1927 discriminator 120 view .LVU1349
	movq	%r8, -16(%rsp)
	.loc 1 170 2910 is_stmt 1 discriminator 120 view .LVU1350
	.loc 1 170 2972 is_stmt 0 discriminator 120 view .LVU1351
	cmpq	$63, %rax
	ja	.L599
	.loc 1 170 2972 discriminator 121 view .LVU1352
	movq	40(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L429:
	.loc 1 170 3073 discriminator 124 view .LVU1353
	cmpq	$62, %r9
	ja	.L600
	.loc 1 170 3108 discriminator 125 view .LVU1354
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 170 3073 discriminator 125 view .LVU1355
	movq	40(%rsi), %r9
	salq	%cl, %r9
.L430:
	.loc 1 170 3023 discriminator 128 view .LVU1356
	addq	%r8, %r9
	.loc 1 170 3178 discriminator 128 view .LVU1357
	cmpq	$63, %r11
	ja	.L601
	.loc 1 170 3219 discriminator 129 view .LVU1358
	leal	-64(%rax), %ecx
	.loc 1 170 3178 discriminator 129 view .LVU1359
	movq	32(%rsi), %r8
	shrq	%cl, %r8
.L431:
	.loc 1 170 3278 discriminator 132 view .LVU1360
	cmpq	$62, %r10
	ja	.L602
	.loc 1 170 3317 discriminator 133 view .LVU1361
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 170 3278 discriminator 133 view .LVU1362
	movq	32(%rsi), %r10
	salq	%cl, %r10
	movq	%r10, %rcx
.L432:
	.loc 1 170 3226 discriminator 136 view .LVU1363
	addq	%rcx, %r8
	.loc 1 170 3126 discriminator 136 view .LVU1364
	movq	%r9, %r10
	orq	%r8, %r10
	.loc 1 170 3382 discriminator 136 view .LVU1365
	cmpq	$63, %rbp
	ja	.L603
	.loc 1 170 3419 discriminator 137 view .LVU1366
	leal	-128(%rax), %ecx
	.loc 1 170 3382 discriminator 137 view .LVU1367
	movq	24(%rsi), %r9
	shrq	%cl, %r9
.L433:
	.loc 1 170 3481 discriminator 140 view .LVU1368
	cmpq	$62, %rbx
	ja	.L604
	.loc 1 170 3517 discriminator 141 view .LVU1369
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 170 3481 discriminator 141 view .LVU1370
	movq	24(%rsi), %r8
	salq	%cl, %r8
.L434:
	.loc 1 170 3427 discriminator 144 view .LVU1371
	addq	%r9, %r8
	.loc 1 170 3328 discriminator 144 view .LVU1372
	orq	%r10, %r8
	.loc 1 170 3582 discriminator 144 view .LVU1373
	cmpq	$63, %r13
	ja	.L605
	.loc 1 170 3615 discriminator 145 view .LVU1374
	leal	-192(%rax), %ecx
	.loc 1 170 3582 discriminator 145 view .LVU1375
	movq	16(%rsi), %r9
	shrq	%cl, %r9
.L435:
	.loc 1 170 3677 discriminator 148 view .LVU1376
	cmpq	$62, %r12
	ja	.L606
	.loc 1 170 3709 discriminator 149 view .LVU1377
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 170 3677 discriminator 149 view .LVU1378
	movq	16(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L436:
	.loc 1 170 3623 discriminator 152 view .LVU1379
	addq	%rcx, %r9
	.loc 1 170 3528 discriminator 152 view .LVU1380
	orq	%r9, %r8
	.loc 1 170 3774 discriminator 152 view .LVU1381
	cmpq	$63, %r15
	ja	.L607
	.loc 1 170 3774 discriminator 153 view .LVU1382
	movq	8(%rsi), %r9
	movl	%eax, %ecx
	shrq	%cl, %r9
.L437:
	.loc 1 170 3865 discriminator 156 view .LVU1383
	cmpq	$62, %r14
	ja	.L608
	.loc 1 170 3893 discriminator 157 view .LVU1384
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 170 3865 discriminator 157 view .LVU1385
	movq	8(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L438:
	.loc 1 170 3811 discriminator 160 view .LVU1386
	addq	%rcx, %r9
	.loc 1 170 3720 discriminator 160 view .LVU1387
	orq	%r9, %r8
	.loc 1 170 3958 discriminator 160 view .LVU1388
	cmpq	$-64, %rdx
	jb	.L609
	.loc 1 170 3983 discriminator 161 view .LVU1389
	leal	-320(%rax), %ecx
	.loc 1 170 3958 discriminator 161 view .LVU1390
	movq	(%rsi), %r9
	shrq	%cl, %r9
.L439:
	.loc 1 170 3993 discriminator 164 view .LVU1391
	addq	$127, %rdx
	.loc 1 170 4045 discriminator 164 view .LVU1392
	cmpq	$62, %rdx
	ja	.L610
	.loc 1 170 4053 discriminator 165 view .LVU1393
	movq	(%rsi), %rdx
	.loc 1 170 4069 discriminator 165 view .LVU1394
	movl	$320, %ecx
	subl	%eax, %ecx
	.loc 1 170 4045 discriminator 165 view .LVU1395
	movq	%rdx, %rax
.LVL43:
	.loc 1 170 4045 discriminator 165 view .LVU1396
	salq	%cl, %rax
.L440:
	.loc 1 170 3991 discriminator 168 view .LVU1397
	addq	%rax, %r9
	.loc 1 170 3904 discriminator 168 view .LVU1398
	orq	%r9, %r8
	.loc 1 170 2922 discriminator 168 view .LVU1399
	movq	%r8, -8(%rsp)
	.loc 1 170 4080 is_stmt 1 discriminator 168 view .LVU1400
	jmp	.L441
.LVL44:
.L527:
	.loc 1 168 71 is_stmt 0 view .LVU1401
	movl	$0, %r8d
	jmp	.L357
.L528:
	.loc 1 168 154 view .LVU1402
	movl	$0, %ecx
	jmp	.L358
.L529:
	.loc 1 168 252 view .LVU1403
	movl	$0, %r8d
	jmp	.L359
.L530:
	.loc 1 168 339 view .LVU1404
	movl	$0, %ecx
	jmp	.L360
.L531:
	.loc 1 168 430 view .LVU1405
	movl	$0, %r11d
	jmp	.L361
.L532:
	.loc 1 168 516 view .LVU1406
	movl	$0, %ecx
	jmp	.L362
.L533:
	.loc 1 168 615 view .LVU1407
	movl	$0, %r11d
	jmp	.L363
.L534:
	.loc 1 168 706 view .LVU1408
	movl	$0, %ecx
	jmp	.L364
.L535:
	.loc 1 168 801 view .LVU1409
	movl	$0, %r8d
	jmp	.L365
.L536:
	.loc 1 168 891 view .LVU1410
	movl	$0, %ecx
	jmp	.L366
.L537:
	.loc 1 168 985 view .LVU1411
	movl	$0, %ebp
	jmp	.L367
.L538:
	.loc 1 168 1074 view .LVU1412
	movl	$0, %ecx
	jmp	.L368
.L539:
	.loc 1 168 1174 view .LVU1413
	movl	$0, %r8d
	jmp	.L369
.L540:
	.loc 1 168 1269 view .LVU1414
	movl	$0, %ecx
	jmp	.L370
.L541:
	.loc 1 168 1368 view .LVU1415
	movl	$0, %ebp
	jmp	.L371
.L542:
	.loc 1 168 1462 view .LVU1416
	movl	$0, %ecx
	jmp	.L372
.L543:
	.loc 1 168 1560 view .LVU1417
	movl	$0, %r8d
	jmp	.L373
.L544:
	.loc 1 168 1653 view .LVU1418
	movl	$0, %ecx
	jmp	.L374
.L545:
	.loc 1 168 1748 view .LVU1419
	movl	$0, %r14d
	jmp	.L375
.L546:
	.loc 1 168 1837 view .LVU1420
	movl	$0, %ecx
	jmp	.L376
.L547:
	.loc 1 168 1937 view .LVU1421
	movl	$0, %r8d
	jmp	.L377
.L548:
	.loc 1 168 2036 view .LVU1422
	movl	$0, %ecx
	jmp	.L378
.L549:
	.loc 1 168 2139 view .LVU1423
	movl	$0, %r14d
	jmp	.L379
.L550:
	.loc 1 168 2237 view .LVU1424
	movl	$0, %ecx
	jmp	.L380
.L551:
	.loc 1 168 2339 view .LVU1425
	movl	$0, %r14d
	jmp	.L381
.L552:
	.loc 1 168 2436 view .LVU1426
	movl	$0, %ecx
	jmp	.L382
.L553:
	.loc 1 168 2535 view .LVU1427
	movl	$0, %r14d
	jmp	.L383
.L554:
	.loc 1 168 2628 view .LVU1428
	movl	$0, %ecx
	jmp	.L384
.L555:
	.loc 1 168 2723 view .LVU1429
	movq	$0, -104(%rsp)
	jmp	.L385
.L556:
	.loc 1 168 2812 view .LVU1430
	movl	$0, %ecx
	jmp	.L386
.L557:
	.loc 1 168 2912 view .LVU1431
	movl	$0, %r8d
	jmp	.L387
.L558:
	.loc 1 168 3011 view .LVU1432
	movl	$0, %r9d
	jmp	.L388
.L559:
	.loc 1 168 3114 view .LVU1433
	movl	$0, %r8d
	jmp	.L389
.L560:
	.loc 1 168 3212 view .LVU1434
	movl	$0, %ecx
	jmp	.L390
.L561:
	.loc 1 168 3314 view .LVU1435
	movl	$0, %r10d
	jmp	.L391
.L562:
	.loc 1 168 3411 view .LVU1436
	movl	$0, %ecx
	jmp	.L392
.L563:
	.loc 1 168 3510 view .LVU1437
	movl	$0, %r9d
	jmp	.L393
.L564:
	.loc 1 168 3603 view .LVU1438
	movl	$0, %r8d
	jmp	.L394
.L565:
	.loc 1 168 3698 view .LVU1439
	movl	$0, %r9d
	jmp	.L395
.L566:
	.loc 1 168 3787 view .LVU1440
	movl	$0, %ecx
	jmp	.L396
.L567:
	.loc 1 168 3878 view .LVU1441
	movl	$0, %r9d
	jmp	.L397
.L568:
	.loc 1 168 3963 view .LVU1442
	movl	$0, %eax
.LVL45:
	.loc 1 168 3963 view .LVU1443
	jmp	.L398
.LVL46:
.L569:
	.loc 1 170 71 view .LVU1444
	movl	$0, %r8d
	jmp	.L399
.L570:
	.loc 1 170 156 view .LVU1445
	movl	$0, %ecx
	jmp	.L400
.L571:
	.loc 1 170 256 view .LVU1446
	movl	$0, %r8d
	jmp	.L401
.L572:
	.loc 1 170 345 view .LVU1447
	movl	$0, %ecx
	jmp	.L402
.L573:
	.loc 1 170 438 view .LVU1448
	movl	$0, %ebx
	jmp	.L403
.L574:
	.loc 1 170 526 view .LVU1449
	movl	$0, %ecx
	jmp	.L404
.L575:
	.loc 1 170 627 view .LVU1450
	movl	$0, %r8d
	jmp	.L405
.L576:
	.loc 1 170 720 view .LVU1451
	movl	$0, %ecx
	jmp	.L406
.L577:
	.loc 1 170 817 view .LVU1452
	movl	$0, %ebx
	jmp	.L407
.L578:
	.loc 1 170 909 view .LVU1453
	movl	$0, %ecx
	jmp	.L408
.L579:
	.loc 1 170 1005 view .LVU1454
	movl	$0, %r8d
	jmp	.L409
.L580:
	.loc 1 170 1096 view .LVU1455
	movl	$0, %ecx
	jmp	.L410
.L581:
	.loc 1 170 1198 view .LVU1456
	movl	$0, %r8d
	jmp	.L411
.L582:
	.loc 1 170 1295 view .LVU1457
	movl	$0, %ecx
	jmp	.L412
.L583:
	.loc 1 170 1396 view .LVU1458
	movl	$0, %r12d
	jmp	.L413
.L584:
	.loc 1 170 1492 view .LVU1459
	movl	$0, %ecx
	jmp	.L414
.L585:
	.loc 1 170 1592 view .LVU1460
	movl	$0, %r8d
	jmp	.L415
.L586:
	.loc 1 170 1687 view .LVU1461
	movl	$0, %ecx
	jmp	.L416
.L587:
	.loc 1 170 1784 view .LVU1462
	movl	$0, %r14d
	jmp	.L417
.L588:
	.loc 1 170 1875 view .LVU1463
	movl	$0, %ecx
	jmp	.L418
.L589:
	.loc 1 170 1977 view .LVU1464
	movl	$0, %r8d
	jmp	.L419
.L590:
	.loc 1 170 2078 view .LVU1465
	movl	$0, %ecx
	jmp	.L420
.L591:
	.loc 1 170 2183 view .LVU1466
	movl	$0, %r14d
	jmp	.L421
.L592:
	.loc 1 170 2283 view .LVU1467
	movl	$0, %ecx
	jmp	.L422
.L593:
	.loc 1 170 2387 view .LVU1468
	movl	$0, %r14d
	jmp	.L423
.L594:
	.loc 1 170 2486 view .LVU1469
	movl	$0, %ecx
	jmp	.L424
.L595:
	.loc 1 170 2587 view .LVU1470
	movl	$0, %r14d
	jmp	.L425
.L596:
	.loc 1 170 2682 view .LVU1471
	movl	$0, %ecx
	jmp	.L426
.L597:
	.loc 1 170 2779 view .LVU1472
	movq	$0, -104(%rsp)
	jmp	.L427
.L598:
	.loc 1 170 2870 view .LVU1473
	movl	$0, %ecx
	jmp	.L428
.L599:
	.loc 1 170 2972 view .LVU1474
	movl	$0, %r8d
	jmp	.L429
.L600:
	.loc 1 170 3073 view .LVU1475
	movl	$0, %r9d
	jmp	.L430
.L601:
	.loc 1 170 3178 view .LVU1476
	movl	$0, %r8d
	jmp	.L431
.L602:
	.loc 1 170 3278 view .LVU1477
	movl	$0, %ecx
	jmp	.L432
.L603:
	.loc 1 170 3382 view .LVU1478
	movl	$0, %r9d
	jmp	.L433
.L604:
	.loc 1 170 3481 view .LVU1479
	movl	$0, %r8d
	jmp	.L434
.L605:
	.loc 1 170 3582 view .LVU1480
	movl	$0, %r9d
	jmp	.L435
.L606:
	.loc 1 170 3677 view .LVU1481
	movl	$0, %ecx
	jmp	.L436
.L607:
	.loc 1 170 3774 view .LVU1482
	movl	$0, %r9d
	jmp	.L437
.L608:
	.loc 1 170 3865 view .LVU1483
	movl	$0, %ecx
	jmp	.L438
.L609:
	.loc 1 170 3958 view .LVU1484
	movl	$0, %r9d
	jmp	.L439
.L610:
	.loc 1 170 4045 view .LVU1485
	movl	$0, %eax
.LVL47:
	.loc 1 170 4045 view .LVU1486
	jmp	.L440
.LVL48:
.L611:
	.loc 1 174 71 view .LVU1487
	movl	$0, %eax
.L442:
	.loc 1 174 108 discriminator 4 view .LVU1488
	leaq	63(%rdx), %r10
	.loc 1 174 156 discriminator 4 view .LVU1489
	cmpq	$-63, %rdx
	jb	.L612
	.loc 1 174 175 discriminator 5 view .LVU1490
	movl	%edx, %ecx
	negl	%ecx
	.loc 1 174 156 discriminator 5 view .LVU1491
	movq	(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L443
.L612:
	.loc 1 174 156 view .LVU1492
	movl	$0, %ecx
.L443:
	.loc 1 174 106 discriminator 8 view .LVU1493
	addq	%rcx, %rax
	.loc 1 174 21 discriminator 8 view .LVU1494
	movq	%rax, -48(%rsp)
	.loc 1 174 194 is_stmt 1 discriminator 8 view .LVU1495
	.loc 1 174 256 is_stmt 0 discriminator 8 view .LVU1496
	cmpq	$63, %rdx
	ja	.L613
	.loc 1 174 256 discriminator 9 view .LVU1497
	movq	8(%rsi), %rax
	movl	%edx, %ecx
	shrq	%cl, %rax
	jmp	.L444
.L613:
	.loc 1 174 256 view .LVU1498
	movl	$0, %eax
.L444:
	.loc 1 174 345 discriminator 12 view .LVU1499
	cmpq	$62, %r10
	ja	.L614
	.loc 1 174 368 discriminator 13 view .LVU1500
	movl	%edx, %ecx
	negl	%ecx
	.loc 1 174 345 discriminator 13 view .LVU1501
	movq	8(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L445
.L614:
	.loc 1 174 345 view .LVU1502
	movl	$0, %ecx
.L445:
	.loc 1 174 295 discriminator 16 view .LVU1503
	addq	%rcx, %rax
	.loc 1 174 389 discriminator 16 view .LVU1504
	leaq	-64(%rdx), %r9
	.loc 1 174 438 discriminator 16 view .LVU1505
	cmpq	$63, %r9
	ja	.L615
	.loc 1 174 467 discriminator 17 view .LVU1506
	leal	-64(%rdx), %ecx
	.loc 1 174 438 discriminator 17 view .LVU1507
	movq	(%rsi), %r11
	shrq	%cl, %r11
	jmp	.L446
.L615:
	.loc 1 174 438 view .LVU1508
	movl	$0, %r11d
.L446:
	.loc 1 174 476 discriminator 20 view .LVU1509
	leaq	-1(%rdx), %r8
	.loc 1 174 526 discriminator 20 view .LVU1510
	cmpq	$62, %r8
	ja	.L616
	.loc 1 174 553 discriminator 21 view .LVU1511
	movl	$64, %ecx
	subl	%edx, %ecx
	.loc 1 174 526 discriminator 21 view .LVU1512
	movq	(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L447
.L616:
	.loc 1 174 526 view .LVU1513
	movl	$0, %ecx
.L447:
	.loc 1 174 474 discriminator 24 view .LVU1514
	addq	%rcx, %r11
	.loc 1 174 386 discriminator 24 view .LVU1515
	orq	%r11, %rax
	.loc 1 174 206 discriminator 24 view .LVU1516
	movq	%rax, -40(%rsp)
	.loc 1 174 565 is_stmt 1 discriminator 24 view .LVU1517
	.loc 1 174 627 is_stmt 0 discriminator 24 view .LVU1518
	cmpq	$63, %rdx
	ja	.L617
	.loc 1 174 627 discriminator 25 view .LVU1519
	movq	16(%rsi), %rax
	movl	%edx, %ecx
	shrq	%cl, %rax
	jmp	.L448
.L617:
	.loc 1 174 627 view .LVU1520
	movl	$0, %eax
.L448:
	.loc 1 174 720 discriminator 28 view .LVU1521
	cmpq	$62, %r10
	ja	.L618
	.loc 1 174 747 discriminator 29 view .LVU1522
	movl	%edx, %ecx
	negl	%ecx
	.loc 1 174 720 discriminator 29 view .LVU1523
	movq	16(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L449
.L618:
	.loc 1 174 720 view .LVU1524
	movl	$0, %ecx
.L449:
	.loc 1 174 670 discriminator 32 view .LVU1525
	addq	%rcx, %rax
	.loc 1 174 817 discriminator 32 view .LVU1526
	cmpq	$63, %r9
	ja	.L619
	.loc 1 174 850 discriminator 33 view .LVU1527
	leal	-64(%rdx), %ecx
	.loc 1 174 817 discriminator 33 view .LVU1528
	movq	8(%rsi), %r11
	shrq	%cl, %r11
	jmp	.L450
.L619:
	.loc 1 174 817 view .LVU1529
	movl	$0, %r11d
.L450:
	.loc 1 174 909 discriminator 36 view .LVU1530
	cmpq	$62, %r8
	ja	.L620
	.loc 1 174 940 discriminator 37 view .LVU1531
	movl	$64, %ecx
	subl	%edx, %ecx
	.loc 1 174 909 discriminator 37 view .LVU1532
	movq	8(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L451
.L620:
	.loc 1 174 909 view .LVU1533
	movl	$0, %ecx
.L451:
	.loc 1 174 857 discriminator 40 view .LVU1534
	addq	%rcx, %r11
	.loc 1 174 765 discriminator 40 view .LVU1535
	orq	%rax, %r11
	.loc 1 174 954 discriminator 40 view .LVU1536
	leaq	-128(%rdx), %r14
	.loc 1 174 1005 discriminator 40 view .LVU1537
	cmpq	$63, %r14
	ja	.L621
	.loc 1 174 1034 discriminator 41 view .LVU1538
	leal	-128(%rdx), %ecx
	.loc 1 174 1005 discriminator 41 view .LVU1539
	movq	(%rsi), %rax
	shrq	%cl, %rax
	jmp	.L452
.L621:
	.loc 1 174 1005 view .LVU1540
	movl	$0, %eax
.L452:
	.loc 1 174 1044 discriminator 44 view .LVU1541
	leaq	-65(%rdx), %r13
	.loc 1 174 1096 discriminator 44 view .LVU1542
	cmpq	$62, %r13
	ja	.L622
	.loc 1 174 1124 discriminator 45 view .LVU1543
	movl	$128, %ecx
	subl	%edx, %ecx
	.loc 1 174 1096 discriminator 45 view .LVU1544
	movq	(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L453
.L622:
	.loc 1 174 1096 view .LVU1545
	movl	$0, %ecx
.L453:
	.loc 1 174 1042 discriminator 48 view .LVU1546
	addq	%rcx, %rax
	.loc 1 174 951 discriminator 48 view .LVU1547
	orq	%r11, %rax
	.loc 1 174 577 discriminator 48 view .LVU1548
	movq	%rax, -32(%rsp)
	.loc 1 174 1136 is_stmt 1 discriminator 48 view .LVU1549
	.loc 1 174 1198 is_stmt 0 discriminator 48 view .LVU1550
	cmpq	$63, %rdx
	ja	.L623
	.loc 1 174 1198 discriminator 49 view .LVU1551
	movq	24(%rsi), %r11
	movl	%edx, %ecx
	shrq	%cl, %r11
	jmp	.L454
.L623:
	.loc 1 174 1198 view .LVU1552
	movl	$0, %r11d
.L454:
	.loc 1 174 1295 discriminator 52 view .LVU1553
	cmpq	$62, %r10
	ja	.L624
	.loc 1 174 1326 discriminator 53 view .LVU1554
	movl	%edx, %ecx
	negl	%ecx
	.loc 1 174 1295 discriminator 53 view .LVU1555
	movq	24(%rsi), %rax
	salq	%cl, %rax
	jmp	.L455
.L624:
	.loc 1 174 1295 view .LVU1556
	movl	$0, %eax
.L455:
	.loc 1 174 1245 discriminator 56 view .LVU1557
	addq	%r11, %rax
	.loc 1 174 1396 discriminator 56 view .LVU1558
	cmpq	$63, %r9
	ja	.L625
	.loc 1 174 1433 discriminator 57 view .LVU1559
	leal	-64(%rdx), %ecx
	.loc 1 174 1396 discriminator 57 view .LVU1560
	movq	16(%rsi), %r11
	shrq	%cl, %r11
	jmp	.L456
.L625:
	.loc 1 174 1396 view .LVU1561
	movl	$0, %r11d
.L456:
	.loc 1 174 1492 discriminator 60 view .LVU1562
	cmpq	$62, %r8
	ja	.L626
	.loc 1 174 1527 discriminator 61 view .LVU1563
	movl	$64, %ecx
	subl	%edx, %ecx
	.loc 1 174 1492 discriminator 61 view .LVU1564
	movq	16(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L457
.L626:
	.loc 1 174 1492 view .LVU1565
	movl	$0, %ecx
.L457:
	.loc 1 174 1440 discriminator 64 view .LVU1566
	addq	%rcx, %r11
	.loc 1 174 1344 discriminator 64 view .LVU1567
	orq	%r11, %rax
	.loc 1 174 1592 discriminator 64 view .LVU1568
	cmpq	$63, %r14
	ja	.L627
	.loc 1 174 1625 discriminator 65 view .LVU1569
	leal	-128(%rdx), %ecx
	.loc 1 174 1592 discriminator 65 view .LVU1570
	movq	8(%rsi), %r11
	shrq	%cl, %r11
	jmp	.L458
.L627:
	.loc 1 174 1592 view .LVU1571
	movl	$0, %r11d
.L458:
	.loc 1 174 1687 discriminator 68 view .LVU1572
	cmpq	$62, %r13
	ja	.L628
	.loc 1 174 1719 discriminator 69 view .LVU1573
	movl	$128, %ecx
	subl	%edx, %ecx
	.loc 1 174 1687 discriminator 69 view .LVU1574
	movq	8(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L459
.L628:
	.loc 1 174 1687 view .LVU1575
	movl	$0, %ecx
.L459:
	.loc 1 174 1633 discriminator 72 view .LVU1576
	addq	%rcx, %r11
	.loc 1 174 1538 discriminator 72 view .LVU1577
	orq	%r11, %rax
	.loc 1 174 1733 discriminator 72 view .LVU1578
	leaq	-192(%rdx), %r12
	.loc 1 174 1784 discriminator 72 view .LVU1579
	cmpq	$63, %r12
	ja	.L629
	.loc 1 174 1813 discriminator 73 view .LVU1580
	leal	-192(%rdx), %ecx
	.loc 1 174 1784 discriminator 73 view .LVU1581
	movq	(%rsi), %r11
	shrq	%cl, %r11
	jmp	.L460
.L629:
	.loc 1 174 1784 view .LVU1582
	movl	$0, %r11d
.L460:
	.loc 1 174 1823 discriminator 76 view .LVU1583
	leaq	-129(%rdx), %rbp
	.loc 1 174 1875 discriminator 76 view .LVU1584
	cmpq	$62, %rbp
	ja	.L630
	.loc 1 174 1903 discriminator 77 view .LVU1585
	movl	$192, %ecx
	subl	%edx, %ecx
	.loc 1 174 1875 discriminator 77 view .LVU1586
	movq	(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L461
.L630:
	.loc 1 174 1875 view .LVU1587
	movl	$0, %ecx
.L461:
	.loc 1 174 1821 discriminator 80 view .LVU1588
	addq	%r11, %rcx
	.loc 1 174 1730 discriminator 80 view .LVU1589
	orq	%rcx, %rax
	.loc 1 174 1148 discriminator 80 view .LVU1590
	movq	%rax, -24(%rsp)
	.loc 1 174 1915 is_stmt 1 discriminator 80 view .LVU1591
	.loc 1 174 1977 is_stmt 0 discriminator 80 view .LVU1592
	cmpq	$63, %rdx
	ja	.L631
	.loc 1 174 1977 discriminator 81 view .LVU1593
	movq	32(%rsi), %r11
	movl	%edx, %ecx
	shrq	%cl, %r11
	jmp	.L462
.L631:
	.loc 1 174 1977 view .LVU1594
	movl	$0, %r11d
.L462:
	.loc 1 174 2078 discriminator 84 view .LVU1595
	cmpq	$62, %r10
	ja	.L632
	.loc 1 174 2113 discriminator 85 view .LVU1596
	movl	%edx, %ecx
	negl	%ecx
	.loc 1 174 2078 discriminator 85 view .LVU1597
	movq	32(%rsi), %rax
	salq	%cl, %rax
	jmp	.L463
.L632:
	.loc 1 174 2078 view .LVU1598
	movl	$0, %eax
.L463:
	.loc 1 174 2028 discriminator 88 view .LVU1599
	addq	%r11, %rax
	.loc 1 174 2183 discriminator 88 view .LVU1600
	cmpq	$63, %r9
	ja	.L633
	.loc 1 174 2224 discriminator 89 view .LVU1601
	leal	-64(%rdx), %ecx
	.loc 1 174 2183 discriminator 89 view .LVU1602
	movq	24(%rsi), %rbx
	shrq	%cl, %rbx
	jmp	.L464
.L633:
	.loc 1 174 2183 view .LVU1603
	movl	$0, %ebx
.L464:
	.loc 1 174 2283 discriminator 92 view .LVU1604
	cmpq	$62, %r8
	ja	.L634
	.loc 1 174 2322 discriminator 93 view .LVU1605
	movl	$64, %ecx
	subl	%edx, %ecx
	.loc 1 174 2283 discriminator 93 view .LVU1606
	movq	24(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L465
.L634:
	.loc 1 174 2283 view .LVU1607
	movl	$0, %ecx
.L465:
	.loc 1 174 2231 discriminator 96 view .LVU1608
	addq	%rbx, %rcx
	.loc 1 174 2131 discriminator 96 view .LVU1609
	orq	%rcx, %rax
	.loc 1 174 2387 discriminator 96 view .LVU1610
	cmpq	$63, %r14
	ja	.L635
	.loc 1 174 2424 discriminator 97 view .LVU1611
	leal	-128(%rdx), %ecx
	.loc 1 174 2387 discriminator 97 view .LVU1612
	movq	16(%rsi), %r11
	shrq	%cl, %r11
	jmp	.L466
.L635:
	.loc 1 174 2387 view .LVU1613
	movl	$0, %r11d
.L466:
	.loc 1 174 2486 discriminator 100 view .LVU1614
	cmpq	$62, %r13
	ja	.L636
	.loc 1 174 2522 discriminator 101 view .LVU1615
	movl	$128, %ecx
	subl	%edx, %ecx
	.loc 1 174 2486 discriminator 101 view .LVU1616
	movq	16(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L467
.L636:
	.loc 1 174 2486 view .LVU1617
	movl	$0, %ecx
.L467:
	.loc 1 174 2432 discriminator 104 view .LVU1618
	addq	%r11, %rcx
	.loc 1 174 2333 discriminator 104 view .LVU1619
	orq	%rcx, %rax
	.loc 1 174 2587 discriminator 104 view .LVU1620
	cmpq	$63, %r12
	ja	.L637
	.loc 1 174 2620 discriminator 105 view .LVU1621
	leal	-192(%rdx), %ecx
	.loc 1 174 2587 discriminator 105 view .LVU1622
	movq	8(%rsi), %r11
	shrq	%cl, %r11
	jmp	.L468
.L637:
	.loc 1 174 2587 view .LVU1623
	movl	$0, %r11d
.L468:
	.loc 1 174 2682 discriminator 108 view .LVU1624
	cmpq	$62, %rbp
	ja	.L638
	.loc 1 174 2714 discriminator 109 view .LVU1625
	movl	$192, %ecx
	subl	%edx, %ecx
	.loc 1 174 2682 discriminator 109 view .LVU1626
	movq	8(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L469
.L638:
	.loc 1 174 2682 view .LVU1627
	movl	$0, %ecx
.L469:
	.loc 1 174 2628 discriminator 112 view .LVU1628
	addq	%r11, %rcx
	.loc 1 174 2533 discriminator 112 view .LVU1629
	orq	%rcx, %rax
	movq	%rax, -112(%rsp)
	.loc 1 174 2728 discriminator 112 view .LVU1630
	leaq	-256(%rdx), %rbx
	.loc 1 174 2779 discriminator 112 view .LVU1631
	cmpq	$63, %rbx
	ja	.L639
	.loc 1 174 2779 discriminator 113 view .LVU1632
	movq	(%rsi), %r15
	movl	%edx, %ecx
	shrq	%cl, %r15
	jmp	.L470
.L639:
	.loc 1 174 2779 view .LVU1633
	movl	$0, %r15d
.L470:
	.loc 1 174 2818 discriminator 116 view .LVU1634
	leaq	-193(%rdx), %r11
	.loc 1 174 2870 discriminator 116 view .LVU1635
	cmpq	$62, %r11
	ja	.L640
	.loc 1 174 2898 discriminator 117 view .LVU1636
	movl	$256, %ecx
	subl	%edx, %ecx
	.loc 1 174 2870 discriminator 117 view .LVU1637
	movq	(%rsi), %rax
	salq	%cl, %rax
	movq	%rax, %rcx
	jmp	.L471
.L640:
	.loc 1 174 2870 view .LVU1638
	movl	$0, %ecx
.L471:
	.loc 1 174 2816 discriminator 120 view .LVU1639
	addq	%r15, %rcx
	.loc 1 174 2725 discriminator 120 view .LVU1640
	movq	-112(%rsp), %rax
	orq	%rcx, %rax
	.loc 1 174 1927 discriminator 120 view .LVU1641
	movq	%rax, -16(%rsp)
	.loc 1 174 2910 is_stmt 1 discriminator 120 view .LVU1642
	.loc 1 174 2972 is_stmt 0 discriminator 120 view .LVU1643
	cmpq	$63, %rdx
	ja	.L641
	.loc 1 174 2972 discriminator 121 view .LVU1644
	movq	40(%rsi), %r15
	movl	%edx, %ecx
	shrq	%cl, %r15
	jmp	.L472
.L641:
	.loc 1 174 2972 view .LVU1645
	movl	$0, %r15d
.L472:
	.loc 1 174 3073 discriminator 124 view .LVU1646
	cmpq	$62, %r10
	ja	.L642
	.loc 1 174 3108 discriminator 125 view .LVU1647
	movl	%edx, %ecx
	negl	%ecx
	.loc 1 174 3073 discriminator 125 view .LVU1648
	movq	40(%rsi), %rax
	salq	%cl, %rax
	jmp	.L473
.L642:
	.loc 1 174 3073 view .LVU1649
	movl	$0, %eax
.L473:
	.loc 1 174 3023 discriminator 128 view .LVU1650
	leaq	(%r15,%rax), %r10
	.loc 1 174 3178 discriminator 128 view .LVU1651
	cmpq	$63, %r9
	ja	.L643
	.loc 1 174 3219 discriminator 129 view .LVU1652
	leal	-64(%rdx), %ecx
	.loc 1 174 3178 discriminator 129 view .LVU1653
	movq	32(%rsi), %rax
	shrq	%cl, %rax
	jmp	.L474
.L643:
	.loc 1 174 3178 view .LVU1654
	movl	$0, %eax
.L474:
	.loc 1 174 3278 discriminator 132 view .LVU1655
	cmpq	$62, %r8
	ja	.L644
	.loc 1 174 3317 discriminator 133 view .LVU1656
	movl	$64, %ecx
	subl	%edx, %ecx
	.loc 1 174 3278 discriminator 133 view .LVU1657
	movq	32(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L475
.L644:
	.loc 1 174 3278 view .LVU1658
	movl	$0, %ecx
.L475:
	.loc 1 174 3226 discriminator 136 view .LVU1659
	addq	%rcx, %rax
	.loc 1 174 3126 discriminator 136 view .LVU1660
	orq	%r10, %rax
	.loc 1 174 3382 discriminator 136 view .LVU1661
	cmpq	$63, %r14
	ja	.L645
	.loc 1 174 3419 discriminator 137 view .LVU1662
	leal	-128(%rdx), %ecx
	.loc 1 174 3382 discriminator 137 view .LVU1663
	movq	24(%rsi), %r8
	shrq	%cl, %r8
	jmp	.L476
.L645:
	.loc 1 174 3382 view .LVU1664
	movl	$0, %r8d
.L476:
	.loc 1 174 3481 discriminator 140 view .LVU1665
	cmpq	$62, %r13
	ja	.L646
	.loc 1 174 3517 discriminator 141 view .LVU1666
	movl	$128, %ecx
	subl	%edx, %ecx
	.loc 1 174 3481 discriminator 141 view .LVU1667
	movq	24(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L477
.L646:
	.loc 1 174 3481 view .LVU1668
	movl	$0, %ecx
.L477:
	.loc 1 174 3427 discriminator 144 view .LVU1669
	addq	%rcx, %r8
	.loc 1 174 3328 discriminator 144 view .LVU1670
	orq	%r8, %rax
	.loc 1 174 3582 discriminator 144 view .LVU1671
	cmpq	$63, %r12
	ja	.L647
	.loc 1 174 3615 discriminator 145 view .LVU1672
	leal	-192(%rdx), %ecx
	.loc 1 174 3582 discriminator 145 view .LVU1673
	movq	16(%rsi), %r8
	shrq	%cl, %r8
	jmp	.L478
.L647:
	.loc 1 174 3582 view .LVU1674
	movl	$0, %r8d
.L478:
	.loc 1 174 3677 discriminator 148 view .LVU1675
	cmpq	$62, %rbp
	ja	.L648
	.loc 1 174 3709 discriminator 149 view .LVU1676
	movl	$192, %ecx
	subl	%edx, %ecx
	.loc 1 174 3677 discriminator 149 view .LVU1677
	movq	16(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L479
.L648:
	.loc 1 174 3677 view .LVU1678
	movl	$0, %ecx
.L479:
	.loc 1 174 3623 discriminator 152 view .LVU1679
	addq	%rcx, %r8
	.loc 1 174 3528 discriminator 152 view .LVU1680
	orq	%r8, %rax
	.loc 1 174 3774 discriminator 152 view .LVU1681
	cmpq	$63, %rbx
	ja	.L649
	.loc 1 174 3774 discriminator 153 view .LVU1682
	movq	8(%rsi), %r8
	movl	%edx, %ecx
	shrq	%cl, %r8
	jmp	.L480
.L649:
	.loc 1 174 3774 view .LVU1683
	movl	$0, %r8d
.L480:
	.loc 1 174 3865 discriminator 156 view .LVU1684
	cmpq	$62, %r11
	ja	.L650
	.loc 1 174 3893 discriminator 157 view .LVU1685
	movl	$256, %ecx
	subl	%edx, %ecx
	.loc 1 174 3865 discriminator 157 view .LVU1686
	movq	8(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L481
.L650:
	.loc 1 174 3865 view .LVU1687
	movl	$0, %ecx
.L481:
	.loc 1 174 3811 discriminator 160 view .LVU1688
	addq	%rcx, %r8
	.loc 1 174 3720 discriminator 160 view .LVU1689
	orq	%r8, %rax
	.loc 1 174 3907 discriminator 160 view .LVU1690
	leaq	-320(%rdx), %rcx
	.loc 1 174 3958 discriminator 160 view .LVU1691
	cmpq	$63, %rcx
	ja	.L651
	.loc 1 174 3983 discriminator 161 view .LVU1692
	leal	-320(%rdx), %ecx
	.loc 1 174 3958 discriminator 161 view .LVU1693
	movq	(%rsi), %r8
	shrq	%cl, %r8
	jmp	.L482
.L651:
	.loc 1 174 3958 view .LVU1694
	movl	$0, %r8d
.L482:
	.loc 1 174 3993 discriminator 164 view .LVU1695
	leaq	-257(%rdx), %rcx
	.loc 1 174 4045 discriminator 164 view .LVU1696
	cmpq	$62, %rcx
	ja	.L652
	.loc 1 174 4069 discriminator 165 view .LVU1697
	movl	$320, %ecx
	subl	%edx, %ecx
	.loc 1 174 4045 discriminator 165 view .LVU1698
	movq	(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L483
.L652:
	.loc 1 174 4045 view .LVU1699
	movl	$0, %ecx
.L483:
	.loc 1 174 3991 discriminator 168 view .LVU1700
	addq	%rcx, %r8
	.loc 1 174 3904 discriminator 168 view .LVU1701
	orq	%r8, %rax
	.loc 1 174 2922 discriminator 168 view .LVU1702
	movq	%rax, -8(%rsp)
	.loc 1 174 4080 is_stmt 1 discriminator 168 view .LVU1703
	.loc 1 175 9 discriminator 168 view .LVU1704
	.loc 1 175 16 is_stmt 0 discriminator 168 view .LVU1705
	movl	$384, %eax
	subq	%rdx, %rax
.LVL49:
	.loc 1 176 9 is_stmt 1 discriminator 168 view .LVU1706
	.loc 1 176 71 is_stmt 0 discriminator 168 view .LVU1707
	cmpq	$63, %rax
	ja	.L653
	.loc 1 176 71 discriminator 1 view .LVU1708
	movq	40(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
	jmp	.L484
.L653:
	.loc 1 176 71 view .LVU1709
	movl	$0, %r8d
.L484:
	.loc 1 176 106 discriminator 4 view .LVU1710
	movl	$447, %r9d
	subq	%rdx, %r9
	.loc 1 176 154 discriminator 4 view .LVU1711
	cmpq	$62, %r9
	ja	.L654
	.loc 1 176 171 discriminator 5 view .LVU1712
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 176 154 discriminator 5 view .LVU1713
	movq	40(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L485
.L654:
	.loc 1 176 154 view .LVU1714
	movl	$0, %ecx
.L485:
	.loc 1 176 104 discriminator 8 view .LVU1715
	addq	%rcx, %r8
	.loc 1 176 21 discriminator 8 view .LVU1716
	movq	%r8, -56(%rsp)
	.loc 1 176 190 is_stmt 1 discriminator 8 view .LVU1717
	.loc 1 176 252 is_stmt 0 discriminator 8 view .LVU1718
	cmpq	$63, %rax
	ja	.L655
	.loc 1 176 252 discriminator 9 view .LVU1719
	movq	32(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
	jmp	.L486
.L655:
	.loc 1 176 252 view .LVU1720
	movl	$0, %r8d
.L486:
	.loc 1 176 339 discriminator 12 view .LVU1721
	cmpq	$62, %r9
	ja	.L656
	.loc 1 176 360 discriminator 13 view .LVU1722
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 176 339 discriminator 13 view .LVU1723
	movq	32(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L487
.L656:
	.loc 1 176 339 view .LVU1724
	movl	$0, %ecx
.L487:
	.loc 1 176 289 discriminator 16 view .LVU1725
	leaq	(%r8,%rcx), %rbx
	.loc 1 176 381 discriminator 16 view .LVU1726
	movl	$320, %r11d
	subq	%rdx, %r11
	.loc 1 176 430 discriminator 16 view .LVU1727
	cmpq	$63, %r11
	ja	.L657
	.loc 1 176 457 discriminator 17 view .LVU1728
	leal	-64(%rax), %ecx
	.loc 1 176 430 discriminator 17 view .LVU1729
	movq	40(%rsi), %r8
	salq	%cl, %r8
	jmp	.L488
.L657:
	.loc 1 176 430 view .LVU1730
	movl	$0, %r8d
.L488:
	.loc 1 176 466 discriminator 20 view .LVU1731
	movl	$383, %r10d
	subq	%rdx, %r10
	.loc 1 176 516 discriminator 20 view .LVU1732
	cmpq	$62, %r10
	ja	.L658
	.loc 1 176 541 discriminator 21 view .LVU1733
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 176 516 discriminator 21 view .LVU1734
	movq	40(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L489
.L658:
	.loc 1 176 516 view .LVU1735
	movl	$0, %ecx
.L489:
	.loc 1 176 464 discriminator 24 view .LVU1736
	addq	%rcx, %r8
	.loc 1 176 378 discriminator 24 view .LVU1737
	orq	%rbx, %r8
	.loc 1 176 202 discriminator 24 view .LVU1738
	movq	%r8, -64(%rsp)
	.loc 1 176 553 is_stmt 1 discriminator 24 view .LVU1739
	.loc 1 176 615 is_stmt 0 discriminator 24 view .LVU1740
	cmpq	$63, %rax
	ja	.L659
	.loc 1 176 615 discriminator 25 view .LVU1741
	movq	24(%rsi), %rbx
	movl	%eax, %ecx
	salq	%cl, %rbx
	jmp	.L490
.L659:
	.loc 1 176 615 view .LVU1742
	movl	$0, %ebx
.L490:
	.loc 1 176 706 discriminator 28 view .LVU1743
	cmpq	$62, %r9
	ja	.L660
	.loc 1 176 731 discriminator 29 view .LVU1744
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 176 706 discriminator 29 view .LVU1745
	movq	24(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L491
.L660:
	.loc 1 176 706 view .LVU1746
	movl	$0, %ecx
.L491:
	.loc 1 176 656 discriminator 32 view .LVU1747
	addq	%rcx, %rbx
	.loc 1 176 801 discriminator 32 view .LVU1748
	cmpq	$63, %r11
	ja	.L661
	.loc 1 176 832 discriminator 33 view .LVU1749
	leal	-64(%rax), %ecx
	.loc 1 176 801 discriminator 33 view .LVU1750
	movq	32(%rsi), %r8
	salq	%cl, %r8
	jmp	.L492
.L661:
	.loc 1 176 801 view .LVU1751
	movl	$0, %r8d
.L492:
	.loc 1 176 891 discriminator 36 view .LVU1752
	cmpq	$62, %r10
	ja	.L662
	.loc 1 176 920 discriminator 37 view .LVU1753
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 176 891 discriminator 37 view .LVU1754
	movq	32(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L493
.L662:
	.loc 1 176 891 view .LVU1755
	movl	$0, %ecx
.L493:
	.loc 1 176 839 discriminator 40 view .LVU1756
	addq	%rcx, %r8
	.loc 1 176 749 discriminator 40 view .LVU1757
	orq	%rbx, %r8
	.loc 1 176 934 discriminator 40 view .LVU1758
	movl	$256, %ebp
	subq	%rdx, %rbp
	.loc 1 176 985 discriminator 40 view .LVU1759
	cmpq	$63, %rbp
	ja	.L663
	.loc 1 176 1012 discriminator 41 view .LVU1760
	leal	-128(%rax), %ecx
	.loc 1 176 985 discriminator 41 view .LVU1761
	movq	40(%rsi), %r12
	salq	%cl, %r12
	jmp	.L494
.L663:
	.loc 1 176 985 view .LVU1762
	movl	$0, %r12d
.L494:
	.loc 1 176 1022 discriminator 44 view .LVU1763
	movl	$319, %ebx
	subq	%rdx, %rbx
	.loc 1 176 1074 discriminator 44 view .LVU1764
	cmpq	$62, %rbx
	ja	.L664
	.loc 1 176 1100 discriminator 45 view .LVU1765
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 176 1074 discriminator 45 view .LVU1766
	movq	40(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L495
.L664:
	.loc 1 176 1074 view .LVU1767
	movl	$0, %ecx
.L495:
	.loc 1 176 1020 discriminator 48 view .LVU1768
	addq	%r12, %rcx
	.loc 1 176 931 discriminator 48 view .LVU1769
	orq	%rcx, %r8
	.loc 1 176 565 discriminator 48 view .LVU1770
	movq	%r8, -72(%rsp)
	.loc 1 176 1112 is_stmt 1 discriminator 48 view .LVU1771
	.loc 1 176 1174 is_stmt 0 discriminator 48 view .LVU1772
	cmpq	$63, %rax
	ja	.L665
	.loc 1 176 1174 discriminator 49 view .LVU1773
	movq	16(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
	jmp	.L496
.L665:
	.loc 1 176 1174 view .LVU1774
	movl	$0, %r8d
.L496:
	.loc 1 176 1269 discriminator 52 view .LVU1775
	cmpq	$62, %r9
	ja	.L666
	.loc 1 176 1298 discriminator 53 view .LVU1776
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 176 1269 discriminator 53 view .LVU1777
	movq	16(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L497
.L666:
	.loc 1 176 1269 view .LVU1778
	movl	$0, %ecx
.L497:
	.loc 1 176 1219 discriminator 56 view .LVU1779
	addq	%rcx, %r8
	.loc 1 176 1368 discriminator 56 view .LVU1780
	cmpq	$63, %r11
	ja	.L667
	.loc 1 176 1403 discriminator 57 view .LVU1781
	leal	-64(%rax), %ecx
	.loc 1 176 1368 discriminator 57 view .LVU1782
	movq	24(%rsi), %r12
	salq	%cl, %r12
	jmp	.L498
.L667:
	.loc 1 176 1368 view .LVU1783
	movl	$0, %r12d
.L498:
	.loc 1 176 1462 discriminator 60 view .LVU1784
	cmpq	$62, %r10
	ja	.L668
	.loc 1 176 1495 discriminator 61 view .LVU1785
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 176 1462 discriminator 61 view .LVU1786
	movq	24(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L499
.L668:
	.loc 1 176 1462 view .LVU1787
	movl	$0, %ecx
.L499:
	.loc 1 176 1410 discriminator 64 view .LVU1788
	addq	%rcx, %r12
	.loc 1 176 1316 discriminator 64 view .LVU1789
	orq	%r8, %r12
	.loc 1 176 1560 discriminator 64 view .LVU1790
	cmpq	$63, %rbp
	ja	.L669
	.loc 1 176 1591 discriminator 65 view .LVU1791
	leal	-128(%rax), %ecx
	.loc 1 176 1560 discriminator 65 view .LVU1792
	movq	32(%rsi), %r8
	salq	%cl, %r8
	jmp	.L500
.L669:
	.loc 1 176 1560 view .LVU1793
	movl	$0, %r8d
.L500:
	.loc 1 176 1653 discriminator 68 view .LVU1794
	cmpq	$62, %rbx
	ja	.L670
	.loc 1 176 1683 discriminator 69 view .LVU1795
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 176 1653 discriminator 69 view .LVU1796
	movq	32(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L501
.L670:
	.loc 1 176 1653 view .LVU1797
	movl	$0, %ecx
.L501:
	.loc 1 176 1599 discriminator 72 view .LVU1798
	addq	%rcx, %r8
	.loc 1 176 1506 discriminator 72 view .LVU1799
	orq	%r12, %r8
	.loc 1 176 1697 discriminator 72 view .LVU1800
	movl	$192, %r13d
	subq	%rdx, %r13
	.loc 1 176 1748 discriminator 72 view .LVU1801
	cmpq	$63, %r13
	ja	.L671
	.loc 1 176 1775 discriminator 73 view .LVU1802
	leal	-192(%rax), %ecx
	.loc 1 176 1748 discriminator 73 view .LVU1803
	movq	40(%rsi), %r14
	salq	%cl, %r14
	jmp	.L502
.L671:
	.loc 1 176 1748 view .LVU1804
	movl	$0, %r14d
.L502:
	.loc 1 176 1785 discriminator 76 view .LVU1805
	movl	$255, %r12d
	subq	%rdx, %r12
	.loc 1 176 1837 discriminator 76 view .LVU1806
	cmpq	$62, %r12
	ja	.L672
	.loc 1 176 1863 discriminator 77 view .LVU1807
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 176 1837 discriminator 77 view .LVU1808
	movq	40(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L503
.L672:
	.loc 1 176 1837 view .LVU1809
	movl	$0, %ecx
.L503:
	.loc 1 176 1783 discriminator 80 view .LVU1810
	addq	%r14, %rcx
	.loc 1 176 1694 discriminator 80 view .LVU1811
	orq	%rcx, %r8
	.loc 1 176 1124 discriminator 80 view .LVU1812
	movq	%r8, -80(%rsp)
	.loc 1 176 1875 is_stmt 1 discriminator 80 view .LVU1813
	.loc 1 176 1937 is_stmt 0 discriminator 80 view .LVU1814
	cmpq	$63, %rax
	ja	.L673
	.loc 1 176 1937 discriminator 81 view .LVU1815
	movq	8(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
	jmp	.L504
.L673:
	.loc 1 176 1937 view .LVU1816
	movl	$0, %r8d
.L504:
	.loc 1 176 2036 discriminator 84 view .LVU1817
	cmpq	$62, %r9
	ja	.L674
	.loc 1 176 2069 discriminator 85 view .LVU1818
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 176 2036 discriminator 85 view .LVU1819
	movq	8(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L505
.L674:
	.loc 1 176 2036 view .LVU1820
	movl	$0, %ecx
.L505:
	.loc 1 176 1986 discriminator 88 view .LVU1821
	addq	%rcx, %r8
	.loc 1 176 2139 discriminator 88 view .LVU1822
	cmpq	$63, %r11
	ja	.L675
	.loc 1 176 2178 discriminator 89 view .LVU1823
	leal	-64(%rax), %ecx
	.loc 1 176 2139 discriminator 89 view .LVU1824
	movq	16(%rsi), %r14
	salq	%cl, %r14
	jmp	.L506
.L675:
	.loc 1 176 2139 view .LVU1825
	movl	$0, %r14d
.L506:
	.loc 1 176 2237 discriminator 92 view .LVU1826
	cmpq	$62, %r10
	ja	.L676
	.loc 1 176 2274 discriminator 93 view .LVU1827
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 176 2237 discriminator 93 view .LVU1828
	movq	16(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L507
.L676:
	.loc 1 176 2237 view .LVU1829
	movl	$0, %ecx
.L507:
	.loc 1 176 2185 discriminator 96 view .LVU1830
	addq	%r14, %rcx
	.loc 1 176 2087 discriminator 96 view .LVU1831
	orq	%rcx, %r8
	.loc 1 176 2339 discriminator 96 view .LVU1832
	cmpq	$63, %rbp
	ja	.L677
	.loc 1 176 2374 discriminator 97 view .LVU1833
	leal	-128(%rax), %ecx
	.loc 1 176 2339 discriminator 97 view .LVU1834
	movq	24(%rsi), %r14
	salq	%cl, %r14
	jmp	.L508
.L677:
	.loc 1 176 2339 view .LVU1835
	movl	$0, %r14d
.L508:
	.loc 1 176 2436 discriminator 100 view .LVU1836
	cmpq	$62, %rbx
	ja	.L678
	.loc 1 176 2470 discriminator 101 view .LVU1837
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 176 2436 discriminator 101 view .LVU1838
	movq	24(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L509
.L678:
	.loc 1 176 2436 view .LVU1839
	movl	$0, %ecx
.L509:
	.loc 1 176 2382 discriminator 104 view .LVU1840
	addq	%r14, %rcx
	.loc 1 176 2285 discriminator 104 view .LVU1841
	orq	%rcx, %r8
	.loc 1 176 2535 discriminator 104 view .LVU1842
	cmpq	$63, %r13
	ja	.L679
	.loc 1 176 2566 discriminator 105 view .LVU1843
	leal	-192(%rax), %ecx
	.loc 1 176 2535 discriminator 105 view .LVU1844
	movq	32(%rsi), %r14
	salq	%cl, %r14
	jmp	.L510
.L679:
	.loc 1 176 2535 view .LVU1845
	movl	$0, %r14d
.L510:
	.loc 1 176 2628 discriminator 108 view .LVU1846
	cmpq	$62, %r12
	ja	.L680
	.loc 1 176 2658 discriminator 109 view .LVU1847
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 176 2628 discriminator 109 view .LVU1848
	movq	32(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L511
.L680:
	.loc 1 176 2628 view .LVU1849
	movl	$0, %ecx
.L511:
	.loc 1 176 2574 discriminator 112 view .LVU1850
	addq	%r14, %rcx
	.loc 1 176 2481 discriminator 112 view .LVU1851
	orq	%rcx, %r8
	movq	%r8, -112(%rsp)
	.loc 1 176 2672 discriminator 112 view .LVU1852
	movl	$128, %r15d
	subq	%rdx, %r15
	.loc 1 176 2723 discriminator 112 view .LVU1853
	cmpq	$63, %r15
	ja	.L681
	.loc 1 176 2723 discriminator 113 view .LVU1854
	movq	40(%rsi), %r14
	movl	%eax, %ecx
	salq	%cl, %r14
	movq	%r14, -104(%rsp)
	jmp	.L512
.L681:
	.loc 1 176 2723 view .LVU1855
	movq	$0, -104(%rsp)
.L512:
	.loc 1 176 2760 discriminator 116 view .LVU1856
	movl	$191, %r14d
	subq	%rdx, %r14
	.loc 1 176 2812 discriminator 116 view .LVU1857
	cmpq	$62, %r14
	ja	.L682
	.loc 1 176 2838 discriminator 117 view .LVU1858
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 176 2812 discriminator 117 view .LVU1859
	movq	40(%rsi), %r8
	shrq	%cl, %r8
	movq	%r8, %rcx
	jmp	.L513
.L682:
	.loc 1 176 2812 view .LVU1860
	movl	$0, %ecx
.L513:
	.loc 1 176 2758 discriminator 120 view .LVU1861
	addq	-104(%rsp), %rcx
	.loc 1 176 2669 discriminator 120 view .LVU1862
	movq	-112(%rsp), %r8
	orq	%rcx, %r8
	.loc 1 176 1887 discriminator 120 view .LVU1863
	movq	%r8, -88(%rsp)
	.loc 1 176 2850 is_stmt 1 discriminator 120 view .LVU1864
	.loc 1 176 2912 is_stmt 0 discriminator 120 view .LVU1865
	cmpq	$63, %rax
	ja	.L683
	.loc 1 176 2912 discriminator 121 view .LVU1866
	movq	(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
	jmp	.L514
.L683:
	.loc 1 176 2912 view .LVU1867
	movl	$0, %r8d
.L514:
	.loc 1 176 3011 discriminator 124 view .LVU1868
	cmpq	$62, %r9
	ja	.L684
	.loc 1 176 3044 discriminator 125 view .LVU1869
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 176 3011 discriminator 125 view .LVU1870
	movq	(%rsi), %r9
	shrq	%cl, %r9
	movq	%r9, %rcx
	jmp	.L515
.L684:
	.loc 1 176 3011 view .LVU1871
	movl	$0, %ecx
.L515:
	.loc 1 176 2961 discriminator 128 view .LVU1872
	addq	%rcx, %r8
	.loc 1 176 3114 discriminator 128 view .LVU1873
	cmpq	$63, %r11
	ja	.L685
	.loc 1 176 3153 discriminator 129 view .LVU1874
	leal	-64(%rax), %ecx
	.loc 1 176 3114 discriminator 129 view .LVU1875
	movq	8(%rsi), %r9
	salq	%cl, %r9
	jmp	.L516
.L685:
	.loc 1 176 3114 view .LVU1876
	movl	$0, %r9d
.L516:
	.loc 1 176 3212 discriminator 132 view .LVU1877
	cmpq	$62, %r10
	ja	.L686
	.loc 1 176 3249 discriminator 133 view .LVU1878
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 176 3212 discriminator 133 view .LVU1879
	movq	8(%rsi), %r10
	shrq	%cl, %r10
	movq	%r10, %rcx
	jmp	.L517
.L686:
	.loc 1 176 3212 view .LVU1880
	movl	$0, %ecx
.L517:
	.loc 1 176 3160 discriminator 136 view .LVU1881
	leaq	(%r9,%rcx), %r10
	.loc 1 176 3062 discriminator 136 view .LVU1882
	orq	%r8, %r10
	.loc 1 176 3314 discriminator 136 view .LVU1883
	cmpq	$63, %rbp
	ja	.L687
	.loc 1 176 3349 discriminator 137 view .LVU1884
	leal	-128(%rax), %ecx
	.loc 1 176 3314 discriminator 137 view .LVU1885
	movq	16(%rsi), %r11
	salq	%cl, %r11
	jmp	.L518
.L687:
	.loc 1 176 3314 view .LVU1886
	movl	$0, %r11d
.L518:
	.loc 1 176 3411 discriminator 140 view .LVU1887
	cmpq	$62, %rbx
	ja	.L688
	.loc 1 176 3445 discriminator 141 view .LVU1888
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 176 3411 discriminator 141 view .LVU1889
	movq	16(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L519
.L688:
	.loc 1 176 3411 view .LVU1890
	movl	$0, %ecx
.L519:
	.loc 1 176 3357 discriminator 144 view .LVU1891
	addq	%rcx, %r11
	.loc 1 176 3260 discriminator 144 view .LVU1892
	orq	%r10, %r11
	.loc 1 176 3510 discriminator 144 view .LVU1893
	cmpq	$63, %r13
	ja	.L689
	.loc 1 176 3541 discriminator 145 view .LVU1894
	leal	-192(%rax), %ecx
	.loc 1 176 3510 discriminator 145 view .LVU1895
	movq	24(%rsi), %r10
	salq	%cl, %r10
	jmp	.L520
.L689:
	.loc 1 176 3510 view .LVU1896
	movl	$0, %r10d
.L520:
	.loc 1 176 3603 discriminator 148 view .LVU1897
	cmpq	$62, %r12
	ja	.L690
	.loc 1 176 3633 discriminator 149 view .LVU1898
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 176 3603 discriminator 149 view .LVU1899
	movq	24(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L521
.L690:
	.loc 1 176 3603 view .LVU1900
	movl	$0, %ecx
.L521:
	.loc 1 176 3549 discriminator 152 view .LVU1901
	addq	%rcx, %r10
	.loc 1 176 3456 discriminator 152 view .LVU1902
	orq	%r11, %r10
	.loc 1 176 3698 discriminator 152 view .LVU1903
	cmpq	$63, %r15
	ja	.L691
	.loc 1 176 3698 discriminator 153 view .LVU1904
	movq	32(%rsi), %r9
	movl	%eax, %ecx
	salq	%cl, %r9
	jmp	.L522
.L691:
	.loc 1 176 3698 view .LVU1905
	movl	$0, %r9d
.L522:
	.loc 1 176 3787 discriminator 156 view .LVU1906
	cmpq	$62, %r14
	ja	.L692
	.loc 1 176 3813 discriminator 157 view .LVU1907
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 176 3787 discriminator 157 view .LVU1908
	movq	32(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L523
.L692:
	.loc 1 176 3787 view .LVU1909
	movl	$0, %ecx
.L523:
	.loc 1 176 3733 discriminator 160 view .LVU1910
	addq	%rcx, %r9
	.loc 1 176 3644 discriminator 160 view .LVU1911
	orq	%r9, %r10
	.loc 1 176 3827 discriminator 160 view .LVU1912
	movl	$64, %ecx
	subq	%rdx, %rcx
	.loc 1 176 3878 discriminator 160 view .LVU1913
	cmpq	$63, %rcx
	ja	.L693
	.loc 1 176 3901 discriminator 161 view .LVU1914
	leal	-320(%rax), %ecx
	.loc 1 176 3878 discriminator 161 view .LVU1915
	movq	40(%rsi), %r8
	salq	%cl, %r8
	jmp	.L524
.L693:
	.loc 1 176 3878 view .LVU1916
	movl	$0, %r8d
.L524:
	.loc 1 176 3911 discriminator 164 view .LVU1917
	movl	$127, %ecx
	subq	%rdx, %rcx
	.loc 1 176 3963 discriminator 164 view .LVU1918
	cmpq	$62, %rcx
	ja	.L694
	.loc 1 176 3970 discriminator 165 view .LVU1919
	movq	40(%rsi), %rdx
	.loc 1 176 3985 discriminator 165 view .LVU1920
	movl	$320, %ecx
	subl	%eax, %ecx
	.loc 1 176 3963 discriminator 165 view .LVU1921
	movq	%rdx, %rax
.LVL50:
	.loc 1 176 3963 discriminator 165 view .LVU1922
	shrq	%cl, %rax
	jmp	.L525
.LVL51:
.L694:
	.loc 1 176 3963 view .LVU1923
	movl	$0, %eax
.LVL52:
.L525:
	.loc 1 176 3909 discriminator 168 view .LVU1924
	addq	%rax, %r8
	.loc 1 176 3824 discriminator 168 view .LVU1925
	orq	%r10, %r8
	.loc 1 176 2862 discriminator 168 view .LVU1926
	movq	%r8, -96(%rsp)
.L441:
	.loc 1 176 3996 is_stmt 1 discriminator 169 view .LVU1927
	.loc 1 179 5 discriminator 169 view .LVU1928
	.loc 1 179 30 is_stmt 0 discriminator 169 view .LVU1929
	movq	-96(%rsp), %rax
	.loc 1 179 25 discriminator 169 view .LVU1930
	orq	-48(%rsp), %rax
	.loc 1 179 15 discriminator 169 view .LVU1931
	movq	%rax, (%rdi)
	.loc 1 180 30 discriminator 169 view .LVU1932
	movq	-88(%rsp), %rax
	.loc 1 180 25 discriminator 169 view .LVU1933
	orq	-40(%rsp), %rax
	.loc 1 180 15 discriminator 169 view .LVU1934
	movq	%rax, 8(%rdi)
	.loc 1 181 30 discriminator 169 view .LVU1935
	movq	-80(%rsp), %rax
	.loc 1 181 25 discriminator 169 view .LVU1936
	orq	-32(%rsp), %rax
	.loc 1 181 15 discriminator 169 view .LVU1937
	movq	%rax, 16(%rdi)
	.loc 1 182 30 discriminator 169 view .LVU1938
	movq	-72(%rsp), %rax
	.loc 1 182 25 discriminator 169 view .LVU1939
	orq	-24(%rsp), %rax
	.loc 1 182 15 discriminator 169 view .LVU1940
	movq	%rax, 24(%rdi)
	.loc 1 183 30 discriminator 169 view .LVU1941
	movq	-64(%rsp), %rax
	.loc 1 183 25 discriminator 169 view .LVU1942
	orq	-16(%rsp), %rax
	.loc 1 183 15 discriminator 169 view .LVU1943
	movq	%rax, 32(%rdi)
	.loc 1 184 30 discriminator 169 view .LVU1944
	movq	-56(%rsp), %rax
	.loc 1 184 25 discriminator 169 view .LVU1945
	orq	-8(%rsp), %rax
	.loc 1 184 15 discriminator 169 view .LVU1946
	movq	%rax, 40(%rdi)
	.loc 1 186 5 is_stmt 1 discriminator 169 view .LVU1947
	.loc 1 187 1 is_stmt 0 discriminator 169 view .LVU1948
	movq	%rdi, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE31:
	.size	biguint_rrot, .-biguint_rrot
	.globl	biguint_lrot
	.type	biguint_lrot, @function
biguint_lrot:
.LVL53:
.LFB32:
	.loc 1 189 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 189 1 is_stmt 0 view .LVU1950
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	movq	%rsi, %rcx
	movq	%rdx, %rsi
.LVL54:
	.loc 1 190 5 is_stmt 1 view .LVU1951
	.loc 1 190 22 is_stmt 0 view .LVU1952
	movabsq	$3074457345618258603, %rdx
.LVL55:
	.loc 1 190 22 view .LVU1953
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$6, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	salq	$7, %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	.loc 1 190 36 view .LVU1954
	testq	%rcx, %rcx
	js	.L1040
	movl	$0, %eax
.L699:
.LVL56:
	.loc 1 192 5 is_stmt 1 discriminator 4 view .LVU1955
	.loc 1 196 5 discriminator 4 view .LVU1956
	.loc 1 196 8 is_stmt 0 discriminator 4 view .LVU1957
	addq	%rax, %rdx
.LVL57:
	.loc 1 196 8 discriminator 4 view .LVU1958
	js	.L1041
	.loc 1 205 9 is_stmt 1 view .LVU1959
	.loc 1 205 71 is_stmt 0 view .LVU1960
	cmpq	$63, %rdx
	ja	.L955
	.loc 1 205 71 discriminator 1 view .LVU1961
	movq	40(%rsi), %rax
	movl	%edx, %ecx
	salq	%cl, %rax
	jmp	.L786
.LVL58:
.L1040:
	.loc 1 190 36 view .LVU1962
	movl	$384, %eax
	jmp	.L699
.LVL59:
.L1041:
	.loc 1 198 9 is_stmt 1 view .LVU1963
	.loc 1 198 16 is_stmt 0 view .LVU1964
	movq	%rdx, %rax
	negq	%rax
.LVL60:
	.loc 1 199 9 is_stmt 1 view .LVU1965
	.loc 1 199 71 is_stmt 0 view .LVU1966
	cmpq	$63, %rax
	ja	.L871
	.loc 1 199 71 discriminator 1 view .LVU1967
	movq	(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L701:
	.loc 1 199 71 discriminator 1 view .LVU1968
	movl	$63, %r9d
	subq	%rdx, %r9
	.loc 1 199 156 discriminator 4 view .LVU1969
	cmpq	$62, %r9
	ja	.L872
	.loc 1 199 156 discriminator 5 view .LVU1970
	movq	(%rsi), %rbx
	movl	%edx, %ecx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L702:
	.loc 1 199 106 discriminator 8 view .LVU1971
	addq	%rcx, %r8
	.loc 1 199 21 discriminator 8 view .LVU1972
	movq	%r8, -48(%rsp)
	.loc 1 199 194 is_stmt 1 discriminator 8 view .LVU1973
	.loc 1 199 256 is_stmt 0 discriminator 8 view .LVU1974
	cmpq	$63, %rax
	ja	.L873
	.loc 1 199 256 discriminator 9 view .LVU1975
	movq	8(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L703:
	.loc 1 199 345 discriminator 12 view .LVU1976
	cmpq	$62, %r9
	ja	.L874
	.loc 1 199 345 discriminator 13 view .LVU1977
	movq	8(%rsi), %rbx
	movl	%edx, %ecx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L704:
	.loc 1 199 295 discriminator 16 view .LVU1978
	addq	%rcx, %r8
	movq	$-64, %r10
	subq	%rdx, %r10
	.loc 1 199 438 discriminator 16 view .LVU1979
	cmpq	$63, %r10
	ja	.L875
	.loc 1 199 467 discriminator 17 view .LVU1980
	leal	-64(%rax), %ecx
	.loc 1 199 438 discriminator 17 view .LVU1981
	movq	(%rsi), %r11
	shrq	%cl, %r11
.L705:
	.loc 1 199 438 discriminator 17 view .LVU1982
	movq	%rdx, %r13
	notq	%r13
	.loc 1 199 526 discriminator 20 view .LVU1983
	cmpq	$62, %r13
	ja	.L876
	.loc 1 199 553 discriminator 21 view .LVU1984
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 199 526 discriminator 21 view .LVU1985
	movq	(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L706:
	.loc 1 199 474 discriminator 24 view .LVU1986
	addq	%rcx, %r11
	.loc 1 199 386 discriminator 24 view .LVU1987
	orq	%r8, %r11
	.loc 1 199 206 discriminator 24 view .LVU1988
	movq	%r11, -40(%rsp)
	.loc 1 199 565 is_stmt 1 discriminator 24 view .LVU1989
	.loc 1 199 627 is_stmt 0 discriminator 24 view .LVU1990
	cmpq	$63, %rax
	ja	.L877
	.loc 1 199 627 discriminator 25 view .LVU1991
	movq	16(%rsi), %r11
	movl	%eax, %ecx
	shrq	%cl, %r11
.L707:
	.loc 1 199 720 discriminator 28 view .LVU1992
	cmpq	$62, %r9
	ja	.L878
	.loc 1 199 720 discriminator 29 view .LVU1993
	movq	16(%rsi), %rbx
	movl	%edx, %ecx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L708:
	.loc 1 199 670 discriminator 32 view .LVU1994
	addq	%rcx, %r11
	.loc 1 199 817 discriminator 32 view .LVU1995
	cmpq	$63, %r10
	ja	.L879
	.loc 1 199 850 discriminator 33 view .LVU1996
	leal	-64(%rax), %ecx
	.loc 1 199 817 discriminator 33 view .LVU1997
	movq	8(%rsi), %r8
	shrq	%cl, %r8
.L709:
	.loc 1 199 909 discriminator 36 view .LVU1998
	cmpq	$62, %r13
	ja	.L880
	.loc 1 199 940 discriminator 37 view .LVU1999
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 199 909 discriminator 37 view .LVU2000
	movq	8(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L710:
	.loc 1 199 857 discriminator 40 view .LVU2001
	addq	%rcx, %r8
	.loc 1 199 765 discriminator 40 view .LVU2002
	orq	%r11, %r8
	movq	$-128, %rbx
	subq	%rdx, %rbx
	.loc 1 199 1005 discriminator 40 view .LVU2003
	cmpq	$63, %rbx
	ja	.L881
	.loc 1 199 1034 discriminator 41 view .LVU2004
	leal	-128(%rax), %ecx
	.loc 1 199 1005 discriminator 41 view .LVU2005
	movq	(%rsi), %rbp
	shrq	%cl, %rbp
.L711:
	.loc 1 199 1005 discriminator 41 view .LVU2006
	movq	$-65, %r11
	subq	%rdx, %r11
	.loc 1 199 1096 discriminator 44 view .LVU2007
	cmpq	$62, %r11
	ja	.L882
	.loc 1 199 1124 discriminator 45 view .LVU2008
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 199 1096 discriminator 45 view .LVU2009
	movq	(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L712:
	.loc 1 199 1042 discriminator 48 view .LVU2010
	addq	%rbp, %rcx
	.loc 1 199 951 discriminator 48 view .LVU2011
	orq	%rcx, %r8
	.loc 1 199 577 discriminator 48 view .LVU2012
	movq	%r8, -32(%rsp)
	.loc 1 199 1136 is_stmt 1 discriminator 48 view .LVU2013
	.loc 1 199 1198 is_stmt 0 discriminator 48 view .LVU2014
	cmpq	$63, %rax
	ja	.L883
	.loc 1 199 1198 discriminator 49 view .LVU2015
	movq	24(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L713:
	.loc 1 199 1295 discriminator 52 view .LVU2016
	cmpq	$62, %r9
	ja	.L884
	.loc 1 199 1295 discriminator 53 view .LVU2017
	movq	24(%rsi), %r14
	movl	%edx, %ecx
	salq	%cl, %r14
	movq	%r14, %rcx
.L714:
	.loc 1 199 1245 discriminator 56 view .LVU2018
	addq	%rcx, %r8
	.loc 1 199 1396 discriminator 56 view .LVU2019
	cmpq	$63, %r10
	ja	.L885
	.loc 1 199 1433 discriminator 57 view .LVU2020
	leal	-64(%rax), %ecx
	.loc 1 199 1396 discriminator 57 view .LVU2021
	movq	16(%rsi), %rbp
	shrq	%cl, %rbp
.L715:
	.loc 1 199 1492 discriminator 60 view .LVU2022
	cmpq	$62, %r13
	ja	.L886
	.loc 1 199 1527 discriminator 61 view .LVU2023
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 199 1492 discriminator 61 view .LVU2024
	movq	16(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L716:
	.loc 1 199 1440 discriminator 64 view .LVU2025
	addq	%rcx, %rbp
	.loc 1 199 1344 discriminator 64 view .LVU2026
	orq	%r8, %rbp
	.loc 1 199 1592 discriminator 64 view .LVU2027
	cmpq	$63, %rbx
	ja	.L887
	.loc 1 199 1625 discriminator 65 view .LVU2028
	leal	-128(%rax), %ecx
	.loc 1 199 1592 discriminator 65 view .LVU2029
	movq	8(%rsi), %r8
	shrq	%cl, %r8
.L717:
	.loc 1 199 1687 discriminator 68 view .LVU2030
	cmpq	$62, %r11
	ja	.L888
	.loc 1 199 1719 discriminator 69 view .LVU2031
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 199 1687 discriminator 69 view .LVU2032
	movq	8(%rsi), %r14
	salq	%cl, %r14
	movq	%r14, %rcx
.L718:
	.loc 1 199 1633 discriminator 72 view .LVU2033
	addq	%rcx, %r8
	.loc 1 199 1538 discriminator 72 view .LVU2034
	orq	%rbp, %r8
	movq	$-192, %r12
	subq	%rdx, %r12
	.loc 1 199 1784 discriminator 72 view .LVU2035
	cmpq	$63, %r12
	ja	.L889
	.loc 1 199 1813 discriminator 73 view .LVU2036
	leal	-192(%rax), %ecx
	.loc 1 199 1784 discriminator 73 view .LVU2037
	movq	(%rsi), %r14
	shrq	%cl, %r14
.L719:
	.loc 1 199 1784 discriminator 73 view .LVU2038
	movq	$-129, %rbp
	subq	%rdx, %rbp
	.loc 1 199 1875 discriminator 76 view .LVU2039
	cmpq	$62, %rbp
	ja	.L890
	.loc 1 199 1903 discriminator 77 view .LVU2040
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 199 1875 discriminator 77 view .LVU2041
	movq	(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L720:
	.loc 1 199 1821 discriminator 80 view .LVU2042
	addq	%r14, %rcx
	.loc 1 199 1730 discriminator 80 view .LVU2043
	orq	%rcx, %r8
	.loc 1 199 1148 discriminator 80 view .LVU2044
	movq	%r8, -24(%rsp)
	.loc 1 199 1915 is_stmt 1 discriminator 80 view .LVU2045
	.loc 1 199 1977 is_stmt 0 discriminator 80 view .LVU2046
	cmpq	$63, %rax
	ja	.L891
	.loc 1 199 1977 discriminator 81 view .LVU2047
	movq	32(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L721:
	.loc 1 199 2078 discriminator 84 view .LVU2048
	cmpq	$62, %r9
	ja	.L892
	.loc 1 199 2078 discriminator 85 view .LVU2049
	movq	32(%rsi), %r15
	movl	%edx, %ecx
	salq	%cl, %r15
	movq	%r15, %rcx
.L722:
	.loc 1 199 2028 discriminator 88 view .LVU2050
	addq	%rcx, %r8
	.loc 1 199 2183 discriminator 88 view .LVU2051
	cmpq	$63, %r10
	ja	.L893
	.loc 1 199 2224 discriminator 89 view .LVU2052
	leal	-64(%rax), %ecx
	.loc 1 199 2183 discriminator 89 view .LVU2053
	movq	24(%rsi), %r14
	shrq	%cl, %r14
.L723:
	.loc 1 199 2283 discriminator 92 view .LVU2054
	cmpq	$62, %r13
	ja	.L894
	.loc 1 199 2322 discriminator 93 view .LVU2055
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 199 2283 discriminator 93 view .LVU2056
	movq	24(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L724:
	.loc 1 199 2231 discriminator 96 view .LVU2057
	addq	%r14, %rcx
	.loc 1 199 2131 discriminator 96 view .LVU2058
	orq	%rcx, %r8
	.loc 1 199 2387 discriminator 96 view .LVU2059
	cmpq	$63, %rbx
	ja	.L895
	.loc 1 199 2424 discriminator 97 view .LVU2060
	leal	-128(%rax), %ecx
	.loc 1 199 2387 discriminator 97 view .LVU2061
	movq	16(%rsi), %r14
	shrq	%cl, %r14
.L725:
	.loc 1 199 2486 discriminator 100 view .LVU2062
	cmpq	$62, %r11
	ja	.L896
	.loc 1 199 2522 discriminator 101 view .LVU2063
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 199 2486 discriminator 101 view .LVU2064
	movq	16(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L726:
	.loc 1 199 2432 discriminator 104 view .LVU2065
	addq	%r14, %rcx
	.loc 1 199 2333 discriminator 104 view .LVU2066
	orq	%rcx, %r8
	.loc 1 199 2587 discriminator 104 view .LVU2067
	cmpq	$63, %r12
	ja	.L897
	.loc 1 199 2620 discriminator 105 view .LVU2068
	leal	-192(%rax), %ecx
	.loc 1 199 2587 discriminator 105 view .LVU2069
	movq	8(%rsi), %r14
	shrq	%cl, %r14
.L727:
	.loc 1 199 2682 discriminator 108 view .LVU2070
	cmpq	$62, %rbp
	ja	.L898
	.loc 1 199 2714 discriminator 109 view .LVU2071
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 199 2682 discriminator 109 view .LVU2072
	movq	8(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
.L728:
	.loc 1 199 2628 discriminator 112 view .LVU2073
	addq	%r14, %rcx
	.loc 1 199 2533 discriminator 112 view .LVU2074
	orq	%rcx, %r8
	movq	%r8, -112(%rsp)
	movq	$-256, %r15
	subq	%rdx, %r15
	.loc 1 199 2779 discriminator 112 view .LVU2075
	cmpq	$63, %r15
	ja	.L899
	.loc 1 199 2779 discriminator 113 view .LVU2076
	movq	(%rsi), %r14
	movl	%eax, %ecx
	shrq	%cl, %r14
	movq	%r14, -104(%rsp)
.L729:
	.loc 1 199 2779 discriminator 113 view .LVU2077
	movq	$-193, %r14
	subq	%rdx, %r14
	.loc 1 199 2870 discriminator 116 view .LVU2078
	cmpq	$62, %r14
	ja	.L900
	.loc 1 199 2898 discriminator 117 view .LVU2079
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 199 2870 discriminator 117 view .LVU2080
	movq	(%rsi), %r8
	salq	%cl, %r8
	movq	%r8, %rcx
.L730:
	.loc 1 199 2816 discriminator 120 view .LVU2081
	addq	-104(%rsp), %rcx
	.loc 1 199 2725 discriminator 120 view .LVU2082
	movq	-112(%rsp), %r8
	orq	%rcx, %r8
	.loc 1 199 1927 discriminator 120 view .LVU2083
	movq	%r8, -16(%rsp)
	.loc 1 199 2910 is_stmt 1 discriminator 120 view .LVU2084
	.loc 1 199 2972 is_stmt 0 discriminator 120 view .LVU2085
	cmpq	$63, %rax
	ja	.L901
	.loc 1 199 2972 discriminator 121 view .LVU2086
	movq	40(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
.L731:
	.loc 1 199 3073 discriminator 124 view .LVU2087
	cmpq	$62, %r9
	ja	.L902
	.loc 1 199 3073 discriminator 125 view .LVU2088
	movq	40(%rsi), %r9
	movl	%edx, %ecx
	salq	%cl, %r9
.L732:
	.loc 1 199 3023 discriminator 128 view .LVU2089
	addq	%r8, %r9
	.loc 1 199 3178 discriminator 128 view .LVU2090
	cmpq	$63, %r10
	ja	.L903
	.loc 1 199 3219 discriminator 129 view .LVU2091
	leal	-64(%rax), %ecx
	.loc 1 199 3178 discriminator 129 view .LVU2092
	movq	32(%rsi), %r8
	shrq	%cl, %r8
.L733:
	.loc 1 199 3278 discriminator 132 view .LVU2093
	cmpq	$62, %r13
	ja	.L904
	.loc 1 199 3317 discriminator 133 view .LVU2094
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 199 3278 discriminator 133 view .LVU2095
	movq	32(%rsi), %r10
	salq	%cl, %r10
	movq	%r10, %rcx
.L734:
	.loc 1 199 3226 discriminator 136 view .LVU2096
	addq	%rcx, %r8
	.loc 1 199 3126 discriminator 136 view .LVU2097
	orq	%r9, %r8
	.loc 1 199 3382 discriminator 136 view .LVU2098
	cmpq	$63, %rbx
	ja	.L905
	.loc 1 199 3419 discriminator 137 view .LVU2099
	leal	-128(%rax), %ecx
	.loc 1 199 3382 discriminator 137 view .LVU2100
	movq	24(%rsi), %r10
	shrq	%cl, %r10
.L735:
	.loc 1 199 3481 discriminator 140 view .LVU2101
	cmpq	$62, %r11
	ja	.L906
	.loc 1 199 3517 discriminator 141 view .LVU2102
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 199 3481 discriminator 141 view .LVU2103
	movq	24(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L736:
	.loc 1 199 3427 discriminator 144 view .LVU2104
	addq	%rcx, %r10
	.loc 1 199 3328 discriminator 144 view .LVU2105
	orq	%r8, %r10
	.loc 1 199 3582 discriminator 144 view .LVU2106
	cmpq	$63, %r12
	ja	.L907
	.loc 1 199 3615 discriminator 145 view .LVU2107
	leal	-192(%rax), %ecx
	.loc 1 199 3582 discriminator 145 view .LVU2108
	movq	16(%rsi), %r9
	shrq	%cl, %r9
.L737:
	.loc 1 199 3677 discriminator 148 view .LVU2109
	cmpq	$62, %rbp
	ja	.L908
	.loc 1 199 3709 discriminator 149 view .LVU2110
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 199 3677 discriminator 149 view .LVU2111
	movq	16(%rsi), %r8
	salq	%cl, %r8
.L738:
	.loc 1 199 3623 discriminator 152 view .LVU2112
	addq	%r8, %r9
	.loc 1 199 3528 discriminator 152 view .LVU2113
	orq	%r9, %r10
	movq	%r10, %r8
	.loc 1 199 3774 discriminator 152 view .LVU2114
	cmpq	$63, %r15
	ja	.L909
	.loc 1 199 3774 discriminator 153 view .LVU2115
	movq	8(%rsi), %r9
	movl	%eax, %ecx
	shrq	%cl, %r9
.L739:
	.loc 1 199 3865 discriminator 156 view .LVU2116
	cmpq	$62, %r14
	ja	.L910
	.loc 1 199 3893 discriminator 157 view .LVU2117
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 199 3865 discriminator 157 view .LVU2118
	movq	8(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
.L740:
	.loc 1 199 3811 discriminator 160 view .LVU2119
	addq	%rcx, %r9
	.loc 1 199 3720 discriminator 160 view .LVU2120
	orq	%r9, %r8
	.loc 1 199 3958 discriminator 160 view .LVU2121
	movq	$-320, %rcx
	subq	%rdx, %rcx
	cmpq	$63, %rcx
	ja	.L911
	.loc 1 199 3983 discriminator 161 view .LVU2122
	leal	-320(%rax), %ecx
	.loc 1 199 3958 discriminator 161 view .LVU2123
	movq	(%rsi), %r9
	shrq	%cl, %r9
.L741:
	.loc 1 199 4045 discriminator 164 view .LVU2124
	movq	$-257, %rcx
	subq	%rdx, %rcx
	cmpq	$62, %rcx
	ja	.L912
	.loc 1 199 4069 discriminator 165 view .LVU2125
	movl	$320, %ecx
	subl	%eax, %ecx
	.loc 1 199 4045 discriminator 165 view .LVU2126
	movq	(%rsi), %rax
.LVL61:
	.loc 1 199 4045 discriminator 165 view .LVU2127
	salq	%cl, %rax
.L742:
	.loc 1 199 3991 discriminator 168 view .LVU2128
	addq	%rax, %r9
	.loc 1 199 3904 discriminator 168 view .LVU2129
	orq	%r8, %r9
	.loc 1 199 2922 discriminator 168 view .LVU2130
	movq	%r9, -8(%rsp)
	.loc 1 199 4080 is_stmt 1 discriminator 168 view .LVU2131
	.loc 1 200 9 discriminator 168 view .LVU2132
	.loc 1 200 16 is_stmt 0 discriminator 168 view .LVU2133
	leaq	384(%rdx), %rax
.LVL62:
	.loc 1 201 9 is_stmt 1 discriminator 168 view .LVU2134
	.loc 1 201 71 is_stmt 0 discriminator 168 view .LVU2135
	cmpq	$63, %rax
	ja	.L913
	.loc 1 201 71 discriminator 1 view .LVU2136
	movq	40(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L743:
	.loc 1 201 106 discriminator 4 view .LVU2137
	leaq	447(%rdx), %r9
	.loc 1 201 154 discriminator 4 view .LVU2138
	cmpq	$62, %r9
	ja	.L914
	.loc 1 201 171 discriminator 5 view .LVU2139
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 201 154 discriminator 5 view .LVU2140
	movq	40(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L744:
	.loc 1 201 104 discriminator 8 view .LVU2141
	addq	%rcx, %r8
	.loc 1 201 21 discriminator 8 view .LVU2142
	movq	%r8, -56(%rsp)
	.loc 1 201 190 is_stmt 1 discriminator 8 view .LVU2143
	.loc 1 201 252 is_stmt 0 discriminator 8 view .LVU2144
	cmpq	$63, %rax
	ja	.L915
	.loc 1 201 252 discriminator 9 view .LVU2145
	movq	32(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L745:
	.loc 1 201 339 discriminator 12 view .LVU2146
	cmpq	$62, %r9
	ja	.L916
	.loc 1 201 360 discriminator 13 view .LVU2147
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 201 339 discriminator 13 view .LVU2148
	movq	32(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L746:
	.loc 1 201 289 discriminator 16 view .LVU2149
	addq	%rcx, %r8
	.loc 1 201 381 discriminator 16 view .LVU2150
	leaq	320(%rdx), %r11
	.loc 1 201 430 discriminator 16 view .LVU2151
	cmpq	$63, %r11
	ja	.L917
	.loc 1 201 457 discriminator 17 view .LVU2152
	leal	-64(%rax), %ecx
	.loc 1 201 430 discriminator 17 view .LVU2153
	movq	40(%rsi), %rbx
	salq	%cl, %rbx
.L747:
	.loc 1 201 466 discriminator 20 view .LVU2154
	leaq	383(%rdx), %r10
	.loc 1 201 516 discriminator 20 view .LVU2155
	cmpq	$62, %r10
	ja	.L918
	.loc 1 201 541 discriminator 21 view .LVU2156
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 201 516 discriminator 21 view .LVU2157
	movq	40(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L748:
	.loc 1 201 464 discriminator 24 view .LVU2158
	addq	%rcx, %rbx
	.loc 1 201 378 discriminator 24 view .LVU2159
	orq	%rbx, %r8
	.loc 1 201 202 discriminator 24 view .LVU2160
	movq	%r8, -64(%rsp)
	.loc 1 201 553 is_stmt 1 discriminator 24 view .LVU2161
	.loc 1 201 615 is_stmt 0 discriminator 24 view .LVU2162
	cmpq	$63, %rax
	ja	.L919
	.loc 1 201 615 discriminator 25 view .LVU2163
	movq	24(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L749:
	.loc 1 201 706 discriminator 28 view .LVU2164
	cmpq	$62, %r9
	ja	.L920
	.loc 1 201 731 discriminator 29 view .LVU2165
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 201 706 discriminator 29 view .LVU2166
	movq	24(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L750:
	.loc 1 201 656 discriminator 32 view .LVU2167
	addq	%rcx, %r8
	.loc 1 201 801 discriminator 32 view .LVU2168
	cmpq	$63, %r11
	ja	.L921
	.loc 1 201 832 discriminator 33 view .LVU2169
	leal	-64(%rax), %ecx
	.loc 1 201 801 discriminator 33 view .LVU2170
	movq	32(%rsi), %rbx
	salq	%cl, %rbx
.L751:
	.loc 1 201 891 discriminator 36 view .LVU2171
	cmpq	$62, %r10
	ja	.L922
	.loc 1 201 920 discriminator 37 view .LVU2172
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 201 891 discriminator 37 view .LVU2173
	movq	32(%rsi), %r14
	shrq	%cl, %r14
	movq	%r14, %rcx
.L752:
	.loc 1 201 839 discriminator 40 view .LVU2174
	addq	%rcx, %rbx
	.loc 1 201 749 discriminator 40 view .LVU2175
	orq	%rbx, %r8
	movq	%r8, %r12
	.loc 1 201 934 discriminator 40 view .LVU2176
	leaq	256(%rdx), %rbp
	.loc 1 201 985 discriminator 40 view .LVU2177
	cmpq	$63, %rbp
	ja	.L923
	.loc 1 201 1012 discriminator 41 view .LVU2178
	leal	-128(%rax), %ecx
	.loc 1 201 985 discriminator 41 view .LVU2179
	movq	40(%rsi), %r8
	salq	%cl, %r8
.L753:
	.loc 1 201 1022 discriminator 44 view .LVU2180
	leaq	319(%rdx), %rbx
	.loc 1 201 1074 discriminator 44 view .LVU2181
	cmpq	$62, %rbx
	ja	.L924
	.loc 1 201 1100 discriminator 45 view .LVU2182
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 201 1074 discriminator 45 view .LVU2183
	movq	40(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L754:
	.loc 1 201 1020 discriminator 48 view .LVU2184
	addq	%rcx, %r8
	.loc 1 201 931 discriminator 48 view .LVU2185
	orq	%r12, %r8
	.loc 1 201 565 discriminator 48 view .LVU2186
	movq	%r8, -72(%rsp)
	.loc 1 201 1112 is_stmt 1 discriminator 48 view .LVU2187
	.loc 1 201 1174 is_stmt 0 discriminator 48 view .LVU2188
	cmpq	$63, %rax
	ja	.L925
	.loc 1 201 1174 discriminator 49 view .LVU2189
	movq	16(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L755:
	.loc 1 201 1269 discriminator 52 view .LVU2190
	cmpq	$62, %r9
	ja	.L926
	.loc 1 201 1298 discriminator 53 view .LVU2191
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 201 1269 discriminator 53 view .LVU2192
	movq	16(%rsi), %r14
	shrq	%cl, %r14
	movq	%r14, %rcx
.L756:
	.loc 1 201 1219 discriminator 56 view .LVU2193
	addq	%rcx, %r8
	.loc 1 201 1368 discriminator 56 view .LVU2194
	cmpq	$63, %r11
	ja	.L927
	.loc 1 201 1403 discriminator 57 view .LVU2195
	leal	-64(%rax), %ecx
	.loc 1 201 1368 discriminator 57 view .LVU2196
	movq	24(%rsi), %r12
	salq	%cl, %r12
.L757:
	.loc 1 201 1462 discriminator 60 view .LVU2197
	cmpq	$62, %r10
	ja	.L928
	.loc 1 201 1495 discriminator 61 view .LVU2198
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 201 1462 discriminator 61 view .LVU2199
	movq	24(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L758:
	.loc 1 201 1410 discriminator 64 view .LVU2200
	addq	%rcx, %r12
	.loc 1 201 1316 discriminator 64 view .LVU2201
	orq	%r8, %r12
	.loc 1 201 1560 discriminator 64 view .LVU2202
	cmpq	$63, %rbp
	ja	.L929
	.loc 1 201 1591 discriminator 65 view .LVU2203
	leal	-128(%rax), %ecx
	.loc 1 201 1560 discriminator 65 view .LVU2204
	movq	32(%rsi), %r8
	salq	%cl, %r8
.L759:
	.loc 1 201 1653 discriminator 68 view .LVU2205
	cmpq	$62, %rbx
	ja	.L930
	.loc 1 201 1683 discriminator 69 view .LVU2206
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 201 1653 discriminator 69 view .LVU2207
	movq	32(%rsi), %r14
	shrq	%cl, %r14
	movq	%r14, %rcx
.L760:
	.loc 1 201 1599 discriminator 72 view .LVU2208
	addq	%rcx, %r8
	.loc 1 201 1506 discriminator 72 view .LVU2209
	orq	%r12, %r8
	.loc 1 201 1697 discriminator 72 view .LVU2210
	leaq	192(%rdx), %r13
	.loc 1 201 1748 discriminator 72 view .LVU2211
	cmpq	$63, %r13
	ja	.L931
	.loc 1 201 1775 discriminator 73 view .LVU2212
	leal	-192(%rax), %ecx
	.loc 1 201 1748 discriminator 73 view .LVU2213
	movq	40(%rsi), %r14
	salq	%cl, %r14
.L761:
	.loc 1 201 1785 discriminator 76 view .LVU2214
	leaq	255(%rdx), %r12
	.loc 1 201 1837 discriminator 76 view .LVU2215
	cmpq	$62, %r12
	ja	.L932
	.loc 1 201 1863 discriminator 77 view .LVU2216
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 201 1837 discriminator 77 view .LVU2217
	movq	40(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L762:
	.loc 1 201 1783 discriminator 80 view .LVU2218
	addq	%r14, %rcx
	.loc 1 201 1694 discriminator 80 view .LVU2219
	orq	%rcx, %r8
	.loc 1 201 1124 discriminator 80 view .LVU2220
	movq	%r8, -80(%rsp)
	.loc 1 201 1875 is_stmt 1 discriminator 80 view .LVU2221
	.loc 1 201 1937 is_stmt 0 discriminator 80 view .LVU2222
	cmpq	$63, %rax
	ja	.L933
	.loc 1 201 1937 discriminator 81 view .LVU2223
	movq	8(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L763:
	.loc 1 201 2036 discriminator 84 view .LVU2224
	cmpq	$62, %r9
	ja	.L934
	.loc 1 201 2069 discriminator 85 view .LVU2225
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 201 2036 discriminator 85 view .LVU2226
	movq	8(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L764:
	.loc 1 201 1986 discriminator 88 view .LVU2227
	addq	%rcx, %r8
	.loc 1 201 2139 discriminator 88 view .LVU2228
	cmpq	$63, %r11
	ja	.L935
	.loc 1 201 2178 discriminator 89 view .LVU2229
	leal	-64(%rax), %ecx
	.loc 1 201 2139 discriminator 89 view .LVU2230
	movq	16(%rsi), %r14
	salq	%cl, %r14
.L765:
	.loc 1 201 2237 discriminator 92 view .LVU2231
	cmpq	$62, %r10
	ja	.L936
	.loc 1 201 2274 discriminator 93 view .LVU2232
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 201 2237 discriminator 93 view .LVU2233
	movq	16(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L766:
	.loc 1 201 2185 discriminator 96 view .LVU2234
	addq	%r14, %rcx
	.loc 1 201 2087 discriminator 96 view .LVU2235
	orq	%rcx, %r8
	.loc 1 201 2339 discriminator 96 view .LVU2236
	cmpq	$63, %rbp
	ja	.L937
	.loc 1 201 2374 discriminator 97 view .LVU2237
	leal	-128(%rax), %ecx
	.loc 1 201 2339 discriminator 97 view .LVU2238
	movq	24(%rsi), %r14
	salq	%cl, %r14
.L767:
	.loc 1 201 2436 discriminator 100 view .LVU2239
	cmpq	$62, %rbx
	ja	.L938
	.loc 1 201 2470 discriminator 101 view .LVU2240
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 201 2436 discriminator 101 view .LVU2241
	movq	24(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L768:
	.loc 1 201 2382 discriminator 104 view .LVU2242
	addq	%r14, %rcx
	.loc 1 201 2285 discriminator 104 view .LVU2243
	orq	%rcx, %r8
	.loc 1 201 2535 discriminator 104 view .LVU2244
	cmpq	$63, %r13
	ja	.L939
	.loc 1 201 2566 discriminator 105 view .LVU2245
	leal	-192(%rax), %ecx
	.loc 1 201 2535 discriminator 105 view .LVU2246
	movq	32(%rsi), %r14
	salq	%cl, %r14
.L769:
	.loc 1 201 2628 discriminator 108 view .LVU2247
	cmpq	$62, %r12
	ja	.L940
	.loc 1 201 2658 discriminator 109 view .LVU2248
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 201 2628 discriminator 109 view .LVU2249
	movq	32(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
.L770:
	.loc 1 201 2574 discriminator 112 view .LVU2250
	addq	%r14, %rcx
	.loc 1 201 2481 discriminator 112 view .LVU2251
	orq	%rcx, %r8
	movq	%r8, -112(%rsp)
	.loc 1 201 2672 discriminator 112 view .LVU2252
	leaq	128(%rdx), %r15
	.loc 1 201 2723 discriminator 112 view .LVU2253
	cmpq	$63, %r15
	ja	.L941
	.loc 1 201 2723 discriminator 113 view .LVU2254
	movq	40(%rsi), %r14
	movl	%eax, %ecx
	salq	%cl, %r14
	movq	%r14, -104(%rsp)
.L771:
	.loc 1 201 2760 discriminator 116 view .LVU2255
	leaq	191(%rdx), %r14
	.loc 1 201 2812 discriminator 116 view .LVU2256
	cmpq	$62, %r14
	ja	.L942
	.loc 1 201 2838 discriminator 117 view .LVU2257
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 201 2812 discriminator 117 view .LVU2258
	movq	40(%rsi), %r8
	shrq	%cl, %r8
	movq	%r8, %rcx
.L772:
	.loc 1 201 2758 discriminator 120 view .LVU2259
	addq	-104(%rsp), %rcx
	.loc 1 201 2669 discriminator 120 view .LVU2260
	movq	-112(%rsp), %r8
	orq	%rcx, %r8
	.loc 1 201 1887 discriminator 120 view .LVU2261
	movq	%r8, -88(%rsp)
	.loc 1 201 2850 is_stmt 1 discriminator 120 view .LVU2262
	.loc 1 201 2912 is_stmt 0 discriminator 120 view .LVU2263
	cmpq	$63, %rax
	ja	.L943
	.loc 1 201 2912 discriminator 121 view .LVU2264
	movq	(%rsi), %r8
	movl	%eax, %ecx
	salq	%cl, %r8
.L773:
	.loc 1 201 3011 discriminator 124 view .LVU2265
	cmpq	$62, %r9
	ja	.L944
	.loc 1 201 3044 discriminator 125 view .LVU2266
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 201 3011 discriminator 125 view .LVU2267
	movq	(%rsi), %r9
	shrq	%cl, %r9
.L774:
	.loc 1 201 2961 discriminator 128 view .LVU2268
	addq	%r8, %r9
	.loc 1 201 3114 discriminator 128 view .LVU2269
	cmpq	$63, %r11
	ja	.L945
	.loc 1 201 3153 discriminator 129 view .LVU2270
	leal	-64(%rax), %ecx
	.loc 1 201 3114 discriminator 129 view .LVU2271
	movq	8(%rsi), %r8
	salq	%cl, %r8
.L775:
	.loc 1 201 3212 discriminator 132 view .LVU2272
	cmpq	$62, %r10
	ja	.L946
	.loc 1 201 3249 discriminator 133 view .LVU2273
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 201 3212 discriminator 133 view .LVU2274
	movq	8(%rsi), %r10
	shrq	%cl, %r10
	movq	%r10, %rcx
.L776:
	.loc 1 201 3160 discriminator 136 view .LVU2275
	addq	%rcx, %r8
	.loc 1 201 3062 discriminator 136 view .LVU2276
	movq	%r9, %r10
	orq	%r8, %r10
	.loc 1 201 3314 discriminator 136 view .LVU2277
	cmpq	$63, %rbp
	ja	.L947
	.loc 1 201 3349 discriminator 137 view .LVU2278
	leal	-128(%rax), %ecx
	.loc 1 201 3314 discriminator 137 view .LVU2279
	movq	16(%rsi), %r9
	salq	%cl, %r9
.L777:
	.loc 1 201 3411 discriminator 140 view .LVU2280
	cmpq	$62, %rbx
	ja	.L948
	.loc 1 201 3445 discriminator 141 view .LVU2281
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 201 3411 discriminator 141 view .LVU2282
	movq	16(%rsi), %r8
	shrq	%cl, %r8
.L778:
	.loc 1 201 3357 discriminator 144 view .LVU2283
	addq	%r9, %r8
	.loc 1 201 3260 discriminator 144 view .LVU2284
	orq	%r10, %r8
	.loc 1 201 3510 discriminator 144 view .LVU2285
	cmpq	$63, %r13
	ja	.L949
	.loc 1 201 3541 discriminator 145 view .LVU2286
	leal	-192(%rax), %ecx
	.loc 1 201 3510 discriminator 145 view .LVU2287
	movq	24(%rsi), %r9
	salq	%cl, %r9
.L779:
	.loc 1 201 3603 discriminator 148 view .LVU2288
	cmpq	$62, %r12
	ja	.L950
	.loc 1 201 3633 discriminator 149 view .LVU2289
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 201 3603 discriminator 149 view .LVU2290
	movq	24(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L780:
	.loc 1 201 3549 discriminator 152 view .LVU2291
	addq	%rcx, %r9
	.loc 1 201 3456 discriminator 152 view .LVU2292
	orq	%r9, %r8
	.loc 1 201 3698 discriminator 152 view .LVU2293
	cmpq	$63, %r15
	ja	.L951
	.loc 1 201 3698 discriminator 153 view .LVU2294
	movq	32(%rsi), %r9
	movl	%eax, %ecx
	salq	%cl, %r9
.L781:
	.loc 1 201 3787 discriminator 156 view .LVU2295
	cmpq	$62, %r14
	ja	.L952
	.loc 1 201 3813 discriminator 157 view .LVU2296
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 201 3787 discriminator 157 view .LVU2297
	movq	32(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
.L782:
	.loc 1 201 3733 discriminator 160 view .LVU2298
	addq	%rcx, %r9
	.loc 1 201 3644 discriminator 160 view .LVU2299
	orq	%r9, %r8
	.loc 1 201 3878 discriminator 160 view .LVU2300
	cmpq	$-64, %rdx
	jb	.L953
	.loc 1 201 3901 discriminator 161 view .LVU2301
	leal	-320(%rax), %ecx
	.loc 1 201 3878 discriminator 161 view .LVU2302
	movq	40(%rsi), %r9
	salq	%cl, %r9
.L783:
	.loc 1 201 3911 discriminator 164 view .LVU2303
	addq	$127, %rdx
	.loc 1 201 3963 discriminator 164 view .LVU2304
	cmpq	$62, %rdx
	ja	.L954
	.loc 1 201 3970 discriminator 165 view .LVU2305
	movq	40(%rsi), %rdx
	.loc 1 201 3985 discriminator 165 view .LVU2306
	movl	$320, %ecx
	subl	%eax, %ecx
	.loc 1 201 3963 discriminator 165 view .LVU2307
	movq	%rdx, %rax
.LVL63:
	.loc 1 201 3963 discriminator 165 view .LVU2308
	shrq	%cl, %rax
.L784:
	.loc 1 201 3909 discriminator 168 view .LVU2309
	addq	%rax, %r9
	.loc 1 201 3824 discriminator 168 view .LVU2310
	orq	%r9, %r8
	.loc 1 201 2862 discriminator 168 view .LVU2311
	movq	%r8, -96(%rsp)
	.loc 1 201 3996 is_stmt 1 discriminator 168 view .LVU2312
	jmp	.L785
.LVL64:
.L871:
	.loc 1 199 71 is_stmt 0 view .LVU2313
	movl	$0, %r8d
	jmp	.L701
.L872:
	.loc 1 199 156 view .LVU2314
	movl	$0, %ecx
	jmp	.L702
.L873:
	.loc 1 199 256 view .LVU2315
	movl	$0, %r8d
	jmp	.L703
.L874:
	.loc 1 199 345 view .LVU2316
	movl	$0, %ecx
	jmp	.L704
.L875:
	.loc 1 199 438 view .LVU2317
	movl	$0, %r11d
	jmp	.L705
.L876:
	.loc 1 199 526 view .LVU2318
	movl	$0, %ecx
	jmp	.L706
.L877:
	.loc 1 199 627 view .LVU2319
	movl	$0, %r11d
	jmp	.L707
.L878:
	.loc 1 199 720 view .LVU2320
	movl	$0, %ecx
	jmp	.L708
.L879:
	.loc 1 199 817 view .LVU2321
	movl	$0, %r8d
	jmp	.L709
.L880:
	.loc 1 199 909 view .LVU2322
	movl	$0, %ecx
	jmp	.L710
.L881:
	.loc 1 199 1005 view .LVU2323
	movl	$0, %ebp
	jmp	.L711
.L882:
	.loc 1 199 1096 view .LVU2324
	movl	$0, %ecx
	jmp	.L712
.L883:
	.loc 1 199 1198 view .LVU2325
	movl	$0, %r8d
	jmp	.L713
.L884:
	.loc 1 199 1295 view .LVU2326
	movl	$0, %ecx
	jmp	.L714
.L885:
	.loc 1 199 1396 view .LVU2327
	movl	$0, %ebp
	jmp	.L715
.L886:
	.loc 1 199 1492 view .LVU2328
	movl	$0, %ecx
	jmp	.L716
.L887:
	.loc 1 199 1592 view .LVU2329
	movl	$0, %r8d
	jmp	.L717
.L888:
	.loc 1 199 1687 view .LVU2330
	movl	$0, %ecx
	jmp	.L718
.L889:
	.loc 1 199 1784 view .LVU2331
	movl	$0, %r14d
	jmp	.L719
.L890:
	.loc 1 199 1875 view .LVU2332
	movl	$0, %ecx
	jmp	.L720
.L891:
	.loc 1 199 1977 view .LVU2333
	movl	$0, %r8d
	jmp	.L721
.L892:
	.loc 1 199 2078 view .LVU2334
	movl	$0, %ecx
	jmp	.L722
.L893:
	.loc 1 199 2183 view .LVU2335
	movl	$0, %r14d
	jmp	.L723
.L894:
	.loc 1 199 2283 view .LVU2336
	movl	$0, %ecx
	jmp	.L724
.L895:
	.loc 1 199 2387 view .LVU2337
	movl	$0, %r14d
	jmp	.L725
.L896:
	.loc 1 199 2486 view .LVU2338
	movl	$0, %ecx
	jmp	.L726
.L897:
	.loc 1 199 2587 view .LVU2339
	movl	$0, %r14d
	jmp	.L727
.L898:
	.loc 1 199 2682 view .LVU2340
	movl	$0, %ecx
	jmp	.L728
.L899:
	.loc 1 199 2779 view .LVU2341
	movq	$0, -104(%rsp)
	jmp	.L729
.L900:
	.loc 1 199 2870 view .LVU2342
	movl	$0, %ecx
	jmp	.L730
.L901:
	.loc 1 199 2972 view .LVU2343
	movl	$0, %r8d
	jmp	.L731
.L902:
	.loc 1 199 3073 view .LVU2344
	movl	$0, %r9d
	jmp	.L732
.L903:
	.loc 1 199 3178 view .LVU2345
	movl	$0, %r8d
	jmp	.L733
.L904:
	.loc 1 199 3278 view .LVU2346
	movl	$0, %ecx
	jmp	.L734
.L905:
	.loc 1 199 3382 view .LVU2347
	movl	$0, %r10d
	jmp	.L735
.L906:
	.loc 1 199 3481 view .LVU2348
	movl	$0, %ecx
	jmp	.L736
.L907:
	.loc 1 199 3582 view .LVU2349
	movl	$0, %r9d
	jmp	.L737
.L908:
	.loc 1 199 3677 view .LVU2350
	movl	$0, %r8d
	jmp	.L738
.L909:
	.loc 1 199 3774 view .LVU2351
	movl	$0, %r9d
	jmp	.L739
.L910:
	.loc 1 199 3865 view .LVU2352
	movl	$0, %ecx
	jmp	.L740
.L911:
	.loc 1 199 3958 view .LVU2353
	movl	$0, %r9d
	jmp	.L741
.L912:
	.loc 1 199 4045 view .LVU2354
	movl	$0, %eax
.LVL65:
	.loc 1 199 4045 view .LVU2355
	jmp	.L742
.LVL66:
.L913:
	.loc 1 201 71 view .LVU2356
	movl	$0, %r8d
	jmp	.L743
.L914:
	.loc 1 201 154 view .LVU2357
	movl	$0, %ecx
	jmp	.L744
.L915:
	.loc 1 201 252 view .LVU2358
	movl	$0, %r8d
	jmp	.L745
.L916:
	.loc 1 201 339 view .LVU2359
	movl	$0, %ecx
	jmp	.L746
.L917:
	.loc 1 201 430 view .LVU2360
	movl	$0, %ebx
	jmp	.L747
.L918:
	.loc 1 201 516 view .LVU2361
	movl	$0, %ecx
	jmp	.L748
.L919:
	.loc 1 201 615 view .LVU2362
	movl	$0, %r8d
	jmp	.L749
.L920:
	.loc 1 201 706 view .LVU2363
	movl	$0, %ecx
	jmp	.L750
.L921:
	.loc 1 201 801 view .LVU2364
	movl	$0, %ebx
	jmp	.L751
.L922:
	.loc 1 201 891 view .LVU2365
	movl	$0, %ecx
	jmp	.L752
.L923:
	.loc 1 201 985 view .LVU2366
	movl	$0, %r8d
	jmp	.L753
.L924:
	.loc 1 201 1074 view .LVU2367
	movl	$0, %ecx
	jmp	.L754
.L925:
	.loc 1 201 1174 view .LVU2368
	movl	$0, %r8d
	jmp	.L755
.L926:
	.loc 1 201 1269 view .LVU2369
	movl	$0, %ecx
	jmp	.L756
.L927:
	.loc 1 201 1368 view .LVU2370
	movl	$0, %r12d
	jmp	.L757
.L928:
	.loc 1 201 1462 view .LVU2371
	movl	$0, %ecx
	jmp	.L758
.L929:
	.loc 1 201 1560 view .LVU2372
	movl	$0, %r8d
	jmp	.L759
.L930:
	.loc 1 201 1653 view .LVU2373
	movl	$0, %ecx
	jmp	.L760
.L931:
	.loc 1 201 1748 view .LVU2374
	movl	$0, %r14d
	jmp	.L761
.L932:
	.loc 1 201 1837 view .LVU2375
	movl	$0, %ecx
	jmp	.L762
.L933:
	.loc 1 201 1937 view .LVU2376
	movl	$0, %r8d
	jmp	.L763
.L934:
	.loc 1 201 2036 view .LVU2377
	movl	$0, %ecx
	jmp	.L764
.L935:
	.loc 1 201 2139 view .LVU2378
	movl	$0, %r14d
	jmp	.L765
.L936:
	.loc 1 201 2237 view .LVU2379
	movl	$0, %ecx
	jmp	.L766
.L937:
	.loc 1 201 2339 view .LVU2380
	movl	$0, %r14d
	jmp	.L767
.L938:
	.loc 1 201 2436 view .LVU2381
	movl	$0, %ecx
	jmp	.L768
.L939:
	.loc 1 201 2535 view .LVU2382
	movl	$0, %r14d
	jmp	.L769
.L940:
	.loc 1 201 2628 view .LVU2383
	movl	$0, %ecx
	jmp	.L770
.L941:
	.loc 1 201 2723 view .LVU2384
	movq	$0, -104(%rsp)
	jmp	.L771
.L942:
	.loc 1 201 2812 view .LVU2385
	movl	$0, %ecx
	jmp	.L772
.L943:
	.loc 1 201 2912 view .LVU2386
	movl	$0, %r8d
	jmp	.L773
.L944:
	.loc 1 201 3011 view .LVU2387
	movl	$0, %r9d
	jmp	.L774
.L945:
	.loc 1 201 3114 view .LVU2388
	movl	$0, %r8d
	jmp	.L775
.L946:
	.loc 1 201 3212 view .LVU2389
	movl	$0, %ecx
	jmp	.L776
.L947:
	.loc 1 201 3314 view .LVU2390
	movl	$0, %r9d
	jmp	.L777
.L948:
	.loc 1 201 3411 view .LVU2391
	movl	$0, %r8d
	jmp	.L778
.L949:
	.loc 1 201 3510 view .LVU2392
	movl	$0, %r9d
	jmp	.L779
.L950:
	.loc 1 201 3603 view .LVU2393
	movl	$0, %ecx
	jmp	.L780
.L951:
	.loc 1 201 3698 view .LVU2394
	movl	$0, %r9d
	jmp	.L781
.L952:
	.loc 1 201 3787 view .LVU2395
	movl	$0, %ecx
	jmp	.L782
.L953:
	.loc 1 201 3878 view .LVU2396
	movl	$0, %r9d
	jmp	.L783
.L954:
	.loc 1 201 3963 view .LVU2397
	movl	$0, %eax
.LVL67:
	.loc 1 201 3963 view .LVU2398
	jmp	.L784
.LVL68:
.L955:
	.loc 1 205 71 view .LVU2399
	movl	$0, %eax
.L786:
	.loc 1 205 106 discriminator 4 view .LVU2400
	leaq	63(%rdx), %r10
	.loc 1 205 154 discriminator 4 view .LVU2401
	cmpq	$-63, %rdx
	jb	.L956
	.loc 1 205 171 discriminator 5 view .LVU2402
	movl	%edx, %ecx
	negl	%ecx
	.loc 1 205 154 discriminator 5 view .LVU2403
	movq	40(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L787
.L956:
	.loc 1 205 154 view .LVU2404
	movl	$0, %ecx
.L787:
	.loc 1 205 104 discriminator 8 view .LVU2405
	addq	%rcx, %rax
	.loc 1 205 21 discriminator 8 view .LVU2406
	movq	%rax, -56(%rsp)
	.loc 1 205 190 is_stmt 1 discriminator 8 view .LVU2407
	.loc 1 205 252 is_stmt 0 discriminator 8 view .LVU2408
	cmpq	$63, %rdx
	ja	.L957
	.loc 1 205 252 discriminator 9 view .LVU2409
	movq	32(%rsi), %rax
	movl	%edx, %ecx
	salq	%cl, %rax
	jmp	.L788
.L957:
	.loc 1 205 252 view .LVU2410
	movl	$0, %eax
.L788:
	.loc 1 205 339 discriminator 12 view .LVU2411
	cmpq	$62, %r10
	ja	.L958
	.loc 1 205 360 discriminator 13 view .LVU2412
	movl	%edx, %ecx
	negl	%ecx
	.loc 1 205 339 discriminator 13 view .LVU2413
	movq	32(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L789
.L958:
	.loc 1 205 339 view .LVU2414
	movl	$0, %ecx
.L789:
	.loc 1 205 289 discriminator 16 view .LVU2415
	addq	%rcx, %rax
	.loc 1 205 381 discriminator 16 view .LVU2416
	leaq	-64(%rdx), %r9
	.loc 1 205 430 discriminator 16 view .LVU2417
	cmpq	$63, %r9
	ja	.L959
	.loc 1 205 457 discriminator 17 view .LVU2418
	leal	-64(%rdx), %ecx
	.loc 1 205 430 discriminator 17 view .LVU2419
	movq	40(%rsi), %r11
	salq	%cl, %r11
	jmp	.L790
.L959:
	.loc 1 205 430 view .LVU2420
	movl	$0, %r11d
.L790:
	.loc 1 205 466 discriminator 20 view .LVU2421
	leaq	-1(%rdx), %r8
	.loc 1 205 516 discriminator 20 view .LVU2422
	cmpq	$62, %r8
	ja	.L960
	.loc 1 205 541 discriminator 21 view .LVU2423
	movl	$64, %ecx
	subl	%edx, %ecx
	.loc 1 205 516 discriminator 21 view .LVU2424
	movq	40(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L791
.L960:
	.loc 1 205 516 view .LVU2425
	movl	$0, %ecx
.L791:
	.loc 1 205 464 discriminator 24 view .LVU2426
	addq	%rcx, %r11
	.loc 1 205 378 discriminator 24 view .LVU2427
	orq	%r11, %rax
	.loc 1 205 202 discriminator 24 view .LVU2428
	movq	%rax, -64(%rsp)
	.loc 1 205 553 is_stmt 1 discriminator 24 view .LVU2429
	.loc 1 205 615 is_stmt 0 discriminator 24 view .LVU2430
	cmpq	$63, %rdx
	ja	.L961
	.loc 1 205 615 discriminator 25 view .LVU2431
	movq	24(%rsi), %rax
	movl	%edx, %ecx
	salq	%cl, %rax
	jmp	.L792
.L961:
	.loc 1 205 615 view .LVU2432
	movl	$0, %eax
.L792:
	.loc 1 205 706 discriminator 28 view .LVU2433
	cmpq	$62, %r10
	ja	.L962
	.loc 1 205 731 discriminator 29 view .LVU2434
	movl	%edx, %ecx
	negl	%ecx
	.loc 1 205 706 discriminator 29 view .LVU2435
	movq	24(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L793
.L962:
	.loc 1 205 706 view .LVU2436
	movl	$0, %ecx
.L793:
	.loc 1 205 656 discriminator 32 view .LVU2437
	addq	%rcx, %rax
	.loc 1 205 801 discriminator 32 view .LVU2438
	cmpq	$63, %r9
	ja	.L963
	.loc 1 205 832 discriminator 33 view .LVU2439
	leal	-64(%rdx), %ecx
	.loc 1 205 801 discriminator 33 view .LVU2440
	movq	32(%rsi), %r11
	salq	%cl, %r11
	jmp	.L794
.L963:
	.loc 1 205 801 view .LVU2441
	movl	$0, %r11d
.L794:
	.loc 1 205 891 discriminator 36 view .LVU2442
	cmpq	$62, %r8
	ja	.L964
	.loc 1 205 920 discriminator 37 view .LVU2443
	movl	$64, %ecx
	subl	%edx, %ecx
	.loc 1 205 891 discriminator 37 view .LVU2444
	movq	32(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L795
.L964:
	.loc 1 205 891 view .LVU2445
	movl	$0, %ecx
.L795:
	.loc 1 205 839 discriminator 40 view .LVU2446
	addq	%rcx, %r11
	.loc 1 205 749 discriminator 40 view .LVU2447
	orq	%rax, %r11
	.loc 1 205 934 discriminator 40 view .LVU2448
	leaq	-128(%rdx), %r14
	.loc 1 205 985 discriminator 40 view .LVU2449
	cmpq	$63, %r14
	ja	.L965
	.loc 1 205 1012 discriminator 41 view .LVU2450
	leal	-128(%rdx), %ecx
	.loc 1 205 985 discriminator 41 view .LVU2451
	movq	40(%rsi), %rax
	salq	%cl, %rax
	jmp	.L796
.L965:
	.loc 1 205 985 view .LVU2452
	movl	$0, %eax
.L796:
	.loc 1 205 1022 discriminator 44 view .LVU2453
	leaq	-65(%rdx), %r13
	.loc 1 205 1074 discriminator 44 view .LVU2454
	cmpq	$62, %r13
	ja	.L966
	.loc 1 205 1100 discriminator 45 view .LVU2455
	movl	$128, %ecx
	subl	%edx, %ecx
	.loc 1 205 1074 discriminator 45 view .LVU2456
	movq	40(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L797
.L966:
	.loc 1 205 1074 view .LVU2457
	movl	$0, %ecx
.L797:
	.loc 1 205 1020 discriminator 48 view .LVU2458
	addq	%rcx, %rax
	.loc 1 205 931 discriminator 48 view .LVU2459
	orq	%r11, %rax
	.loc 1 205 565 discriminator 48 view .LVU2460
	movq	%rax, -72(%rsp)
	.loc 1 205 1112 is_stmt 1 discriminator 48 view .LVU2461
	.loc 1 205 1174 is_stmt 0 discriminator 48 view .LVU2462
	cmpq	$63, %rdx
	ja	.L967
	.loc 1 205 1174 discriminator 49 view .LVU2463
	movq	16(%rsi), %r11
	movl	%edx, %ecx
	salq	%cl, %r11
	jmp	.L798
.L967:
	.loc 1 205 1174 view .LVU2464
	movl	$0, %r11d
.L798:
	.loc 1 205 1269 discriminator 52 view .LVU2465
	cmpq	$62, %r10
	ja	.L968
	.loc 1 205 1298 discriminator 53 view .LVU2466
	movl	%edx, %ecx
	negl	%ecx
	.loc 1 205 1269 discriminator 53 view .LVU2467
	movq	16(%rsi), %rax
	shrq	%cl, %rax
	jmp	.L799
.L968:
	.loc 1 205 1269 view .LVU2468
	movl	$0, %eax
.L799:
	.loc 1 205 1219 discriminator 56 view .LVU2469
	addq	%r11, %rax
	.loc 1 205 1368 discriminator 56 view .LVU2470
	cmpq	$63, %r9
	ja	.L969
	.loc 1 205 1403 discriminator 57 view .LVU2471
	leal	-64(%rdx), %ecx
	.loc 1 205 1368 discriminator 57 view .LVU2472
	movq	24(%rsi), %r11
	salq	%cl, %r11
	jmp	.L800
.L969:
	.loc 1 205 1368 view .LVU2473
	movl	$0, %r11d
.L800:
	.loc 1 205 1462 discriminator 60 view .LVU2474
	cmpq	$62, %r8
	ja	.L970
	.loc 1 205 1495 discriminator 61 view .LVU2475
	movl	$64, %ecx
	subl	%edx, %ecx
	.loc 1 205 1462 discriminator 61 view .LVU2476
	movq	24(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L801
.L970:
	.loc 1 205 1462 view .LVU2477
	movl	$0, %ecx
.L801:
	.loc 1 205 1410 discriminator 64 view .LVU2478
	addq	%rcx, %r11
	.loc 1 205 1316 discriminator 64 view .LVU2479
	orq	%r11, %rax
	.loc 1 205 1560 discriminator 64 view .LVU2480
	cmpq	$63, %r14
	ja	.L971
	.loc 1 205 1591 discriminator 65 view .LVU2481
	leal	-128(%rdx), %ecx
	.loc 1 205 1560 discriminator 65 view .LVU2482
	movq	32(%rsi), %r11
	salq	%cl, %r11
	jmp	.L802
.L971:
	.loc 1 205 1560 view .LVU2483
	movl	$0, %r11d
.L802:
	.loc 1 205 1653 discriminator 68 view .LVU2484
	cmpq	$62, %r13
	ja	.L972
	.loc 1 205 1683 discriminator 69 view .LVU2485
	movl	$128, %ecx
	subl	%edx, %ecx
	.loc 1 205 1653 discriminator 69 view .LVU2486
	movq	32(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L803
.L972:
	.loc 1 205 1653 view .LVU2487
	movl	$0, %ecx
.L803:
	.loc 1 205 1599 discriminator 72 view .LVU2488
	addq	%rcx, %r11
	.loc 1 205 1506 discriminator 72 view .LVU2489
	orq	%r11, %rax
	.loc 1 205 1697 discriminator 72 view .LVU2490
	leaq	-192(%rdx), %r12
	.loc 1 205 1748 discriminator 72 view .LVU2491
	cmpq	$63, %r12
	ja	.L973
	.loc 1 205 1775 discriminator 73 view .LVU2492
	leal	-192(%rdx), %ecx
	.loc 1 205 1748 discriminator 73 view .LVU2493
	movq	40(%rsi), %r11
	salq	%cl, %r11
	jmp	.L804
.L973:
	.loc 1 205 1748 view .LVU2494
	movl	$0, %r11d
.L804:
	.loc 1 205 1785 discriminator 76 view .LVU2495
	leaq	-129(%rdx), %rbp
	.loc 1 205 1837 discriminator 76 view .LVU2496
	cmpq	$62, %rbp
	ja	.L974
	.loc 1 205 1863 discriminator 77 view .LVU2497
	movl	$192, %ecx
	subl	%edx, %ecx
	.loc 1 205 1837 discriminator 77 view .LVU2498
	movq	40(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L805
.L974:
	.loc 1 205 1837 view .LVU2499
	movl	$0, %ecx
.L805:
	.loc 1 205 1783 discriminator 80 view .LVU2500
	addq	%r11, %rcx
	.loc 1 205 1694 discriminator 80 view .LVU2501
	orq	%rcx, %rax
	.loc 1 205 1124 discriminator 80 view .LVU2502
	movq	%rax, -80(%rsp)
	.loc 1 205 1875 is_stmt 1 discriminator 80 view .LVU2503
	.loc 1 205 1937 is_stmt 0 discriminator 80 view .LVU2504
	cmpq	$63, %rdx
	ja	.L975
	.loc 1 205 1937 discriminator 81 view .LVU2505
	movq	8(%rsi), %r11
	movl	%edx, %ecx
	salq	%cl, %r11
	jmp	.L806
.L975:
	.loc 1 205 1937 view .LVU2506
	movl	$0, %r11d
.L806:
	.loc 1 205 2036 discriminator 84 view .LVU2507
	cmpq	$62, %r10
	ja	.L976
	.loc 1 205 2069 discriminator 85 view .LVU2508
	movl	%edx, %ecx
	negl	%ecx
	.loc 1 205 2036 discriminator 85 view .LVU2509
	movq	8(%rsi), %rax
	shrq	%cl, %rax
	jmp	.L807
.L976:
	.loc 1 205 2036 view .LVU2510
	movl	$0, %eax
.L807:
	.loc 1 205 1986 discriminator 88 view .LVU2511
	addq	%r11, %rax
	.loc 1 205 2139 discriminator 88 view .LVU2512
	cmpq	$63, %r9
	ja	.L977
	.loc 1 205 2178 discriminator 89 view .LVU2513
	leal	-64(%rdx), %ecx
	.loc 1 205 2139 discriminator 89 view .LVU2514
	movq	16(%rsi), %rbx
	salq	%cl, %rbx
	jmp	.L808
.L977:
	.loc 1 205 2139 view .LVU2515
	movl	$0, %ebx
.L808:
	.loc 1 205 2237 discriminator 92 view .LVU2516
	cmpq	$62, %r8
	ja	.L978
	.loc 1 205 2274 discriminator 93 view .LVU2517
	movl	$64, %ecx
	subl	%edx, %ecx
	.loc 1 205 2237 discriminator 93 view .LVU2518
	movq	16(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L809
.L978:
	.loc 1 205 2237 view .LVU2519
	movl	$0, %ecx
.L809:
	.loc 1 205 2185 discriminator 96 view .LVU2520
	addq	%rbx, %rcx
	.loc 1 205 2087 discriminator 96 view .LVU2521
	orq	%rcx, %rax
	.loc 1 205 2339 discriminator 96 view .LVU2522
	cmpq	$63, %r14
	ja	.L979
	.loc 1 205 2374 discriminator 97 view .LVU2523
	leal	-128(%rdx), %ecx
	.loc 1 205 2339 discriminator 97 view .LVU2524
	movq	24(%rsi), %r11
	salq	%cl, %r11
	jmp	.L810
.L979:
	.loc 1 205 2339 view .LVU2525
	movl	$0, %r11d
.L810:
	.loc 1 205 2436 discriminator 100 view .LVU2526
	cmpq	$62, %r13
	ja	.L980
	.loc 1 205 2470 discriminator 101 view .LVU2527
	movl	$128, %ecx
	subl	%edx, %ecx
	.loc 1 205 2436 discriminator 101 view .LVU2528
	movq	24(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L811
.L980:
	.loc 1 205 2436 view .LVU2529
	movl	$0, %ecx
.L811:
	.loc 1 205 2382 discriminator 104 view .LVU2530
	addq	%r11, %rcx
	.loc 1 205 2285 discriminator 104 view .LVU2531
	orq	%rcx, %rax
	.loc 1 205 2535 discriminator 104 view .LVU2532
	cmpq	$63, %r12
	ja	.L981
	.loc 1 205 2566 discriminator 105 view .LVU2533
	leal	-192(%rdx), %ecx
	.loc 1 205 2535 discriminator 105 view .LVU2534
	movq	32(%rsi), %r11
	salq	%cl, %r11
	jmp	.L812
.L981:
	.loc 1 205 2535 view .LVU2535
	movl	$0, %r11d
.L812:
	.loc 1 205 2628 discriminator 108 view .LVU2536
	cmpq	$62, %rbp
	ja	.L982
	.loc 1 205 2658 discriminator 109 view .LVU2537
	movl	$192, %ecx
	subl	%edx, %ecx
	.loc 1 205 2628 discriminator 109 view .LVU2538
	movq	32(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L813
.L982:
	.loc 1 205 2628 view .LVU2539
	movl	$0, %ecx
.L813:
	.loc 1 205 2574 discriminator 112 view .LVU2540
	addq	%r11, %rcx
	.loc 1 205 2481 discriminator 112 view .LVU2541
	orq	%rcx, %rax
	movq	%rax, -112(%rsp)
	.loc 1 205 2672 discriminator 112 view .LVU2542
	leaq	-256(%rdx), %rbx
	.loc 1 205 2723 discriminator 112 view .LVU2543
	cmpq	$63, %rbx
	ja	.L983
	.loc 1 205 2723 discriminator 113 view .LVU2544
	movq	40(%rsi), %r15
	movl	%edx, %ecx
	salq	%cl, %r15
	jmp	.L814
.L983:
	.loc 1 205 2723 view .LVU2545
	movl	$0, %r15d
.L814:
	.loc 1 205 2760 discriminator 116 view .LVU2546
	leaq	-193(%rdx), %r11
	.loc 1 205 2812 discriminator 116 view .LVU2547
	cmpq	$62, %r11
	ja	.L984
	.loc 1 205 2838 discriminator 117 view .LVU2548
	movl	$256, %ecx
	subl	%edx, %ecx
	.loc 1 205 2812 discriminator 117 view .LVU2549
	movq	40(%rsi), %rax
	shrq	%cl, %rax
	movq	%rax, %rcx
	jmp	.L815
.L984:
	.loc 1 205 2812 view .LVU2550
	movl	$0, %ecx
.L815:
	.loc 1 205 2758 discriminator 120 view .LVU2551
	addq	%r15, %rcx
	.loc 1 205 2669 discriminator 120 view .LVU2552
	movq	-112(%rsp), %rax
	orq	%rcx, %rax
	.loc 1 205 1887 discriminator 120 view .LVU2553
	movq	%rax, -88(%rsp)
	.loc 1 205 2850 is_stmt 1 discriminator 120 view .LVU2554
	.loc 1 205 2912 is_stmt 0 discriminator 120 view .LVU2555
	cmpq	$63, %rdx
	ja	.L985
	.loc 1 205 2912 discriminator 121 view .LVU2556
	movq	(%rsi), %r15
	movl	%edx, %ecx
	salq	%cl, %r15
	jmp	.L816
.L985:
	.loc 1 205 2912 view .LVU2557
	movl	$0, %r15d
.L816:
	.loc 1 205 3011 discriminator 124 view .LVU2558
	cmpq	$62, %r10
	ja	.L986
	.loc 1 205 3044 discriminator 125 view .LVU2559
	movl	%edx, %ecx
	negl	%ecx
	.loc 1 205 3011 discriminator 125 view .LVU2560
	movq	(%rsi), %rax
	shrq	%cl, %rax
	jmp	.L817
.L986:
	.loc 1 205 3011 view .LVU2561
	movl	$0, %eax
.L817:
	.loc 1 205 2961 discriminator 128 view .LVU2562
	leaq	(%r15,%rax), %r10
	.loc 1 205 3114 discriminator 128 view .LVU2563
	cmpq	$63, %r9
	ja	.L987
	.loc 1 205 3153 discriminator 129 view .LVU2564
	leal	-64(%rdx), %ecx
	.loc 1 205 3114 discriminator 129 view .LVU2565
	movq	8(%rsi), %rax
	salq	%cl, %rax
	jmp	.L818
.L987:
	.loc 1 205 3114 view .LVU2566
	movl	$0, %eax
.L818:
	.loc 1 205 3212 discriminator 132 view .LVU2567
	cmpq	$62, %r8
	ja	.L988
	.loc 1 205 3249 discriminator 133 view .LVU2568
	movl	$64, %ecx
	subl	%edx, %ecx
	.loc 1 205 3212 discriminator 133 view .LVU2569
	movq	8(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L819
.L988:
	.loc 1 205 3212 view .LVU2570
	movl	$0, %ecx
.L819:
	.loc 1 205 3160 discriminator 136 view .LVU2571
	addq	%rcx, %rax
	.loc 1 205 3062 discriminator 136 view .LVU2572
	orq	%r10, %rax
	.loc 1 205 3314 discriminator 136 view .LVU2573
	cmpq	$63, %r14
	ja	.L989
	.loc 1 205 3349 discriminator 137 view .LVU2574
	leal	-128(%rdx), %ecx
	.loc 1 205 3314 discriminator 137 view .LVU2575
	movq	16(%rsi), %r8
	salq	%cl, %r8
	jmp	.L820
.L989:
	.loc 1 205 3314 view .LVU2576
	movl	$0, %r8d
.L820:
	.loc 1 205 3411 discriminator 140 view .LVU2577
	cmpq	$62, %r13
	ja	.L990
	.loc 1 205 3445 discriminator 141 view .LVU2578
	movl	$128, %ecx
	subl	%edx, %ecx
	.loc 1 205 3411 discriminator 141 view .LVU2579
	movq	16(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L821
.L990:
	.loc 1 205 3411 view .LVU2580
	movl	$0, %ecx
.L821:
	.loc 1 205 3357 discriminator 144 view .LVU2581
	addq	%rcx, %r8
	.loc 1 205 3260 discriminator 144 view .LVU2582
	orq	%r8, %rax
	.loc 1 205 3510 discriminator 144 view .LVU2583
	cmpq	$63, %r12
	ja	.L991
	.loc 1 205 3541 discriminator 145 view .LVU2584
	leal	-192(%rdx), %ecx
	.loc 1 205 3510 discriminator 145 view .LVU2585
	movq	24(%rsi), %r8
	salq	%cl, %r8
	jmp	.L822
.L991:
	.loc 1 205 3510 view .LVU2586
	movl	$0, %r8d
.L822:
	.loc 1 205 3603 discriminator 148 view .LVU2587
	cmpq	$62, %rbp
	ja	.L992
	.loc 1 205 3633 discriminator 149 view .LVU2588
	movl	$192, %ecx
	subl	%edx, %ecx
	.loc 1 205 3603 discriminator 149 view .LVU2589
	movq	24(%rsi), %r15
	shrq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L823
.L992:
	.loc 1 205 3603 view .LVU2590
	movl	$0, %ecx
.L823:
	.loc 1 205 3549 discriminator 152 view .LVU2591
	addq	%rcx, %r8
	.loc 1 205 3456 discriminator 152 view .LVU2592
	orq	%r8, %rax
	.loc 1 205 3698 discriminator 152 view .LVU2593
	cmpq	$63, %rbx
	ja	.L993
	.loc 1 205 3698 discriminator 153 view .LVU2594
	movq	32(%rsi), %r8
	movl	%edx, %ecx
	salq	%cl, %r8
	jmp	.L824
.L993:
	.loc 1 205 3698 view .LVU2595
	movl	$0, %r8d
.L824:
	.loc 1 205 3787 discriminator 156 view .LVU2596
	cmpq	$62, %r11
	ja	.L994
	.loc 1 205 3813 discriminator 157 view .LVU2597
	movl	$256, %ecx
	subl	%edx, %ecx
	.loc 1 205 3787 discriminator 157 view .LVU2598
	movq	32(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L825
.L994:
	.loc 1 205 3787 view .LVU2599
	movl	$0, %ecx
.L825:
	.loc 1 205 3733 discriminator 160 view .LVU2600
	addq	%rcx, %r8
	.loc 1 205 3644 discriminator 160 view .LVU2601
	orq	%r8, %rax
	.loc 1 205 3827 discriminator 160 view .LVU2602
	leaq	-320(%rdx), %rcx
	.loc 1 205 3878 discriminator 160 view .LVU2603
	cmpq	$63, %rcx
	ja	.L995
	.loc 1 205 3901 discriminator 161 view .LVU2604
	leal	-320(%rdx), %ecx
	.loc 1 205 3878 discriminator 161 view .LVU2605
	movq	40(%rsi), %r8
	salq	%cl, %r8
	jmp	.L826
.L995:
	.loc 1 205 3878 view .LVU2606
	movl	$0, %r8d
.L826:
	.loc 1 205 3911 discriminator 164 view .LVU2607
	leaq	-257(%rdx), %rcx
	.loc 1 205 3963 discriminator 164 view .LVU2608
	cmpq	$62, %rcx
	ja	.L996
	.loc 1 205 3985 discriminator 165 view .LVU2609
	movl	$320, %ecx
	subl	%edx, %ecx
	.loc 1 205 3963 discriminator 165 view .LVU2610
	movq	40(%rsi), %rbx
	shrq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L827
.L996:
	.loc 1 205 3963 view .LVU2611
	movl	$0, %ecx
.L827:
	.loc 1 205 3909 discriminator 168 view .LVU2612
	addq	%rcx, %r8
	.loc 1 205 3824 discriminator 168 view .LVU2613
	orq	%r8, %rax
	.loc 1 205 2862 discriminator 168 view .LVU2614
	movq	%rax, -96(%rsp)
	.loc 1 205 3996 is_stmt 1 discriminator 168 view .LVU2615
	.loc 1 206 9 discriminator 168 view .LVU2616
	.loc 1 206 16 is_stmt 0 discriminator 168 view .LVU2617
	movl	$384, %eax
	subq	%rdx, %rax
.LVL69:
	.loc 1 207 9 is_stmt 1 discriminator 168 view .LVU2618
	.loc 1 207 71 is_stmt 0 discriminator 168 view .LVU2619
	cmpq	$63, %rax
	ja	.L997
	.loc 1 207 71 discriminator 1 view .LVU2620
	movq	(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	jmp	.L828
.L997:
	.loc 1 207 71 view .LVU2621
	movl	$0, %r8d
.L828:
	.loc 1 207 108 discriminator 4 view .LVU2622
	movl	$447, %r9d
	subq	%rdx, %r9
	.loc 1 207 156 discriminator 4 view .LVU2623
	cmpq	$62, %r9
	ja	.L998
	.loc 1 207 175 discriminator 5 view .LVU2624
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 207 156 discriminator 5 view .LVU2625
	movq	(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L829
.L998:
	.loc 1 207 156 view .LVU2626
	movl	$0, %ecx
.L829:
	.loc 1 207 106 discriminator 8 view .LVU2627
	addq	%rcx, %r8
	.loc 1 207 21 discriminator 8 view .LVU2628
	movq	%r8, -48(%rsp)
	.loc 1 207 194 is_stmt 1 discriminator 8 view .LVU2629
	.loc 1 207 256 is_stmt 0 discriminator 8 view .LVU2630
	cmpq	$63, %rax
	ja	.L999
	.loc 1 207 256 discriminator 9 view .LVU2631
	movq	8(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	jmp	.L830
.L999:
	.loc 1 207 256 view .LVU2632
	movl	$0, %r8d
.L830:
	.loc 1 207 345 discriminator 12 view .LVU2633
	cmpq	$62, %r9
	ja	.L1000
	.loc 1 207 368 discriminator 13 view .LVU2634
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 207 345 discriminator 13 view .LVU2635
	movq	8(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L831
.L1000:
	.loc 1 207 345 view .LVU2636
	movl	$0, %ecx
.L831:
	.loc 1 207 295 discriminator 16 view .LVU2637
	leaq	(%r8,%rcx), %rbx
	.loc 1 207 389 discriminator 16 view .LVU2638
	movl	$320, %r11d
	subq	%rdx, %r11
	.loc 1 207 438 discriminator 16 view .LVU2639
	cmpq	$63, %r11
	ja	.L1001
	.loc 1 207 467 discriminator 17 view .LVU2640
	leal	-64(%rax), %ecx
	.loc 1 207 438 discriminator 17 view .LVU2641
	movq	(%rsi), %r8
	shrq	%cl, %r8
	jmp	.L832
.L1001:
	.loc 1 207 438 view .LVU2642
	movl	$0, %r8d
.L832:
	.loc 1 207 476 discriminator 20 view .LVU2643
	movl	$383, %r10d
	subq	%rdx, %r10
	.loc 1 207 526 discriminator 20 view .LVU2644
	cmpq	$62, %r10
	ja	.L1002
	.loc 1 207 553 discriminator 21 view .LVU2645
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 207 526 discriminator 21 view .LVU2646
	movq	(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L833
.L1002:
	.loc 1 207 526 view .LVU2647
	movl	$0, %ecx
.L833:
	.loc 1 207 474 discriminator 24 view .LVU2648
	addq	%rcx, %r8
	.loc 1 207 386 discriminator 24 view .LVU2649
	orq	%rbx, %r8
	.loc 1 207 206 discriminator 24 view .LVU2650
	movq	%r8, -40(%rsp)
	.loc 1 207 565 is_stmt 1 discriminator 24 view .LVU2651
	.loc 1 207 627 is_stmt 0 discriminator 24 view .LVU2652
	cmpq	$63, %rax
	ja	.L1003
	.loc 1 207 627 discriminator 25 view .LVU2653
	movq	16(%rsi), %rbx
	movl	%eax, %ecx
	shrq	%cl, %rbx
	jmp	.L834
.L1003:
	.loc 1 207 627 view .LVU2654
	movl	$0, %ebx
.L834:
	.loc 1 207 720 discriminator 28 view .LVU2655
	cmpq	$62, %r9
	ja	.L1004
	.loc 1 207 747 discriminator 29 view .LVU2656
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 207 720 discriminator 29 view .LVU2657
	movq	16(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L835
.L1004:
	.loc 1 207 720 view .LVU2658
	movl	$0, %ecx
.L835:
	.loc 1 207 670 discriminator 32 view .LVU2659
	addq	%rcx, %rbx
	.loc 1 207 817 discriminator 32 view .LVU2660
	cmpq	$63, %r11
	ja	.L1005
	.loc 1 207 850 discriminator 33 view .LVU2661
	leal	-64(%rax), %ecx
	.loc 1 207 817 discriminator 33 view .LVU2662
	movq	8(%rsi), %r8
	shrq	%cl, %r8
	jmp	.L836
.L1005:
	.loc 1 207 817 view .LVU2663
	movl	$0, %r8d
.L836:
	.loc 1 207 909 discriminator 36 view .LVU2664
	cmpq	$62, %r10
	ja	.L1006
	.loc 1 207 940 discriminator 37 view .LVU2665
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 207 909 discriminator 37 view .LVU2666
	movq	8(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L837
.L1006:
	.loc 1 207 909 view .LVU2667
	movl	$0, %ecx
.L837:
	.loc 1 207 857 discriminator 40 view .LVU2668
	addq	%rcx, %r8
	.loc 1 207 765 discriminator 40 view .LVU2669
	orq	%rbx, %r8
	.loc 1 207 954 discriminator 40 view .LVU2670
	movl	$256, %ebp
	subq	%rdx, %rbp
	.loc 1 207 1005 discriminator 40 view .LVU2671
	cmpq	$63, %rbp
	ja	.L1007
	.loc 1 207 1034 discriminator 41 view .LVU2672
	leal	-128(%rax), %ecx
	.loc 1 207 1005 discriminator 41 view .LVU2673
	movq	(%rsi), %r12
	shrq	%cl, %r12
	jmp	.L838
.L1007:
	.loc 1 207 1005 view .LVU2674
	movl	$0, %r12d
.L838:
	.loc 1 207 1044 discriminator 44 view .LVU2675
	movl	$319, %ebx
	subq	%rdx, %rbx
	.loc 1 207 1096 discriminator 44 view .LVU2676
	cmpq	$62, %rbx
	ja	.L1008
	.loc 1 207 1124 discriminator 45 view .LVU2677
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 207 1096 discriminator 45 view .LVU2678
	movq	(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L839
.L1008:
	.loc 1 207 1096 view .LVU2679
	movl	$0, %ecx
.L839:
	.loc 1 207 1042 discriminator 48 view .LVU2680
	addq	%r12, %rcx
	.loc 1 207 951 discriminator 48 view .LVU2681
	orq	%rcx, %r8
	.loc 1 207 577 discriminator 48 view .LVU2682
	movq	%r8, -32(%rsp)
	.loc 1 207 1136 is_stmt 1 discriminator 48 view .LVU2683
	.loc 1 207 1198 is_stmt 0 discriminator 48 view .LVU2684
	cmpq	$63, %rax
	ja	.L1009
	.loc 1 207 1198 discriminator 49 view .LVU2685
	movq	24(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	jmp	.L840
.L1009:
	.loc 1 207 1198 view .LVU2686
	movl	$0, %r8d
.L840:
	.loc 1 207 1295 discriminator 52 view .LVU2687
	cmpq	$62, %r9
	ja	.L1010
	.loc 1 207 1326 discriminator 53 view .LVU2688
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 207 1295 discriminator 53 view .LVU2689
	movq	24(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L841
.L1010:
	.loc 1 207 1295 view .LVU2690
	movl	$0, %ecx
.L841:
	.loc 1 207 1245 discriminator 56 view .LVU2691
	addq	%rcx, %r8
	.loc 1 207 1396 discriminator 56 view .LVU2692
	cmpq	$63, %r11
	ja	.L1011
	.loc 1 207 1433 discriminator 57 view .LVU2693
	leal	-64(%rax), %ecx
	.loc 1 207 1396 discriminator 57 view .LVU2694
	movq	16(%rsi), %r12
	shrq	%cl, %r12
	jmp	.L842
.L1011:
	.loc 1 207 1396 view .LVU2695
	movl	$0, %r12d
.L842:
	.loc 1 207 1492 discriminator 60 view .LVU2696
	cmpq	$62, %r10
	ja	.L1012
	.loc 1 207 1527 discriminator 61 view .LVU2697
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 207 1492 discriminator 61 view .LVU2698
	movq	16(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L843
.L1012:
	.loc 1 207 1492 view .LVU2699
	movl	$0, %ecx
.L843:
	.loc 1 207 1440 discriminator 64 view .LVU2700
	addq	%rcx, %r12
	.loc 1 207 1344 discriminator 64 view .LVU2701
	orq	%r8, %r12
	.loc 1 207 1592 discriminator 64 view .LVU2702
	cmpq	$63, %rbp
	ja	.L1013
	.loc 1 207 1625 discriminator 65 view .LVU2703
	leal	-128(%rax), %ecx
	.loc 1 207 1592 discriminator 65 view .LVU2704
	movq	8(%rsi), %r8
	shrq	%cl, %r8
	jmp	.L844
.L1013:
	.loc 1 207 1592 view .LVU2705
	movl	$0, %r8d
.L844:
	.loc 1 207 1687 discriminator 68 view .LVU2706
	cmpq	$62, %rbx
	ja	.L1014
	.loc 1 207 1719 discriminator 69 view .LVU2707
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 207 1687 discriminator 69 view .LVU2708
	movq	8(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L845
.L1014:
	.loc 1 207 1687 view .LVU2709
	movl	$0, %ecx
.L845:
	.loc 1 207 1633 discriminator 72 view .LVU2710
	addq	%rcx, %r8
	.loc 1 207 1538 discriminator 72 view .LVU2711
	orq	%r12, %r8
	.loc 1 207 1733 discriminator 72 view .LVU2712
	movl	$192, %r13d
	subq	%rdx, %r13
	.loc 1 207 1784 discriminator 72 view .LVU2713
	cmpq	$63, %r13
	ja	.L1015
	.loc 1 207 1813 discriminator 73 view .LVU2714
	leal	-192(%rax), %ecx
	.loc 1 207 1784 discriminator 73 view .LVU2715
	movq	(%rsi), %r14
	shrq	%cl, %r14
	jmp	.L846
.L1015:
	.loc 1 207 1784 view .LVU2716
	movl	$0, %r14d
.L846:
	.loc 1 207 1823 discriminator 76 view .LVU2717
	movl	$255, %r12d
	subq	%rdx, %r12
	.loc 1 207 1875 discriminator 76 view .LVU2718
	cmpq	$62, %r12
	ja	.L1016
	.loc 1 207 1903 discriminator 77 view .LVU2719
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 207 1875 discriminator 77 view .LVU2720
	movq	(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L847
.L1016:
	.loc 1 207 1875 view .LVU2721
	movl	$0, %ecx
.L847:
	.loc 1 207 1821 discriminator 80 view .LVU2722
	addq	%r14, %rcx
	.loc 1 207 1730 discriminator 80 view .LVU2723
	orq	%rcx, %r8
	.loc 1 207 1148 discriminator 80 view .LVU2724
	movq	%r8, -24(%rsp)
	.loc 1 207 1915 is_stmt 1 discriminator 80 view .LVU2725
	.loc 1 207 1977 is_stmt 0 discriminator 80 view .LVU2726
	cmpq	$63, %rax
	ja	.L1017
	.loc 1 207 1977 discriminator 81 view .LVU2727
	movq	32(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	jmp	.L848
.L1017:
	.loc 1 207 1977 view .LVU2728
	movl	$0, %r8d
.L848:
	.loc 1 207 2078 discriminator 84 view .LVU2729
	cmpq	$62, %r9
	ja	.L1018
	.loc 1 207 2113 discriminator 85 view .LVU2730
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 207 2078 discriminator 85 view .LVU2731
	movq	32(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L849
.L1018:
	.loc 1 207 2078 view .LVU2732
	movl	$0, %ecx
.L849:
	.loc 1 207 2028 discriminator 88 view .LVU2733
	addq	%rcx, %r8
	.loc 1 207 2183 discriminator 88 view .LVU2734
	cmpq	$63, %r11
	ja	.L1019
	.loc 1 207 2224 discriminator 89 view .LVU2735
	leal	-64(%rax), %ecx
	.loc 1 207 2183 discriminator 89 view .LVU2736
	movq	24(%rsi), %r14
	shrq	%cl, %r14
	jmp	.L850
.L1019:
	.loc 1 207 2183 view .LVU2737
	movl	$0, %r14d
.L850:
	.loc 1 207 2283 discriminator 92 view .LVU2738
	cmpq	$62, %r10
	ja	.L1020
	.loc 1 207 2322 discriminator 93 view .LVU2739
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 207 2283 discriminator 93 view .LVU2740
	movq	24(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L851
.L1020:
	.loc 1 207 2283 view .LVU2741
	movl	$0, %ecx
.L851:
	.loc 1 207 2231 discriminator 96 view .LVU2742
	addq	%r14, %rcx
	.loc 1 207 2131 discriminator 96 view .LVU2743
	orq	%rcx, %r8
	.loc 1 207 2387 discriminator 96 view .LVU2744
	cmpq	$63, %rbp
	ja	.L1021
	.loc 1 207 2424 discriminator 97 view .LVU2745
	leal	-128(%rax), %ecx
	.loc 1 207 2387 discriminator 97 view .LVU2746
	movq	16(%rsi), %r14
	shrq	%cl, %r14
	jmp	.L852
.L1021:
	.loc 1 207 2387 view .LVU2747
	movl	$0, %r14d
.L852:
	.loc 1 207 2486 discriminator 100 view .LVU2748
	cmpq	$62, %rbx
	ja	.L1022
	.loc 1 207 2522 discriminator 101 view .LVU2749
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 207 2486 discriminator 101 view .LVU2750
	movq	16(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L853
.L1022:
	.loc 1 207 2486 view .LVU2751
	movl	$0, %ecx
.L853:
	.loc 1 207 2432 discriminator 104 view .LVU2752
	addq	%r14, %rcx
	.loc 1 207 2333 discriminator 104 view .LVU2753
	orq	%rcx, %r8
	.loc 1 207 2587 discriminator 104 view .LVU2754
	cmpq	$63, %r13
	ja	.L1023
	.loc 1 207 2620 discriminator 105 view .LVU2755
	leal	-192(%rax), %ecx
	.loc 1 207 2587 discriminator 105 view .LVU2756
	movq	8(%rsi), %r14
	shrq	%cl, %r14
	jmp	.L854
.L1023:
	.loc 1 207 2587 view .LVU2757
	movl	$0, %r14d
.L854:
	.loc 1 207 2682 discriminator 108 view .LVU2758
	cmpq	$62, %r12
	ja	.L1024
	.loc 1 207 2714 discriminator 109 view .LVU2759
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 207 2682 discriminator 109 view .LVU2760
	movq	8(%rsi), %r15
	salq	%cl, %r15
	movq	%r15, %rcx
	jmp	.L855
.L1024:
	.loc 1 207 2682 view .LVU2761
	movl	$0, %ecx
.L855:
	.loc 1 207 2628 discriminator 112 view .LVU2762
	addq	%r14, %rcx
	.loc 1 207 2533 discriminator 112 view .LVU2763
	orq	%rcx, %r8
	movq	%r8, -112(%rsp)
	.loc 1 207 2728 discriminator 112 view .LVU2764
	movl	$128, %r15d
	subq	%rdx, %r15
	.loc 1 207 2779 discriminator 112 view .LVU2765
	cmpq	$63, %r15
	ja	.L1025
	.loc 1 207 2779 discriminator 113 view .LVU2766
	movq	(%rsi), %r14
	movl	%eax, %ecx
	shrq	%cl, %r14
	movq	%r14, -104(%rsp)
	jmp	.L856
.L1025:
	.loc 1 207 2779 view .LVU2767
	movq	$0, -104(%rsp)
.L856:
	.loc 1 207 2818 discriminator 116 view .LVU2768
	movl	$191, %r14d
	subq	%rdx, %r14
	.loc 1 207 2870 discriminator 116 view .LVU2769
	cmpq	$62, %r14
	ja	.L1026
	.loc 1 207 2898 discriminator 117 view .LVU2770
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 207 2870 discriminator 117 view .LVU2771
	movq	(%rsi), %r8
	salq	%cl, %r8
	movq	%r8, %rcx
	jmp	.L857
.L1026:
	.loc 1 207 2870 view .LVU2772
	movl	$0, %ecx
.L857:
	.loc 1 207 2816 discriminator 120 view .LVU2773
	addq	-104(%rsp), %rcx
	.loc 1 207 2725 discriminator 120 view .LVU2774
	movq	-112(%rsp), %r8
	orq	%rcx, %r8
	.loc 1 207 1927 discriminator 120 view .LVU2775
	movq	%r8, -16(%rsp)
	.loc 1 207 2910 is_stmt 1 discriminator 120 view .LVU2776
	.loc 1 207 2972 is_stmt 0 discriminator 120 view .LVU2777
	cmpq	$63, %rax
	ja	.L1027
	.loc 1 207 2972 discriminator 121 view .LVU2778
	movq	40(%rsi), %r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	jmp	.L858
.L1027:
	.loc 1 207 2972 view .LVU2779
	movl	$0, %r8d
.L858:
	.loc 1 207 3073 discriminator 124 view .LVU2780
	cmpq	$62, %r9
	ja	.L1028
	.loc 1 207 3108 discriminator 125 view .LVU2781
	movl	%eax, %ecx
	negl	%ecx
	.loc 1 207 3073 discriminator 125 view .LVU2782
	movq	40(%rsi), %r9
	salq	%cl, %r9
	movq	%r9, %rcx
	jmp	.L859
.L1028:
	.loc 1 207 3073 view .LVU2783
	movl	$0, %ecx
.L859:
	.loc 1 207 3023 discriminator 128 view .LVU2784
	addq	%rcx, %r8
	.loc 1 207 3178 discriminator 128 view .LVU2785
	cmpq	$63, %r11
	ja	.L1029
	.loc 1 207 3219 discriminator 129 view .LVU2786
	leal	-64(%rax), %ecx
	.loc 1 207 3178 discriminator 129 view .LVU2787
	movq	32(%rsi), %r9
	shrq	%cl, %r9
	jmp	.L860
.L1029:
	.loc 1 207 3178 view .LVU2788
	movl	$0, %r9d
.L860:
	.loc 1 207 3278 discriminator 132 view .LVU2789
	cmpq	$62, %r10
	ja	.L1030
	.loc 1 207 3317 discriminator 133 view .LVU2790
	movl	$64, %ecx
	subl	%eax, %ecx
	.loc 1 207 3278 discriminator 133 view .LVU2791
	movq	32(%rsi), %r10
	salq	%cl, %r10
	movq	%r10, %rcx
	jmp	.L861
.L1030:
	.loc 1 207 3278 view .LVU2792
	movl	$0, %ecx
.L861:
	.loc 1 207 3226 discriminator 136 view .LVU2793
	leaq	(%r9,%rcx), %r10
	.loc 1 207 3126 discriminator 136 view .LVU2794
	orq	%r8, %r10
	.loc 1 207 3382 discriminator 136 view .LVU2795
	cmpq	$63, %rbp
	ja	.L1031
	.loc 1 207 3419 discriminator 137 view .LVU2796
	leal	-128(%rax), %ecx
	.loc 1 207 3382 discriminator 137 view .LVU2797
	movq	24(%rsi), %r11
	shrq	%cl, %r11
	jmp	.L862
.L1031:
	.loc 1 207 3382 view .LVU2798
	movl	$0, %r11d
.L862:
	.loc 1 207 3481 discriminator 140 view .LVU2799
	cmpq	$62, %rbx
	ja	.L1032
	.loc 1 207 3517 discriminator 141 view .LVU2800
	movl	$128, %ecx
	subl	%eax, %ecx
	.loc 1 207 3481 discriminator 141 view .LVU2801
	movq	24(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L863
.L1032:
	.loc 1 207 3481 view .LVU2802
	movl	$0, %ecx
.L863:
	.loc 1 207 3427 discriminator 144 view .LVU2803
	addq	%rcx, %r11
	.loc 1 207 3328 discriminator 144 view .LVU2804
	orq	%r10, %r11
	.loc 1 207 3582 discriminator 144 view .LVU2805
	cmpq	$63, %r13
	ja	.L1033
	.loc 1 207 3615 discriminator 145 view .LVU2806
	leal	-192(%rax), %ecx
	.loc 1 207 3582 discriminator 145 view .LVU2807
	movq	16(%rsi), %r10
	shrq	%cl, %r10
	jmp	.L864
.L1033:
	.loc 1 207 3582 view .LVU2808
	movl	$0, %r10d
.L864:
	.loc 1 207 3677 discriminator 148 view .LVU2809
	cmpq	$62, %r12
	ja	.L1034
	.loc 1 207 3709 discriminator 149 view .LVU2810
	movl	$192, %ecx
	subl	%eax, %ecx
	.loc 1 207 3677 discriminator 149 view .LVU2811
	movq	16(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L865
.L1034:
	.loc 1 207 3677 view .LVU2812
	movl	$0, %ecx
.L865:
	.loc 1 207 3623 discriminator 152 view .LVU2813
	addq	%rcx, %r10
	.loc 1 207 3528 discriminator 152 view .LVU2814
	orq	%r11, %r10
	.loc 1 207 3774 discriminator 152 view .LVU2815
	cmpq	$63, %r15
	ja	.L1035
	.loc 1 207 3774 discriminator 153 view .LVU2816
	movq	8(%rsi), %r9
	movl	%eax, %ecx
	shrq	%cl, %r9
	jmp	.L866
.L1035:
	.loc 1 207 3774 view .LVU2817
	movl	$0, %r9d
.L866:
	.loc 1 207 3865 discriminator 156 view .LVU2818
	cmpq	$62, %r14
	ja	.L1036
	.loc 1 207 3893 discriminator 157 view .LVU2819
	movl	$256, %ecx
	subl	%eax, %ecx
	.loc 1 207 3865 discriminator 157 view .LVU2820
	movq	8(%rsi), %rbx
	salq	%cl, %rbx
	movq	%rbx, %rcx
	jmp	.L867
.L1036:
	.loc 1 207 3865 view .LVU2821
	movl	$0, %ecx
.L867:
	.loc 1 207 3811 discriminator 160 view .LVU2822
	addq	%rcx, %r9
	.loc 1 207 3720 discriminator 160 view .LVU2823
	orq	%r9, %r10
	.loc 1 207 3907 discriminator 160 view .LVU2824
	movl	$64, %ecx
	subq	%rdx, %rcx
	.loc 1 207 3958 discriminator 160 view .LVU2825
	cmpq	$63, %rcx
	ja	.L1037
	.loc 1 207 3983 discriminator 161 view .LVU2826
	leal	-320(%rax), %ecx
	.loc 1 207 3958 discriminator 161 view .LVU2827
	movq	(%rsi), %r8
	shrq	%cl, %r8
	jmp	.L868
.L1037:
	.loc 1 207 3958 view .LVU2828
	movl	$0, %r8d
.L868:
	.loc 1 207 3993 discriminator 164 view .LVU2829
	movl	$127, %ecx
	subq	%rdx, %rcx
	.loc 1 207 4045 discriminator 164 view .LVU2830
	cmpq	$62, %rcx
	ja	.L1038
	.loc 1 207 4053 discriminator 165 view .LVU2831
	movq	(%rsi), %rdx
	.loc 1 207 4069 discriminator 165 view .LVU2832
	movl	$320, %ecx
	subl	%eax, %ecx
	.loc 1 207 4045 discriminator 165 view .LVU2833
	movq	%rdx, %rax
.LVL70:
	.loc 1 207 4045 discriminator 165 view .LVU2834
	salq	%cl, %rax
	jmp	.L869
.LVL71:
.L1038:
	.loc 1 207 4045 view .LVU2835
	movl	$0, %eax
.LVL72:
.L869:
	.loc 1 207 3991 discriminator 168 view .LVU2836
	addq	%rax, %r8
	.loc 1 207 3904 discriminator 168 view .LVU2837
	orq	%r10, %r8
	.loc 1 207 2922 discriminator 168 view .LVU2838
	movq	%r8, -8(%rsp)
.L785:
	.loc 1 207 4080 is_stmt 1 discriminator 169 view .LVU2839
	.loc 1 210 5 discriminator 169 view .LVU2840
	.loc 1 210 30 is_stmt 0 discriminator 169 view .LVU2841
	movq	-96(%rsp), %rax
	.loc 1 210 25 discriminator 169 view .LVU2842
	orq	-48(%rsp), %rax
	.loc 1 210 15 discriminator 169 view .LVU2843
	movq	%rax, (%rdi)
	.loc 1 211 30 discriminator 169 view .LVU2844
	movq	-88(%rsp), %rax
	.loc 1 211 25 discriminator 169 view .LVU2845
	orq	-40(%rsp), %rax
	.loc 1 211 15 discriminator 169 view .LVU2846
	movq	%rax, 8(%rdi)
	.loc 1 212 30 discriminator 169 view .LVU2847
	movq	-80(%rsp), %rax
	.loc 1 212 25 discriminator 169 view .LVU2848
	orq	-32(%rsp), %rax
	.loc 1 212 15 discriminator 169 view .LVU2849
	movq	%rax, 16(%rdi)
	.loc 1 213 30 discriminator 169 view .LVU2850
	movq	-72(%rsp), %rax
	.loc 1 213 25 discriminator 169 view .LVU2851
	orq	-24(%rsp), %rax
	.loc 1 213 15 discriminator 169 view .LVU2852
	movq	%rax, 24(%rdi)
	.loc 1 214 30 discriminator 169 view .LVU2853
	movq	-64(%rsp), %rax
	.loc 1 214 25 discriminator 169 view .LVU2854
	orq	-16(%rsp), %rax
	.loc 1 214 15 discriminator 169 view .LVU2855
	movq	%rax, 32(%rdi)
	.loc 1 215 30 discriminator 169 view .LVU2856
	movq	-56(%rsp), %rax
	.loc 1 215 25 discriminator 169 view .LVU2857
	orq	-8(%rsp), %rax
	.loc 1 215 15 discriminator 169 view .LVU2858
	movq	%rax, 40(%rdi)
	.loc 1 217 5 is_stmt 1 discriminator 169 view .LVU2859
	.loc 1 218 1 is_stmt 0 discriminator 169 view .LVU2860
	movq	%rdi, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	biguint_lrot, .-biguint_lrot
	.globl	biguint_rev
	.type	biguint_rev, @function
biguint_rev:
.LVL73:
.LFB33:
	.loc 1 229 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 229 1 is_stmt 0 view .LVU2862
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	movq	%rdi, %rax
	.loc 1 230 5 is_stmt 1 view .LVU2863
	.loc 1 230 37 is_stmt 0 view .LVU2864
	movq	40(%rsi), %rdi
.LVL74:
	.loc 1 230 37 view .LVU2865
	rolq	$32, %rdi
	.loc 1 230 14 view .LVU2866
	movq	%rdi, (%rax)
	.loc 1 230 61 is_stmt 1 view .LVU2867
	.loc 1 230 109 is_stmt 0 view .LVU2868
	movq	%rdi, %r8
	shrq	$16, %r8
	movabsq	$281470681808895, %r14
	andq	%r14, %r8
	.loc 1 230 157 view .LVU2869
	salq	$16, %rdi
	movabsq	$-281470681808896, %r13
	andq	%r13, %rdi
	.loc 1 230 118 view .LVU2870
	orq	%rdi, %r8
	.loc 1 230 70 view .LVU2871
	movq	%r8, (%rax)
	.loc 1 230 167 is_stmt 1 view .LVU2872
	.loc 1 230 215 is_stmt 0 view .LVU2873
	movq	%r8, %rdi
	shrq	$8, %rdi
	movabsq	$71777214294589695, %r12
	andq	%r12, %rdi
	.loc 1 230 262 view .LVU2874
	salq	$8, %r8
	movabsq	$-71777214294589696, %rcx
	andq	%rcx, %r8
	.loc 1 230 223 view .LVU2875
	orq	%r8, %rdi
	.loc 1 230 176 view .LVU2876
	movq	%rdi, (%rax)
	.loc 1 230 271 is_stmt 1 view .LVU2877
	.loc 1 230 319 is_stmt 0 view .LVU2878
	movq	%rdi, %r8
	shrq	$4, %r8
	movabsq	$1085102592571150095, %rbx
	andq	%rbx, %r8
	.loc 1 230 366 view .LVU2879
	salq	$4, %rdi
	movabsq	$-1085102592571150096, %rdx
	andq	%rdx, %rdi
	.loc 1 230 327 view .LVU2880
	orq	%rdi, %r8
	.loc 1 230 280 view .LVU2881
	movq	%r8, (%rax)
	.loc 1 230 375 is_stmt 1 view .LVU2882
	.loc 1 230 423 is_stmt 0 view .LVU2883
	movq	%r8, %rdi
	shrq	$2, %rdi
	movabsq	$3689348814741910323, %r11
	andq	%r11, %rdi
	.loc 1 230 470 view .LVU2884
	salq	$2, %r8
	movabsq	$-3689348814741910324, %r9
	andq	%r9, %r8
	.loc 1 230 431 view .LVU2885
	orq	%r8, %rdi
	.loc 1 230 384 view .LVU2886
	movq	%rdi, (%rax)
	.loc 1 230 479 is_stmt 1 view .LVU2887
	.loc 1 230 527 is_stmt 0 view .LVU2888
	movq	%rdi, %r10
	shrq	%r10
	movabsq	$6148914691236517205, %r8
	andq	%r8, %r10
	.loc 1 230 574 view .LVU2889
	leaq	(%rdi,%rdi), %rbp
	movabsq	$-6148914691236517206, %rdi
	andq	%rdi, %rbp
	.loc 1 230 535 view .LVU2890
	orq	%rbp, %r10
	.loc 1 230 488 view .LVU2891
	movq	%r10, (%rax)
	.loc 1 230 582 is_stmt 1 view .LVU2892
	.loc 1 231 5 view .LVU2893
	.loc 1 231 37 is_stmt 0 view .LVU2894
	movq	32(%rsi), %rbp
	rolq	$32, %rbp
	.loc 1 231 14 view .LVU2895
	movq	%rbp, 8(%rax)
	.loc 1 231 61 is_stmt 1 view .LVU2896
	.loc 1 231 109 is_stmt 0 view .LVU2897
	movq	%rbp, %r10
	shrq	$16, %r10
	andq	%r14, %r10
	.loc 1 231 157 view .LVU2898
	salq	$16, %rbp
	andq	%r13, %rbp
	.loc 1 231 118 view .LVU2899
	orq	%rbp, %r10
	.loc 1 231 70 view .LVU2900
	movq	%r10, 8(%rax)
	.loc 1 231 167 is_stmt 1 view .LVU2901
	.loc 1 231 215 is_stmt 0 view .LVU2902
	movq	%r10, %r15
	shrq	$8, %r15
	andq	%r12, %r15
	.loc 1 231 262 view .LVU2903
	salq	$8, %r10
	andq	%rcx, %r10
	.loc 1 231 223 view .LVU2904
	orq	%r10, %r15
	.loc 1 231 176 view .LVU2905
	movq	%r15, 8(%rax)
	.loc 1 231 271 is_stmt 1 view .LVU2906
	.loc 1 231 319 is_stmt 0 view .LVU2907
	movq	%r15, %rbp
	shrq	$4, %rbp
	andq	%rbx, %rbp
	.loc 1 231 366 view .LVU2908
	salq	$4, %r15
	andq	%rdx, %r15
	.loc 1 231 327 view .LVU2909
	orq	%r15, %rbp
	.loc 1 231 280 view .LVU2910
	movq	%rbp, 8(%rax)
	.loc 1 231 375 is_stmt 1 view .LVU2911
	.loc 1 231 423 is_stmt 0 view .LVU2912
	movq	%rbp, %r10
	shrq	$2, %r10
	andq	%r11, %r10
	.loc 1 231 470 view .LVU2913
	salq	$2, %rbp
	andq	%r9, %rbp
	.loc 1 231 431 view .LVU2914
	orq	%rbp, %r10
	.loc 1 231 384 view .LVU2915
	movq	%r10, 8(%rax)
	.loc 1 231 479 is_stmt 1 view .LVU2916
	.loc 1 231 527 is_stmt 0 view .LVU2917
	movq	%r10, %rbp
	shrq	%rbp
	andq	%r8, %rbp
	.loc 1 231 574 view .LVU2918
	addq	%r10, %r10
	andq	%rdi, %r10
	.loc 1 231 535 view .LVU2919
	orq	%rbp, %r10
	.loc 1 231 488 view .LVU2920
	movq	%r10, 8(%rax)
	.loc 1 231 582 is_stmt 1 view .LVU2921
	.loc 1 232 5 view .LVU2922
	.loc 1 232 37 is_stmt 0 view .LVU2923
	movq	24(%rsi), %rbp
	rolq	$32, %rbp
	.loc 1 232 14 view .LVU2924
	movq	%rbp, 16(%rax)
	.loc 1 232 61 is_stmt 1 view .LVU2925
	.loc 1 232 109 is_stmt 0 view .LVU2926
	movq	%rbp, %r10
	shrq	$16, %r10
	andq	%r14, %r10
	.loc 1 232 157 view .LVU2927
	salq	$16, %rbp
	andq	%r13, %rbp
	.loc 1 232 118 view .LVU2928
	orq	%rbp, %r10
	.loc 1 232 70 view .LVU2929
	movq	%r10, 16(%rax)
	.loc 1 232 167 is_stmt 1 view .LVU2930
	.loc 1 232 215 is_stmt 0 view .LVU2931
	movq	%r10, %r15
	shrq	$8, %r15
	andq	%r12, %r15
	.loc 1 232 262 view .LVU2932
	salq	$8, %r10
	andq	%rcx, %r10
	.loc 1 232 223 view .LVU2933
	orq	%r10, %r15
	.loc 1 232 176 view .LVU2934
	movq	%r15, 16(%rax)
	.loc 1 232 271 is_stmt 1 view .LVU2935
	.loc 1 232 319 is_stmt 0 view .LVU2936
	movq	%r15, %rbp
	shrq	$4, %rbp
	andq	%rbx, %rbp
	.loc 1 232 366 view .LVU2937
	salq	$4, %r15
	andq	%rdx, %r15
	.loc 1 232 327 view .LVU2938
	orq	%r15, %rbp
	.loc 1 232 280 view .LVU2939
	movq	%rbp, 16(%rax)
	.loc 1 232 375 is_stmt 1 view .LVU2940
	.loc 1 232 423 is_stmt 0 view .LVU2941
	movq	%rbp, %r10
	shrq	$2, %r10
	andq	%r11, %r10
	.loc 1 232 470 view .LVU2942
	salq	$2, %rbp
	andq	%r9, %rbp
	.loc 1 232 431 view .LVU2943
	orq	%rbp, %r10
	.loc 1 232 384 view .LVU2944
	movq	%r10, 16(%rax)
	.loc 1 232 479 is_stmt 1 view .LVU2945
	.loc 1 232 527 is_stmt 0 view .LVU2946
	movq	%r10, %rbp
	shrq	%rbp
	andq	%r8, %rbp
	.loc 1 232 574 view .LVU2947
	addq	%r10, %r10
	andq	%rdi, %r10
	.loc 1 232 535 view .LVU2948
	orq	%rbp, %r10
	.loc 1 232 488 view .LVU2949
	movq	%r10, 16(%rax)
	.loc 1 232 582 is_stmt 1 view .LVU2950
	.loc 1 233 5 view .LVU2951
	.loc 1 233 37 is_stmt 0 view .LVU2952
	movq	16(%rsi), %rbp
	rolq	$32, %rbp
	.loc 1 233 14 view .LVU2953
	movq	%rbp, 24(%rax)
	.loc 1 233 61 is_stmt 1 view .LVU2954
	.loc 1 233 109 is_stmt 0 view .LVU2955
	movq	%rbp, %r10
	shrq	$16, %r10
	andq	%r14, %r10
	.loc 1 233 157 view .LVU2956
	salq	$16, %rbp
	andq	%r13, %rbp
	.loc 1 233 118 view .LVU2957
	orq	%rbp, %r10
	.loc 1 233 70 view .LVU2958
	movq	%r10, 24(%rax)
	.loc 1 233 167 is_stmt 1 view .LVU2959
	.loc 1 233 215 is_stmt 0 view .LVU2960
	movq	%r10, %r15
	shrq	$8, %r15
	andq	%r12, %r15
	.loc 1 233 262 view .LVU2961
	salq	$8, %r10
	andq	%rcx, %r10
	.loc 1 233 223 view .LVU2962
	orq	%r10, %r15
	.loc 1 233 176 view .LVU2963
	movq	%r15, 24(%rax)
	.loc 1 233 271 is_stmt 1 view .LVU2964
	.loc 1 233 319 is_stmt 0 view .LVU2965
	movq	%r15, %rbp
	shrq	$4, %rbp
	andq	%rbx, %rbp
	.loc 1 233 366 view .LVU2966
	salq	$4, %r15
	andq	%rdx, %r15
	.loc 1 233 327 view .LVU2967
	orq	%r15, %rbp
	.loc 1 233 280 view .LVU2968
	movq	%rbp, 24(%rax)
	.loc 1 233 375 is_stmt 1 view .LVU2969
	.loc 1 233 423 is_stmt 0 view .LVU2970
	movq	%rbp, %r10
	shrq	$2, %r10
	andq	%r11, %r10
	.loc 1 233 470 view .LVU2971
	salq	$2, %rbp
	andq	%r9, %rbp
	.loc 1 233 431 view .LVU2972
	orq	%rbp, %r10
	.loc 1 233 384 view .LVU2973
	movq	%r10, 24(%rax)
	.loc 1 233 479 is_stmt 1 view .LVU2974
	.loc 1 233 527 is_stmt 0 view .LVU2975
	movq	%r10, %rbp
	shrq	%rbp
	andq	%r8, %rbp
	.loc 1 233 574 view .LVU2976
	addq	%r10, %r10
	andq	%rdi, %r10
	.loc 1 233 535 view .LVU2977
	orq	%rbp, %r10
	.loc 1 233 488 view .LVU2978
	movq	%r10, 24(%rax)
	.loc 1 233 582 is_stmt 1 view .LVU2979
	.loc 1 234 5 view .LVU2980
	.loc 1 234 37 is_stmt 0 view .LVU2981
	movq	8(%rsi), %rbp
	rolq	$32, %rbp
	.loc 1 234 14 view .LVU2982
	movq	%rbp, 32(%rax)
	.loc 1 234 61 is_stmt 1 view .LVU2983
	.loc 1 234 109 is_stmt 0 view .LVU2984
	movq	%rbp, %r10
	shrq	$16, %r10
	andq	%r14, %r10
	.loc 1 234 157 view .LVU2985
	salq	$16, %rbp
	andq	%r13, %rbp
	.loc 1 234 118 view .LVU2986
	orq	%rbp, %r10
	.loc 1 234 70 view .LVU2987
	movq	%r10, 32(%rax)
	.loc 1 234 167 is_stmt 1 view .LVU2988
	.loc 1 234 215 is_stmt 0 view .LVU2989
	movq	%r10, %r15
	shrq	$8, %r15
	andq	%r12, %r15
	.loc 1 234 262 view .LVU2990
	salq	$8, %r10
	andq	%rcx, %r10
	.loc 1 234 223 view .LVU2991
	orq	%r10, %r15
	.loc 1 234 176 view .LVU2992
	movq	%r15, 32(%rax)
	.loc 1 234 271 is_stmt 1 view .LVU2993
	.loc 1 234 319 is_stmt 0 view .LVU2994
	movq	%r15, %rbp
	shrq	$4, %rbp
	andq	%rbx, %rbp
	.loc 1 234 366 view .LVU2995
	salq	$4, %r15
	andq	%rdx, %r15
	.loc 1 234 327 view .LVU2996
	orq	%r15, %rbp
	.loc 1 234 280 view .LVU2997
	movq	%rbp, 32(%rax)
	.loc 1 234 375 is_stmt 1 view .LVU2998
	.loc 1 234 423 is_stmt 0 view .LVU2999
	movq	%rbp, %r10
	shrq	$2, %r10
	andq	%r11, %r10
	.loc 1 234 470 view .LVU3000
	salq	$2, %rbp
	andq	%r9, %rbp
	.loc 1 234 431 view .LVU3001
	orq	%rbp, %r10
	.loc 1 234 384 view .LVU3002
	movq	%r10, 32(%rax)
	.loc 1 234 479 is_stmt 1 view .LVU3003
	.loc 1 234 527 is_stmt 0 view .LVU3004
	movq	%r10, %rbp
	shrq	%rbp
	andq	%r8, %rbp
	.loc 1 234 574 view .LVU3005
	addq	%r10, %r10
	andq	%rdi, %r10
	.loc 1 234 535 view .LVU3006
	orq	%rbp, %r10
	.loc 1 234 488 view .LVU3007
	movq	%r10, 32(%rax)
	.loc 1 234 582 is_stmt 1 view .LVU3008
	.loc 1 235 5 view .LVU3009
	.loc 1 235 21 is_stmt 0 view .LVU3010
	movq	(%rsi), %rsi
.LVL75:
	.loc 1 235 37 view .LVU3011
	rolq	$32, %rsi
	.loc 1 235 14 view .LVU3012
	movq	%rsi, 40(%rax)
	.loc 1 235 61 is_stmt 1 view .LVU3013
	.loc 1 235 109 is_stmt 0 view .LVU3014
	movq	%rsi, %r10
	shrq	$16, %r10
	andq	%r14, %r10
	.loc 1 235 157 view .LVU3015
	salq	$16, %rsi
	andq	%rsi, %r13
	.loc 1 235 118 view .LVU3016
	orq	%r13, %r10
	.loc 1 235 70 view .LVU3017
	movq	%r10, 40(%rax)
	.loc 1 235 167 is_stmt 1 view .LVU3018
	.loc 1 235 215 is_stmt 0 view .LVU3019
	movq	%r10, %rsi
	shrq	$8, %rsi
	andq	%r12, %rsi
	.loc 1 235 262 view .LVU3020
	salq	$8, %r10
	andq	%rcx, %r10
	.loc 1 235 223 view .LVU3021
	orq	%r10, %rsi
	.loc 1 235 176 view .LVU3022
	movq	%rsi, 40(%rax)
	.loc 1 235 271 is_stmt 1 view .LVU3023
	.loc 1 235 319 is_stmt 0 view .LVU3024
	movq	%rsi, %rcx
	shrq	$4, %rcx
	andq	%rbx, %rcx
	.loc 1 235 366 view .LVU3025
	salq	$4, %rsi
	andq	%rdx, %rsi
	.loc 1 235 327 view .LVU3026
	orq	%rsi, %rcx
	.loc 1 235 280 view .LVU3027
	movq	%rcx, 40(%rax)
	.loc 1 235 375 is_stmt 1 view .LVU3028
	.loc 1 235 423 is_stmt 0 view .LVU3029
	movq	%rcx, %rdx
	shrq	$2, %rdx
	andq	%r11, %rdx
	.loc 1 235 470 view .LVU3030
	salq	$2, %rcx
	andq	%r9, %rcx
	.loc 1 235 431 view .LVU3031
	orq	%rcx, %rdx
	.loc 1 235 384 view .LVU3032
	movq	%rdx, 40(%rax)
	.loc 1 235 479 is_stmt 1 view .LVU3033
	.loc 1 235 527 is_stmt 0 view .LVU3034
	movq	%rdx, %rcx
	shrq	%rcx
	andq	%rcx, %r8
	.loc 1 235 574 view .LVU3035
	addq	%rdx, %rdx
	andq	%rdi, %rdx
	.loc 1 235 535 view .LVU3036
	orq	%r8, %rdx
	.loc 1 235 488 view .LVU3037
	movq	%rdx, 40(%rax)
	.loc 1 235 582 is_stmt 1 view .LVU3038
	.loc 1 237 5 view .LVU3039
	.loc 1 238 1 is_stmt 0 view .LVU3040
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	biguint_rev, .-biguint_rev
	.globl	biguint_eq
	.type	biguint_eq, @function
biguint_eq:
.LVL76:
.LFB34:
	.loc 1 242 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 243 5 view .LVU3042
	.loc 1 244 69 is_stmt 0 view .LVU3043
	movq	(%rsi), %rax
	cmpq	%rax, (%rdi)
	je	.L1052
	movl	$0, %eax
	ret
.L1052:
	.loc 1 243 37 view .LVU3044
	movq	8(%rsi), %rax
	cmpq	%rax, 8(%rdi)
	je	.L1053
	.loc 1 244 69 view .LVU3045
	movl	$0, %eax
	ret
.L1053:
	.loc 1 243 65 discriminator 1 view .LVU3046
	movq	16(%rsi), %rax
	cmpq	%rax, 16(%rdi)
	je	.L1054
	.loc 1 244 69 view .LVU3047
	movl	$0, %eax
	ret
.L1054:
	.loc 1 244 13 discriminator 3 view .LVU3048
	movq	24(%rsi), %rax
	cmpq	%rax, 24(%rdi)
	je	.L1055
	.loc 1 244 69 view .LVU3049
	movl	$0, %eax
	ret
.L1055:
	.loc 1 244 41 discriminator 2 view .LVU3050
	movq	32(%rsi), %rax
	cmpq	%rax, 32(%rdi)
	je	.L1056
	.loc 1 244 69 view .LVU3051
	movl	$0, %eax
	ret
.L1056:
	.loc 1 244 69 discriminator 4 view .LVU3052
	movq	40(%rsi), %rax
	cmpq	%rax, 40(%rdi)
	je	.L1051
	.loc 1 244 69 view .LVU3053
	movl	$0, %eax
	ret
.L1051:
	movl	$1, %eax
	.loc 1 245 1 view .LVU3054
	ret
	.cfi_endproc
.LFE34:
	.size	biguint_eq, .-biguint_eq
	.globl	biguint_neq
	.type	biguint_neq, @function
biguint_neq:
.LVL77:
.LFB35:
	.loc 1 247 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 248 5 view .LVU3056
	.loc 1 249 69 is_stmt 0 view .LVU3057
	movq	(%rsi), %rax
	cmpq	%rax, (%rdi)
	je	.L1065
	movl	$1, %eax
	ret
.L1065:
	.loc 1 248 37 view .LVU3058
	movq	8(%rsi), %rax
	cmpq	%rax, 8(%rdi)
	je	.L1066
	.loc 1 249 69 view .LVU3059
	movl	$1, %eax
	ret
.L1066:
	.loc 1 248 65 discriminator 1 view .LVU3060
	movq	16(%rsi), %rax
	cmpq	%rax, 16(%rdi)
	je	.L1067
	.loc 1 249 69 view .LVU3061
	movl	$1, %eax
	ret
.L1067:
	.loc 1 249 13 discriminator 2 view .LVU3062
	movq	24(%rsi), %rax
	cmpq	%rax, 24(%rdi)
	je	.L1068
	.loc 1 249 69 view .LVU3063
	movl	$1, %eax
	ret
.L1068:
	.loc 1 249 41 discriminator 3 view .LVU3064
	movq	32(%rsi), %rax
	cmpq	%rax, 32(%rdi)
	je	.L1069
	.loc 1 249 69 view .LVU3065
	movl	$1, %eax
	ret
.L1069:
	.loc 1 249 69 discriminator 5 view .LVU3066
	movq	40(%rsi), %rax
	cmpq	%rax, 40(%rdi)
	je	.L1064
	.loc 1 249 69 view .LVU3067
	movl	$1, %eax
	ret
.L1064:
	movl	$0, %eax
	.loc 1 250 1 view .LVU3068
	ret
	.cfi_endproc
.LFE35:
	.size	biguint_neq, .-biguint_neq
	.globl	biguint_gt
	.type	biguint_gt, @function
biguint_gt:
.LVL78:
.LFB36:
	.loc 1 253 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 254 5 view .LVU3070
	.loc 1 254 17 is_stmt 0 view .LVU3071
	movq	(%rdi), %rdx
	.loc 1 254 29 view .LVU3072
	movq	(%rsi), %rax
	.loc 1 254 36 view .LVU3073
	cmpq	%rax, %rdx
	ja	.L1072
	.loc 1 254 36 discriminator 2 view .LVU3074
	je	.L1083
	.loc 1 254 36 view .LVU3075
	movl	$0, %eax
	ret
.L1083:
	.loc 1 255 45 view .LVU3076
	movq	8(%rdi), %rdx
	.loc 1 255 57 view .LVU3077
	movq	8(%rsi), %rax
	.loc 1 255 37 view .LVU3078
	cmpq	%rax, %rdx
	ja	.L1074
	.loc 1 255 64 discriminator 1 view .LVU3079
	je	.L1084
	.loc 1 254 36 view .LVU3080
	movl	$0, %eax
	ret
.L1084:
	.loc 1 256 72 view .LVU3081
	movq	16(%rdi), %rdx
	.loc 1 256 84 view .LVU3082
	movq	16(%rsi), %rax
	.loc 1 256 64 view .LVU3083
	cmpq	%rax, %rdx
	ja	.L1076
	.loc 1 256 91 discriminator 1 view .LVU3084
	je	.L1085
	.loc 1 254 36 view .LVU3085
	movl	$0, %eax
	ret
.L1085:
	.loc 1 257 99 view .LVU3086
	movq	24(%rdi), %rdx
	.loc 1 257 111 view .LVU3087
	movq	24(%rsi), %rax
	.loc 1 257 91 view .LVU3088
	cmpq	%rax, %rdx
	ja	.L1078
	.loc 1 257 118 discriminator 1 view .LVU3089
	je	.L1086
	.loc 1 254 36 view .LVU3090
	movl	$0, %eax
	ret
.L1086:
	.loc 1 258 126 view .LVU3091
	movq	32(%rdi), %rdx
	.loc 1 258 138 view .LVU3092
	movq	32(%rsi), %rax
	.loc 1 258 118 view .LVU3093
	cmpq	%rax, %rdx
	ja	.L1080
	.loc 1 258 145 discriminator 1 view .LVU3094
	je	.L1087
	.loc 1 254 36 view .LVU3095
	movl	$0, %eax
	ret
.L1087:
	.loc 1 259 145 view .LVU3096
	movq	40(%rsi), %rax
	cmpq	%rax, 40(%rdi)
	ja	.L1082
	.loc 1 254 36 view .LVU3097
	movl	$0, %eax
	ret
.L1072:
	.loc 1 254 36 view .LVU3098
	movl	$1, %eax
	ret
.L1074:
	.loc 1 254 36 view .LVU3099
	movl	$1, %eax
	ret
.L1076:
	.loc 1 254 36 view .LVU3100
	movl	$1, %eax
	ret
.L1078:
	.loc 1 254 36 view .LVU3101
	movl	$1, %eax
	ret
.L1080:
	.loc 1 254 36 view .LVU3102
	movl	$1, %eax
	ret
.L1082:
	.loc 1 254 36 view .LVU3103
	movl	$1, %eax
	.loc 1 260 1 view .LVU3104
	ret
	.cfi_endproc
.LFE36:
	.size	biguint_gt, .-biguint_gt
	.globl	biguint_gteq
	.type	biguint_gteq, @function
biguint_gteq:
.LVL79:
.LFB37:
	.loc 1 262 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 263 5 view .LVU3106
	.loc 1 263 17 is_stmt 0 view .LVU3107
	movq	(%rdi), %rdx
	.loc 1 263 29 view .LVU3108
	movq	(%rsi), %rax
	.loc 1 263 36 view .LVU3109
	cmpq	%rax, %rdx
	ja	.L1090
	.loc 1 263 36 discriminator 2 view .LVU3110
	je	.L1102
	.loc 1 263 36 view .LVU3111
	movl	$0, %eax
	ret
.L1102:
	.loc 1 264 45 view .LVU3112
	movq	8(%rdi), %rdx
	.loc 1 264 57 view .LVU3113
	movq	8(%rsi), %rax
	.loc 1 264 37 view .LVU3114
	cmpq	%rax, %rdx
	ja	.L1092
	.loc 1 264 64 discriminator 1 view .LVU3115
	je	.L1103
	.loc 1 263 36 view .LVU3116
	movl	$0, %eax
	ret
.L1103:
	.loc 1 265 72 view .LVU3117
	movq	16(%rdi), %rdx
	.loc 1 265 84 view .LVU3118
	movq	16(%rsi), %rax
	.loc 1 265 64 view .LVU3119
	cmpq	%rax, %rdx
	ja	.L1094
	.loc 1 265 91 discriminator 1 view .LVU3120
	je	.L1104
	.loc 1 263 36 view .LVU3121
	movl	$0, %eax
	ret
.L1104:
	.loc 1 266 99 view .LVU3122
	movq	24(%rdi), %rdx
	.loc 1 266 111 view .LVU3123
	movq	24(%rsi), %rax
	.loc 1 266 91 view .LVU3124
	cmpq	%rax, %rdx
	ja	.L1096
	.loc 1 266 118 discriminator 1 view .LVU3125
	je	.L1105
	.loc 1 263 36 view .LVU3126
	movl	$0, %eax
	ret
.L1105:
	.loc 1 267 126 view .LVU3127
	movq	32(%rdi), %rdx
	.loc 1 267 138 view .LVU3128
	movq	32(%rsi), %rax
	.loc 1 267 118 view .LVU3129
	cmpq	%rax, %rdx
	ja	.L1098
	.loc 1 267 145 discriminator 1 view .LVU3130
	je	.L1106
	.loc 1 263 36 view .LVU3131
	movl	$0, %eax
	ret
.L1106:
	.loc 1 268 153 view .LVU3132
	movq	40(%rdi), %rdx
	.loc 1 268 165 view .LVU3133
	movq	40(%rsi), %rax
	.loc 1 268 145 view .LVU3134
	cmpq	%rax, %rdx
	ja	.L1100
	.loc 1 268 172 discriminator 1 view .LVU3135
	je	.L1101
	.loc 1 263 36 view .LVU3136
	movl	$0, %eax
	ret
.L1090:
	.loc 1 263 36 view .LVU3137
	movl	$1, %eax
	ret
.L1092:
	.loc 1 263 36 view .LVU3138
	movl	$1, %eax
	ret
.L1094:
	.loc 1 263 36 view .LVU3139
	movl	$1, %eax
	ret
.L1096:
	.loc 1 263 36 view .LVU3140
	movl	$1, %eax
	ret
.L1098:
	.loc 1 263 36 view .LVU3141
	movl	$1, %eax
	ret
.L1100:
	.loc 1 263 36 view .LVU3142
	movl	$1, %eax
	ret
.L1101:
	movl	$1, %eax
	.loc 1 270 1 view .LVU3143
	ret
	.cfi_endproc
.LFE37:
	.size	biguint_gteq, .-biguint_gteq
	.globl	biguint_lt
	.type	biguint_lt, @function
biguint_lt:
.LVL80:
.LFB38:
	.loc 1 273 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 274 5 view .LVU3145
	.loc 1 274 17 is_stmt 0 view .LVU3146
	movq	(%rdi), %rdx
	.loc 1 274 29 view .LVU3147
	movq	(%rsi), %rax
	.loc 1 274 36 view .LVU3148
	cmpq	%rax, %rdx
	jb	.L1109
	.loc 1 274 36 discriminator 2 view .LVU3149
	je	.L1120
	.loc 1 274 36 view .LVU3150
	movl	$0, %eax
	ret
.L1120:
	.loc 1 275 45 view .LVU3151
	movq	8(%rdi), %rdx
	.loc 1 275 57 view .LVU3152
	movq	8(%rsi), %rax
	.loc 1 275 37 view .LVU3153
	cmpq	%rax, %rdx
	jb	.L1111
	.loc 1 275 64 discriminator 1 view .LVU3154
	je	.L1121
	.loc 1 274 36 view .LVU3155
	movl	$0, %eax
	ret
.L1121:
	.loc 1 276 72 view .LVU3156
	movq	16(%rdi), %rdx
	.loc 1 276 84 view .LVU3157
	movq	16(%rsi), %rax
	.loc 1 276 64 view .LVU3158
	cmpq	%rax, %rdx
	jb	.L1113
	.loc 1 276 91 discriminator 1 view .LVU3159
	je	.L1122
	.loc 1 274 36 view .LVU3160
	movl	$0, %eax
	ret
.L1122:
	.loc 1 277 99 view .LVU3161
	movq	24(%rdi), %rdx
	.loc 1 277 111 view .LVU3162
	movq	24(%rsi), %rax
	.loc 1 277 91 view .LVU3163
	cmpq	%rax, %rdx
	jb	.L1115
	.loc 1 277 118 discriminator 1 view .LVU3164
	je	.L1123
	.loc 1 274 36 view .LVU3165
	movl	$0, %eax
	ret
.L1123:
	.loc 1 278 126 view .LVU3166
	movq	32(%rdi), %rdx
	.loc 1 278 138 view .LVU3167
	movq	32(%rsi), %rax
	.loc 1 278 118 view .LVU3168
	cmpq	%rax, %rdx
	jb	.L1117
	.loc 1 278 145 discriminator 1 view .LVU3169
	je	.L1124
	.loc 1 274 36 view .LVU3170
	movl	$0, %eax
	ret
.L1124:
	.loc 1 279 145 view .LVU3171
	movq	40(%rsi), %rax
	cmpq	%rax, 40(%rdi)
	jb	.L1119
	.loc 1 274 36 view .LVU3172
	movl	$0, %eax
	ret
.L1109:
	.loc 1 274 36 view .LVU3173
	movl	$1, %eax
	ret
.L1111:
	.loc 1 274 36 view .LVU3174
	movl	$1, %eax
	ret
.L1113:
	.loc 1 274 36 view .LVU3175
	movl	$1, %eax
	ret
.L1115:
	.loc 1 274 36 view .LVU3176
	movl	$1, %eax
	ret
.L1117:
	.loc 1 274 36 view .LVU3177
	movl	$1, %eax
	ret
.L1119:
	.loc 1 274 36 view .LVU3178
	movl	$1, %eax
	.loc 1 280 1 view .LVU3179
	ret
	.cfi_endproc
.LFE38:
	.size	biguint_lt, .-biguint_lt
	.globl	biguint_lteq
	.type	biguint_lteq, @function
biguint_lteq:
.LVL81:
.LFB39:
	.loc 1 282 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 283 5 view .LVU3181
	.loc 1 283 17 is_stmt 0 view .LVU3182
	movq	(%rdi), %rdx
	.loc 1 283 29 view .LVU3183
	movq	(%rsi), %rax
	.loc 1 283 36 view .LVU3184
	cmpq	%rax, %rdx
	jb	.L1127
	.loc 1 283 36 discriminator 2 view .LVU3185
	je	.L1139
	.loc 1 283 36 view .LVU3186
	movl	$0, %eax
	ret
.L1139:
	.loc 1 284 45 view .LVU3187
	movq	8(%rdi), %rdx
	.loc 1 284 57 view .LVU3188
	movq	8(%rsi), %rax
	.loc 1 284 37 view .LVU3189
	cmpq	%rax, %rdx
	jb	.L1129
	.loc 1 284 64 discriminator 1 view .LVU3190
	je	.L1140
	.loc 1 283 36 view .LVU3191
	movl	$0, %eax
	ret
.L1140:
	.loc 1 285 72 view .LVU3192
	movq	16(%rdi), %rdx
	.loc 1 285 84 view .LVU3193
	movq	16(%rsi), %rax
	.loc 1 285 64 view .LVU3194
	cmpq	%rax, %rdx
	jb	.L1131
	.loc 1 285 91 discriminator 1 view .LVU3195
	je	.L1141
	.loc 1 283 36 view .LVU3196
	movl	$0, %eax
	ret
.L1141:
	.loc 1 286 99 view .LVU3197
	movq	24(%rdi), %rdx
	.loc 1 286 111 view .LVU3198
	movq	24(%rsi), %rax
	.loc 1 286 91 view .LVU3199
	cmpq	%rax, %rdx
	jb	.L1133
	.loc 1 286 118 discriminator 1 view .LVU3200
	je	.L1142
	.loc 1 283 36 view .LVU3201
	movl	$0, %eax
	ret
.L1142:
	.loc 1 287 126 view .LVU3202
	movq	32(%rdi), %rdx
	.loc 1 287 138 view .LVU3203
	movq	32(%rsi), %rax
	.loc 1 287 118 view .LVU3204
	cmpq	%rax, %rdx
	jb	.L1135
	.loc 1 287 145 discriminator 1 view .LVU3205
	je	.L1143
	.loc 1 283 36 view .LVU3206
	movl	$0, %eax
	ret
.L1143:
	.loc 1 288 153 view .LVU3207
	movq	40(%rdi), %rdx
	.loc 1 288 165 view .LVU3208
	movq	40(%rsi), %rax
	.loc 1 288 145 view .LVU3209
	cmpq	%rax, %rdx
	jb	.L1137
	.loc 1 288 172 discriminator 1 view .LVU3210
	je	.L1138
	.loc 1 283 36 view .LVU3211
	movl	$0, %eax
	ret
.L1127:
	.loc 1 283 36 view .LVU3212
	movl	$1, %eax
	ret
.L1129:
	.loc 1 283 36 view .LVU3213
	movl	$1, %eax
	ret
.L1131:
	.loc 1 283 36 view .LVU3214
	movl	$1, %eax
	ret
.L1133:
	.loc 1 283 36 view .LVU3215
	movl	$1, %eax
	ret
.L1135:
	.loc 1 283 36 view .LVU3216
	movl	$1, %eax
	ret
.L1137:
	.loc 1 283 36 view .LVU3217
	movl	$1, %eax
	ret
.L1138:
	movl	$1, %eax
	.loc 1 290 1 view .LVU3218
	ret
	.cfi_endproc
.LFE39:
	.size	biguint_lteq, .-biguint_lteq
	.globl	biguint_inc
	.type	biguint_inc, @function
biguint_inc:
.LVL82:
.LFB40:
	.loc 1 294 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 294 1 is_stmt 0 view .LVU3220
	movq	%rdi, %rax
	.loc 1 295 5 is_stmt 1 view .LVU3221
	.loc 1 295 13 is_stmt 0 view .LVU3222
	movq	40(%rdi), %rsi
	leaq	1(%rsi), %rdx
	movq	%rdx, 40(%rdi)
	.loc 1 296 5 is_stmt 1 view .LVU3223
	.loc 1 296 17 is_stmt 0 view .LVU3224
	testq	%rdx, %rdx
	sete	%cl
	movzbl	%cl, %ecx
	.loc 1 296 14 view .LVU3225
	addq	32(%rdi), %rcx
	movq	%rcx, 32(%rdi)
	.loc 1 297 5 is_stmt 1 view .LVU3226
	.loc 1 297 27 is_stmt 0 view .LVU3227
	orq	%rcx, %rdx
	sete	%cl
	movzbl	%cl, %ecx
	.loc 1 297 14 view .LVU3228
	addq	24(%rdi), %rcx
	movq	%rcx, 24(%rdi)
	.loc 1 298 5 is_stmt 1 view .LVU3229
	.loc 1 298 39 is_stmt 0 view .LVU3230
	orq	%rcx, %rdx
	sete	%cl
	movzbl	%cl, %ecx
	.loc 1 298 14 view .LVU3231
	addq	16(%rdi), %rcx
	movq	%rcx, 16(%rdi)
	.loc 1 299 5 is_stmt 1 view .LVU3232
	.loc 1 299 51 is_stmt 0 view .LVU3233
	orq	%rcx, %rdx
	sete	%cl
	movzbl	%cl, %ecx
	.loc 1 299 14 view .LVU3234
	addq	8(%rdi), %rcx
	movq	%rcx, 8(%rdi)
	.loc 1 300 5 is_stmt 1 view .LVU3235
	.loc 1 300 63 is_stmt 0 view .LVU3236
	orq	%rcx, %rdx
	sete	%dl
	movzbl	%dl, %edx
	.loc 1 300 14 view .LVU3237
	addq	%rdx, (%rdi)
	.loc 1 302 5 is_stmt 1 view .LVU3238
	.loc 1 303 1 is_stmt 0 view .LVU3239
	ret
	.cfi_endproc
.LFE40:
	.size	biguint_inc, .-biguint_inc
	.globl	biguint_add
	.type	biguint_add, @function
biguint_add:
.LVL83:
.LFB41:
	.loc 1 305 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 306 5 view .LVU3241
	.loc 1 307 5 view .LVU3242
	.loc 1 307 32 is_stmt 0 view .LVU3243
	movq	40(%rdx), %rax
	.loc 1 307 26 view .LVU3244
	addq	40(%rsi), %rax
	.loc 1 307 14 view .LVU3245
	movq	%rax, 40(%rdi)
	.loc 1 309 5 is_stmt 1 view .LVU3246
	.loc 1 309 13 is_stmt 0 view .LVU3247
	cmpq	40(%rsi), %rax
	setb	%r8b
.LVL84:
	.loc 1 310 5 is_stmt 1 view .LVU3248
	.loc 1 310 32 is_stmt 0 view .LVU3249
	movq	32(%rdx), %rax
	.loc 1 310 26 view .LVU3250
	addq	32(%rsi), %rax
	movq	%rax, %rcx
	.loc 1 310 38 view .LVU3251
	movzbl	%r8b, %eax
	addq	%rcx, %rax
	.loc 1 310 14 view .LVU3252
	movq	%rax, 32(%rdi)
	.loc 1 312 5 is_stmt 1 view .LVU3253
	.loc 1 312 32 is_stmt 0 view .LVU3254
	movq	32(%rsi), %r9
	.loc 1 312 15 view .LVU3255
	cmpq	%r9, %rax
	setbe	%cl
	.loc 1 312 39 view .LVU3256
	andl	%r8d, %ecx
	.loc 1 312 51 view .LVU3257
	cmpq	%r9, %rax
	setb	%al
	.loc 1 312 76 view .LVU3258
	notl	%r8d
.LVL85:
	.loc 1 312 76 view .LVU3259
	andl	%eax, %r8d
	.loc 1 312 47 view .LVU3260
	orl	%ecx, %r8d
.LVL86:
	.loc 1 313 5 is_stmt 1 view .LVU3261
	.loc 1 313 32 is_stmt 0 view .LVU3262
	movq	24(%rdx), %rax
	.loc 1 313 26 view .LVU3263
	addq	24(%rsi), %rax
	movq	%rax, %rcx
	.loc 1 313 38 view .LVU3264
	movzbl	%r8b, %eax
	addq	%rcx, %rax
	.loc 1 313 14 view .LVU3265
	movq	%rax, 24(%rdi)
	.loc 1 315 5 is_stmt 1 view .LVU3266
	.loc 1 315 15 is_stmt 0 view .LVU3267
	cmpq	24(%rsi), %rax
	setbe	%cl
	.loc 1 315 51 view .LVU3268
	setb	%al
	.loc 1 315 47 view .LVU3269
	xorl	%eax, %ecx
	andl	%r8d, %ecx
	xorl	%eax, %ecx
.LVL87:
	.loc 1 316 5 is_stmt 1 view .LVU3270
	.loc 1 316 32 is_stmt 0 view .LVU3271
	movq	16(%rdx), %rax
	.loc 1 316 26 view .LVU3272
	addq	16(%rsi), %rax
	movq	%rax, %r8
	.loc 1 316 38 view .LVU3273
	movzbl	%cl, %eax
	addq	%r8, %rax
	.loc 1 316 14 view .LVU3274
	movq	%rax, 16(%rdi)
	.loc 1 318 5 is_stmt 1 view .LVU3275
	.loc 1 318 15 is_stmt 0 view .LVU3276
	cmpq	16(%rsi), %rax
	setbe	%al
	.loc 1 318 51 view .LVU3277
	setb	%r8b
	.loc 1 318 47 view .LVU3278
	xorl	%r8d, %eax
	andl	%ecx, %eax
	xorl	%r8d, %eax
	movl	%eax, %ecx
.LVL88:
	.loc 1 319 5 is_stmt 1 view .LVU3279
	.loc 1 319 32 is_stmt 0 view .LVU3280
	movq	8(%rdx), %rax
.LVL89:
	.loc 1 319 26 view .LVU3281
	addq	8(%rsi), %rax
	movq	%rax, %r8
	.loc 1 319 38 view .LVU3282
	movzbl	%cl, %eax
	addq	%r8, %rax
	.loc 1 319 14 view .LVU3283
	movq	%rax, 8(%rdi)
	.loc 1 321 5 is_stmt 1 view .LVU3284
	.loc 1 321 15 is_stmt 0 view .LVU3285
	cmpq	8(%rsi), %rax
	setbe	%al
	.loc 1 321 51 view .LVU3286
	setb	%r8b
	.loc 1 321 47 view .LVU3287
	xorl	%r8d, %eax
	andl	%ecx, %eax
	xorl	%r8d, %eax
.LVL90:
	.loc 1 322 5 is_stmt 1 view .LVU3288
	.loc 1 322 32 is_stmt 0 view .LVU3289
	movq	(%rdx), %rdx
.LVL91:
	.loc 1 322 26 view .LVU3290
	addq	(%rsi), %rdx
	.loc 1 322 38 view .LVU3291
	movzbl	%al, %eax
	.loc 1 322 38 view .LVU3292
	addq	%rdx, %rax
.LVL92:
	.loc 1 322 14 view .LVU3293
	movq	%rax, (%rdi)
	.loc 1 324 5 is_stmt 1 view .LVU3294
	.loc 1 325 1 is_stmt 0 view .LVU3295
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE41:
	.size	biguint_add, .-biguint_add
	.globl	biguint_dec
	.type	biguint_dec, @function
biguint_dec:
.LVL93:
.LFB42:
	.loc 1 328 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 329 5 view .LVU3297
	.loc 1 329 13 is_stmt 0 view .LVU3298
	movq	40(%rdi), %rax
	subq	$1, %rax
	movq	%rax, 40(%rdi)
	.loc 1 330 5 is_stmt 1 view .LVU3299
	.loc 1 330 17 is_stmt 0 view .LVU3300
	cmpq	$-1, %rax
	sete	%cl
	movzbl	%cl, %ecx
	.loc 1 330 14 view .LVU3301
	movq	32(%rdi), %rdx
	subq	%rcx, %rdx
	movq	%rdx, 32(%rdi)
	.loc 1 331 5 is_stmt 1 view .LVU3302
	.loc 1 331 30 is_stmt 0 view .LVU3303
	andq	%rdx, %rax
	cmpq	$-1, %rax
	sete	%cl
	movzbl	%cl, %ecx
	.loc 1 331 14 view .LVU3304
	movq	24(%rdi), %rdx
	subq	%rcx, %rdx
	movq	%rdx, 24(%rdi)
	.loc 1 332 5 is_stmt 1 view .LVU3305
	.loc 1 332 45 is_stmt 0 view .LVU3306
	andq	%rdx, %rax
	cmpq	$-1, %rax
	sete	%cl
	movzbl	%cl, %ecx
	.loc 1 332 14 view .LVU3307
	movq	16(%rdi), %rdx
	subq	%rcx, %rdx
	movq	%rdx, 16(%rdi)
	.loc 1 333 5 is_stmt 1 view .LVU3308
	.loc 1 333 60 is_stmt 0 view .LVU3309
	andq	%rdx, %rax
	cmpq	$-1, %rax
	sete	%cl
	movzbl	%cl, %ecx
	.loc 1 333 14 view .LVU3310
	movq	8(%rdi), %rdx
	subq	%rcx, %rdx
	movq	%rdx, 8(%rdi)
	.loc 1 334 5 is_stmt 1 view .LVU3311
	.loc 1 334 75 is_stmt 0 view .LVU3312
	andq	%rdx, %rax
	cmpq	$-1, %rax
	sete	%al
	movzbl	%al, %eax
	.loc 1 334 14 view .LVU3313
	subq	%rax, (%rdi)
	.loc 1 336 5 is_stmt 1 view .LVU3314
	.loc 1 337 1 is_stmt 0 view .LVU3315
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE42:
	.size	biguint_dec, .-biguint_dec
	.globl	biguint_sub
	.type	biguint_sub, @function
biguint_sub:
.LVL94:
.LFB43:
	.loc 1 339 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 339 1 is_stmt 0 view .LVU3317
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%rdx, %rsi
.LVL95:
	.loc 1 340 5 is_stmt 1 view .LVU3318
	.loc 1 340 12 is_stmt 0 view .LVU3319
	call	biguint_neg
.LVL96:
	.loc 1 340 12 view .LVU3320
	movq	%rax, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	biguint_add
.LVL97:
	.loc 1 371 1 view .LVU3321
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL98:
	.loc 1 371 1 view .LVU3322
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL99:
	.loc 1 371 1 view .LVU3323
	ret
	.cfi_endproc
.LFE43:
	.size	biguint_sub, .-biguint_sub
	.globl	biguint_mul
	.type	biguint_mul, @function
biguint_mul:
.LVL100:
.LFB44:
	.loc 1 374 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 374 1 is_stmt 0 view .LVU3325
	movq	%rdi, %rax
	movq	%rdx, %rcx
	.loc 1 375 5 is_stmt 1 view .LVU3326
	.loc 1 377 5 view .LVU3327
	.loc 1 377 32 is_stmt 0 view .LVU3328
	movl	(%rdx), %edx
.LVL101:
	.loc 1 377 26 view .LVU3329
	imull	(%rsi), %edx
	.loc 1 377 13 view .LVU3330
	movl	%edx, %edi
.LVL102:
	.loc 1 377 13 view .LVU3331
	movq	%rdi, -48(%rsp)
	.loc 1 378 5 is_stmt 1 view .LVU3332
	.loc 1 378 16 is_stmt 0 view .LVU3333
	movl	%edx, (%rax)
	.loc 1 379 5 is_stmt 1 view .LVU3334
	.loc 1 379 32 is_stmt 0 view .LVU3335
	movl	4(%rcx), %edi
	.loc 1 379 26 view .LVU3336
	imull	(%rsi), %edi
	.loc 1 379 13 view .LVU3337
	movl	%edi, %r8d
	movq	%r8, -40(%rsp)
	.loc 1 380 5 is_stmt 1 view .LVU3338
	.loc 1 380 32 is_stmt 0 view .LVU3339
	movl	(%rcx), %ecx
.LVL103:
	.loc 1 380 26 view .LVU3340
	imull	4(%rsi), %ecx
	.loc 1 380 13 view .LVU3341
	movq	%rcx, -32(%rsp)
	.loc 1 381 5 is_stmt 1 view .LVU3342
	.loc 1 381 56 is_stmt 0 view .LVU3343
	leal	(%rdi,%rdx,2), %edx
	.loc 1 381 16 view .LVU3344
	movl	%edx, 4(%rax)
	.loc 1 383 5 is_stmt 1 view .LVU3345
	.loc 1 384 1 is_stmt 0 view .LVU3346
	ret
	.cfi_endproc
.LFE44:
	.size	biguint_mul, .-biguint_mul
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"0x%016lX%016lX%016lX%016lX%016lX%016lX\n"
	.text
	.globl	biguint_puthex
	.type	biguint_puthex, @function
biguint_puthex:
.LVL104:
.LFB45:
	.loc 1 391 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 391 1 is_stmt 0 view .LVU3348
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	.loc 1 392 5 is_stmt 1 view .LVU3349
	movq	16(%rdi), %rcx
	movq	8(%rdi), %rdx
	pushq	40(%rdi)
	.cfi_def_cfa_offset 32
	movq	32(%rdi), %r9
	movq	24(%rdi), %r8
	movq	(%rdi), %rsi
	leaq	.LC0(%rip), %rdi
.LVL105:
	.loc 1 392 5 is_stmt 0 view .LVU3350
	movl	$0, %eax
	call	printf@PLT
.LVL106:
	.loc 1 393 1 view .LVU3351
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
	.globl	biguint_putsephex64
	.type	biguint_putsephex64, @function
biguint_putsephex64:
.LVL107:
.LFB46:
	.loc 1 395 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 395 1 is_stmt 0 view .LVU3353
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	.loc 1 396 5 is_stmt 1 view .LVU3354
	movq	16(%rdi), %rcx
	movq	8(%rdi), %rdx
	pushq	40(%rdi)
	.cfi_def_cfa_offset 32
	movq	32(%rdi), %r9
	movq	24(%rdi), %r8
	movq	(%rdi), %rsi
	leaq	.LC1(%rip), %rdi
.LVL108:
	.loc 1 396 5 is_stmt 0 view .LVU3355
	movl	$0, %eax
	call	printf@PLT
.LVL109:
	.loc 1 397 1 view .LVU3356
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	biguint_putsephex64, .-biguint_putsephex64
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 5 "/usr/local/include/stdmoh.h"
	.file 6 "src/bignum.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa5d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1027
	.byte	0xc
	.long	.LASF1028
	.long	.LASF1029
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF958
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF959
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF960
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF961
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF962
	.uleb128 0x3
	.long	.LASF964
	.byte	0x2
	.byte	0x26
	.byte	0x17
	.long	0x3f
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF963
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF965
	.byte	0x2
	.byte	0x2a
	.byte	0x16
	.long	0x38
	.uleb128 0x3
	.long	.LASF966
	.byte	0x2
	.byte	0x2c
	.byte	0x19
	.long	0x86
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF967
	.uleb128 0x3
	.long	.LASF968
	.byte	0x2
	.byte	0x2d
	.byte	0x1b
	.long	0x31
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF969
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF970
	.uleb128 0x3
	.long	.LASF971
	.byte	0x3
	.byte	0x1b
	.byte	0x13
	.long	0x7a
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF972
	.uleb128 0x3
	.long	.LASF973
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.long	0x54
	.uleb128 0x3
	.long	.LASF974
	.byte	0x4
	.byte	0x1a
	.byte	0x14
	.long	0x6e
	.uleb128 0x3
	.long	.LASF975
	.byte	0x4
	.byte	0x1b
	.byte	0x14
	.long	0x8d
	.uleb128 0x3
	.long	.LASF976
	.byte	0x5
	.byte	0x1e
	.byte	0x11
	.long	0xba
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF977
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF978
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF979
	.uleb128 0x5
	.byte	0x30
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.long	0x157
	.uleb128 0x6
	.string	"ui0"
	.byte	0x6
	.byte	0x16
	.byte	0x12
	.long	0xd2
	.byte	0
	.uleb128 0x6
	.string	"ui1"
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.long	0xd2
	.byte	0x8
	.uleb128 0x6
	.string	"ui2"
	.byte	0x6
	.byte	0x16
	.byte	0x1c
	.long	0xd2
	.byte	0x10
	.uleb128 0x6
	.string	"ui3"
	.byte	0x6
	.byte	0x16
	.byte	0x21
	.long	0xd2
	.byte	0x18
	.uleb128 0x6
	.string	"ui4"
	.byte	0x6
	.byte	0x16
	.byte	0x26
	.long	0xd2
	.byte	0x20
	.uleb128 0x6
	.string	"ui5"
	.byte	0x6
	.byte	0x16
	.byte	0x2b
	.long	0xd2
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.byte	0x30
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.long	0x1fd
	.uleb128 0x7
	.long	.LASF980
	.byte	0x6
	.byte	0x1b
	.byte	0x12
	.long	0xc6
	.byte	0
	.uleb128 0x7
	.long	.LASF981
	.byte	0x6
	.byte	0x1b
	.byte	0x18
	.long	0xc6
	.byte	0x4
	.uleb128 0x7
	.long	.LASF982
	.byte	0x6
	.byte	0x1b
	.byte	0x1e
	.long	0xc6
	.byte	0x8
	.uleb128 0x7
	.long	.LASF983
	.byte	0x6
	.byte	0x1b
	.byte	0x24
	.long	0xc6
	.byte	0xc
	.uleb128 0x7
	.long	.LASF984
	.byte	0x6
	.byte	0x1b
	.byte	0x2a
	.long	0xc6
	.byte	0x10
	.uleb128 0x7
	.long	.LASF985
	.byte	0x6
	.byte	0x1b
	.byte	0x30
	.long	0xc6
	.byte	0x14
	.uleb128 0x7
	.long	.LASF986
	.byte	0x6
	.byte	0x1c
	.byte	0x12
	.long	0xc6
	.byte	0x18
	.uleb128 0x7
	.long	.LASF987
	.byte	0x6
	.byte	0x1c
	.byte	0x18
	.long	0xc6
	.byte	0x1c
	.uleb128 0x7
	.long	.LASF988
	.byte	0x6
	.byte	0x1c
	.byte	0x1e
	.long	0xc6
	.byte	0x20
	.uleb128 0x7
	.long	.LASF989
	.byte	0x6
	.byte	0x1c
	.byte	0x24
	.long	0xc6
	.byte	0x24
	.uleb128 0x7
	.long	.LASF990
	.byte	0x6
	.byte	0x1c
	.byte	0x2a
	.long	0xc6
	.byte	0x28
	.uleb128 0x7
	.long	.LASF991
	.byte	0x6
	.byte	0x1c
	.byte	0x30
	.long	0xc6
	.byte	0x2c
	.byte	0
	.uleb128 0x8
	.long	.LASF1030
	.byte	0x30
	.byte	0x6
	.byte	0x12
	.byte	0xf
	.long	0x22d
	.uleb128 0x9
	.long	0xff
	.uleb128 0xa
	.long	.LASF992
	.byte	0x6
	.byte	0x18
	.byte	0xe
	.long	0x22d
	.uleb128 0x9
	.long	0x157
	.uleb128 0xa
	.long	.LASF993
	.byte	0x6
	.byte	0x1e
	.byte	0xe
	.long	0x23d
	.byte	0
	.uleb128 0xb
	.long	0xd2
	.long	0x23d
	.uleb128 0xc
	.long	0x31
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0xc6
	.long	0x24d
	.uleb128 0xc
	.long	0x31
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.long	.LASF994
	.byte	0x6
	.byte	0x1f
	.byte	0x3
	.long	0x1fd
	.uleb128 0xd
	.long	.LASF995
	.byte	0x1
	.value	0x18a
	.byte	0x6
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a9
	.uleb128 0xe
	.string	"big"
	.byte	0x1
	.value	0x18a
	.byte	0x25
	.long	0x2a9
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0xf
	.quad	.LVL109
	.long	0xa53
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x24d
	.uleb128 0xd
	.long	.LASF996
	.byte	0x1
	.value	0x186
	.byte	0x6
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ff
	.uleb128 0xe
	.string	"big"
	.byte	0x1
	.value	0x186
	.byte	0x20
	.long	0x2a9
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0xf
	.quad	.LVL106
	.long	0xa53
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF999
	.byte	0x1
	.value	0x175
	.byte	0xc
	.long	0x2a9
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x36c
	.uleb128 0x13
	.long	.LASF997
	.byte	0x1
	.value	0x175
	.byte	0x23
	.long	0x2a9
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x14
	.long	.LASF1001
	.byte	0x1
	.value	0x175
	.byte	0x34
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.long	.LASF998
	.byte	0x1
	.value	0x175
	.byte	0x45
	.long	0x2a9
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x15
	.string	"tmp"
	.byte	0x1
	.value	0x177
	.byte	0xf
	.long	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x12
	.long	.LASF1000
	.byte	0x1
	.value	0x152
	.byte	0xc
	.long	0x2a9
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x415
	.uleb128 0xe
	.string	"dif"
	.byte	0x1
	.value	0x152
	.byte	0x23
	.long	0x2a9
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x13
	.long	.LASF1001
	.byte	0x1
	.value	0x152
	.byte	0x33
	.long	0x2a9
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x13
	.long	.LASF998
	.byte	0x1
	.value	0x152
	.byte	0x44
	.long	0x2a9
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x16
	.long	.LASF1031
	.byte	0x1
	.value	0x156
	.byte	0xc
	.long	0xde
	.uleb128 0x17
	.quad	.LVL96
	.long	0x951
	.long	0x3fa
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0xf
	.quad	.LVL97
	.long	0x448
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF1002
	.byte	0x1
	.value	0x147
	.byte	0xc
	.long	0x2a9
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x448
	.uleb128 0x18
	.string	"big"
	.byte	0x1
	.value	0x147
	.byte	0x23
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x12
	.long	.LASF1003
	.byte	0x1
	.value	0x130
	.byte	0xc
	.long	0x2a9
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b4
	.uleb128 0x18
	.string	"sum"
	.byte	0x1
	.value	0x130
	.byte	0x23
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF1001
	.byte	0x1
	.value	0x130
	.byte	0x33
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.long	.LASF998
	.byte	0x1
	.value	0x130
	.byte	0x44
	.long	0x2a9
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x19
	.long	.LASF1031
	.byte	0x1
	.value	0x132
	.byte	0xc
	.long	0xde
	.long	.LLST15
	.long	.LVUS15
	.byte	0
	.uleb128 0x12
	.long	.LASF1004
	.byte	0x1
	.value	0x125
	.byte	0xc
	.long	0x2a9
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e7
	.uleb128 0x18
	.string	"big"
	.byte	0x1
	.value	0x125
	.byte	0x23
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x12
	.long	.LASF1005
	.byte	0x1
	.value	0x119
	.byte	0xf
	.long	0xde
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x529
	.uleb128 0x14
	.long	.LASF1001
	.byte	0x1
	.value	0x119
	.byte	0x27
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF998
	.byte	0x1
	.value	0x119
	.byte	0x38
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x12
	.long	.LASF1006
	.byte	0x1
	.value	0x110
	.byte	0xf
	.long	0xde
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x56b
	.uleb128 0x14
	.long	.LASF1001
	.byte	0x1
	.value	0x110
	.byte	0x25
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF998
	.byte	0x1
	.value	0x110
	.byte	0x36
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x12
	.long	.LASF1007
	.byte	0x1
	.value	0x105
	.byte	0xf
	.long	0xde
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ad
	.uleb128 0x14
	.long	.LASF1001
	.byte	0x1
	.value	0x105
	.byte	0x27
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF998
	.byte	0x1
	.value	0x105
	.byte	0x38
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1a
	.long	.LASF1008
	.byte	0x1
	.byte	0xfc
	.byte	0xf
	.long	0xde
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ec
	.uleb128 0x1b
	.long	.LASF1001
	.byte	0x1
	.byte	0xfc
	.byte	0x25
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.long	.LASF998
	.byte	0x1
	.byte	0xfc
	.byte	0x36
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1a
	.long	.LASF1009
	.byte	0x1
	.byte	0xf6
	.byte	0xf
	.long	0xde
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x62b
	.uleb128 0x1b
	.long	.LASF1001
	.byte	0x1
	.byte	0xf6
	.byte	0x26
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.long	.LASF998
	.byte	0x1
	.byte	0xf6
	.byte	0x37
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1a
	.long	.LASF1010
	.byte	0x1
	.byte	0xf1
	.byte	0xf
	.long	0xde
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x66a
	.uleb128 0x1b
	.long	.LASF1001
	.byte	0x1
	.byte	0xf1
	.byte	0x25
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.long	.LASF998
	.byte	0x1
	.byte	0xf1
	.byte	0x36
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1a
	.long	.LASF1011
	.byte	0x1
	.byte	0xe4
	.byte	0xc
	.long	0x2a9
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b5
	.uleb128 0x1c
	.string	"rev"
	.byte	0x1
	.byte	0xe4
	.byte	0x23
	.long	0x2a9
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1c
	.string	"big"
	.byte	0x1
	.byte	0xe4
	.byte	0x33
	.long	0x2a9
	.long	.LLST13
	.long	.LVUS13
	.byte	0
	.uleb128 0x1a
	.long	.LASF1012
	.byte	0x1
	.byte	0xbc
	.byte	0xc
	.long	0x2a9
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x72e
	.uleb128 0x1b
	.long	.LASF1013
	.byte	0x1
	.byte	0xbc
	.byte	0x24
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF1014
	.byte	0x1
	.byte	0xbc
	.byte	0x32
	.long	0xa7
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x1c
	.string	"big"
	.byte	0x1
	.byte	0xbc
	.byte	0x45
	.long	0x2a9
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1e
	.string	"rsh"
	.byte	0x1
	.byte	0xc0
	.byte	0xf
	.long	0x24d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.string	"lsh"
	.byte	0x1
	.byte	0xc0
	.byte	0x14
	.long	0x24d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x1a
	.long	.LASF1015
	.byte	0x1
	.byte	0x9d
	.byte	0xc
	.long	0x2a9
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a7
	.uleb128 0x1b
	.long	.LASF1016
	.byte	0x1
	.byte	0x9d
	.byte	0x24
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF1014
	.byte	0x1
	.byte	0x9d
	.byte	0x32
	.long	0xa7
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x1c
	.string	"big"
	.byte	0x1
	.byte	0x9d
	.byte	0x45
	.long	0x2a9
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x1e
	.string	"rsh"
	.byte	0x1
	.byte	0xa1
	.byte	0xf
	.long	0x24d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.string	"lsh"
	.byte	0x1
	.byte	0xa1
	.byte	0x14
	.long	0x24d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x1a
	.long	.LASF1017
	.byte	0x1
	.byte	0x8e
	.byte	0xc
	.long	0x2a9
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x800
	.uleb128 0x1f
	.string	"lsh"
	.byte	0x1
	.byte	0x8e
	.byte	0x23
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF1014
	.byte	0x1
	.byte	0x8e
	.byte	0x30
	.long	0xa7
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1c
	.string	"big"
	.byte	0x1
	.byte	0x8e
	.byte	0x43
	.long	0x2a9
	.long	.LLST7
	.long	.LVUS7
	.byte	0
	.uleb128 0x1a
	.long	.LASF1018
	.byte	0x1
	.byte	0x7f
	.byte	0xc
	.long	0x2a9
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x859
	.uleb128 0x1f
	.string	"rsh"
	.byte	0x1
	.byte	0x7f
	.byte	0x23
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.long	.LASF1014
	.byte	0x1
	.byte	0x7f
	.byte	0x30
	.long	0xa7
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1c
	.string	"big"
	.byte	0x1
	.byte	0x7f
	.byte	0x43
	.long	0x2a9
	.long	.LLST5
	.long	.LVUS5
	.byte	0
	.uleb128 0x1a
	.long	.LASF1019
	.byte	0x1
	.byte	0x4d
	.byte	0xc
	.long	0x2a9
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ac
	.uleb128 0x1f
	.string	"xor"
	.byte	0x1
	.byte	0x4d
	.byte	0x23
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.long	.LASF1001
	.byte	0x1
	.byte	0x4d
	.byte	0x33
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.long	.LASF998
	.byte	0x1
	.byte	0x4d
	.byte	0x44
	.long	0x2a9
	.long	.LLST3
	.long	.LVUS3
	.byte	0
	.uleb128 0x1a
	.long	.LASF1020
	.byte	0x1
	.byte	0x42
	.byte	0xc
	.long	0x2a9
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ff
	.uleb128 0x1f
	.string	"and"
	.byte	0x1
	.byte	0x42
	.byte	0x23
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.long	.LASF1001
	.byte	0x1
	.byte	0x42
	.byte	0x33
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.long	.LASF998
	.byte	0x1
	.byte	0x42
	.byte	0x44
	.long	0x2a9
	.long	.LLST2
	.long	.LVUS2
	.byte	0
	.uleb128 0x1a
	.long	.LASF1021
	.byte	0x1
	.byte	0x37
	.byte	0xc
	.long	0x2a9
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x951
	.uleb128 0x1f
	.string	"or"
	.byte	0x1
	.byte	0x37
	.byte	0x22
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.long	.LASF1001
	.byte	0x1
	.byte	0x37
	.byte	0x31
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.long	.LASF998
	.byte	0x1
	.byte	0x37
	.byte	0x42
	.long	0x2a9
	.long	.LLST1
	.long	.LVUS1
	.byte	0
	.uleb128 0x1a
	.long	.LASF1022
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.long	0x2a9
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x996
	.uleb128 0x1f
	.string	"neg"
	.byte	0x1
	.byte	0x23
	.byte	0x23
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"big"
	.byte	0x1
	.byte	0x23
	.byte	0x33
	.long	0x2a9
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.uleb128 0x1a
	.long	.LASF1023
	.byte	0x1
	.byte	0x1c
	.byte	0xc
	.long	0x2a9
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d5
	.uleb128 0x1f
	.string	"bar"
	.byte	0x1
	.byte	0x1c
	.byte	0x23
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"big"
	.byte	0x1
	.byte	0x1c
	.byte	0x33
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1a
	.long	.LASF1024
	.byte	0x1
	.byte	0x11
	.byte	0xc
	.long	0x2a9
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xa14
	.uleb128 0x1f
	.string	"not"
	.byte	0x1
	.byte	0x11
	.byte	0x23
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"big"
	.byte	0x1
	.byte	0x11
	.byte	0x33
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1a
	.long	.LASF1025
	.byte	0x1
	.byte	0x4
	.byte	0xc
	.long	0x2a9
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xa53
	.uleb128 0x1b
	.long	.LASF1026
	.byte	0x1
	.byte	0x4
	.byte	0x23
	.long	0x2a9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.string	"src"
	.byte	0x1
	.byte	0x4
	.byte	0x34
	.long	0x2a9
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x20
	.long	.LASF1032
	.long	.LASF1032
	.byte	0x7
	.value	0x14c
	.byte	0xc
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS22:
	.uleb128 0
	.uleb128 .LVU3355
	.uleb128 .LVU3355
	.uleb128 0
.LLST22:
	.quad	.LVL107-.Ltext0
	.quad	.LVL108-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL108-.Ltext0
	.quad	.LFE46-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU3350
	.uleb128 .LVU3350
	.uleb128 0
.LLST21:
	.quad	.LVL104-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL105-.Ltext0
	.quad	.LFE45-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU3331
	.uleb128 .LVU3331
	.uleb128 0
.LLST19:
	.quad	.LVL100-.Ltext0
	.quad	.LVL102-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL102-.Ltext0
	.quad	.LFE44-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU3329
	.uleb128 .LVU3329
	.uleb128 .LVU3340
	.uleb128 .LVU3340
	.uleb128 0
.LLST20:
	.quad	.LVL100-.Ltext0
	.quad	.LVL101-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL101-.Ltext0
	.quad	.LVL103-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL103-.Ltext0
	.quad	.LFE44-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU3320
	.uleb128 .LVU3320
	.uleb128 .LVU3322
	.uleb128 .LVU3322
	.uleb128 0
.LLST16:
	.quad	.LVL94-.Ltext0
	.quad	.LVL96-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL96-1-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL98-.Ltext0
	.quad	.LFE43-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU3318
	.uleb128 .LVU3318
	.uleb128 .LVU3323
	.uleb128 .LVU3323
	.uleb128 0
.LLST17:
	.quad	.LVL94-.Ltext0
	.quad	.LVL95-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL95-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL99-.Ltext0
	.quad	.LFE43-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU3320
	.uleb128 .LVU3320
	.uleb128 0
.LLST18:
	.quad	.LVL94-.Ltext0
	.quad	.LVL96-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL96-1-.Ltext0
	.quad	.LFE43-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU3290
	.uleb128 .LVU3290
	.uleb128 0
.LLST14:
	.quad	.LVL83-.Ltext0
	.quad	.LVL91-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL91-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU3248
	.uleb128 .LVU3259
	.uleb128 .LVU3261
	.uleb128 .LVU3270
	.uleb128 .LVU3270
	.uleb128 .LVU3279
	.uleb128 .LVU3279
	.uleb128 .LVU3281
	.uleb128 .LVU3281
	.uleb128 .LVU3288
	.uleb128 .LVU3288
	.uleb128 .LVU3293
.LLST15:
	.quad	.LVL84-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL86-.Ltext0
	.quad	.LVL87-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL87-.Ltext0
	.quad	.LVL88-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL88-.Ltext0
	.quad	.LVL89-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL89-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL90-.Ltext0
	.quad	.LVL92-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU2865
	.uleb128 .LVU2865
	.uleb128 0
.LLST12:
	.quad	.LVL73-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL74-.Ltext0
	.quad	.LFE33-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU3011
	.uleb128 .LVU3011
	.uleb128 0
.LLST13:
	.quad	.LVL73-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL75-.Ltext0
	.quad	.LFE33-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU1951
	.uleb128 .LVU1951
	.uleb128 .LVU1955
	.uleb128 .LVU1955
	.uleb128 .LVU1958
	.uleb128 .LVU1958
	.uleb128 .LVU1962
	.uleb128 .LVU1962
	.uleb128 .LVU1963
	.uleb128 .LVU1963
	.uleb128 .LVU1965
	.uleb128 .LVU1965
	.uleb128 .LVU2127
	.uleb128 .LVU2127
	.uleb128 .LVU2134
	.uleb128 .LVU2134
	.uleb128 .LVU2308
	.uleb128 .LVU2308
	.uleb128 .LVU2313
	.uleb128 .LVU2313
	.uleb128 .LVU2355
	.uleb128 .LVU2355
	.uleb128 .LVU2356
	.uleb128 .LVU2356
	.uleb128 .LVU2398
	.uleb128 .LVU2398
	.uleb128 .LVU2399
	.uleb128 .LVU2399
	.uleb128 .LVU2618
	.uleb128 .LVU2618
	.uleb128 .LVU2834
	.uleb128 .LVU2835
	.uleb128 .LVU2836
.LLST10:
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL54-.Ltext0
	.quad	.LVL56-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL56-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL58-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL60-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL61-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL62-.Ltext0
	.quad	.LVL63-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL63-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x4
	.byte	0x7b
	.sleb128 64
	.byte	0x9f
	.quad	.LVL64-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL65-.Ltext0
	.quad	.LVL66-.Ltext0
	.value	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL66-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL67-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x4
	.byte	0x7b
	.sleb128 64
	.byte	0x9f
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL69-.Ltext0
	.quad	.LVL70-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL71-.Ltext0
	.quad	.LVL72-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU1953
	.uleb128 .LVU1953
	.uleb128 0
.LLST11:
	.quad	.LVL53-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL55-.Ltext0
	.quad	.LFE32-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU1039
	.uleb128 .LVU1039
	.uleb128 .LVU1043
	.uleb128 .LVU1043
	.uleb128 .LVU1046
	.uleb128 .LVU1046
	.uleb128 .LVU1050
	.uleb128 .LVU1050
	.uleb128 .LVU1051
	.uleb128 .LVU1051
	.uleb128 .LVU1053
	.uleb128 .LVU1053
	.uleb128 .LVU1215
	.uleb128 .LVU1215
	.uleb128 .LVU1222
	.uleb128 .LVU1222
	.uleb128 .LVU1396
	.uleb128 .LVU1396
	.uleb128 .LVU1401
	.uleb128 .LVU1401
	.uleb128 .LVU1443
	.uleb128 .LVU1443
	.uleb128 .LVU1444
	.uleb128 .LVU1444
	.uleb128 .LVU1486
	.uleb128 .LVU1486
	.uleb128 .LVU1487
	.uleb128 .LVU1487
	.uleb128 .LVU1706
	.uleb128 .LVU1706
	.uleb128 .LVU1922
	.uleb128 .LVU1923
	.uleb128 .LVU1924
.LLST8:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL34-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL39-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x4
	.byte	0x7b
	.sleb128 64
	.byte	0x9f
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL47-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x4
	.byte	0x7b
	.sleb128 64
	.byte	0x9f
	.quad	.LVL48-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL49-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU1041
	.uleb128 .LVU1041
	.uleb128 0
.LLST9:
	.quad	.LVL33-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL35-.Ltext0
	.quad	.LFE31-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU606
	.uleb128 .LVU606
	.uleb128 .LVU769
	.uleb128 .LVU769
	.uleb128 .LVU774
	.uleb128 .LVU774
	.uleb128 .LVU816
	.uleb128 .LVU816
	.uleb128 .LVU817
	.uleb128 .LVU817
	.uleb128 .LVU1034
.LLST6:
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL23-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU767
	.uleb128 .LVU767
	.uleb128 .LVU774
	.uleb128 .LVU774
	.uleb128 .LVU1028
	.uleb128 .LVU1028
	.uleb128 .LVU1030
	.uleb128 .LVU1030
	.uleb128 .LVU1031
	.uleb128 .LVU1031
	.uleb128 0
.LLST7:
	.quad	.LVL22-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL26-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL31-.Ltext0
	.quad	.LFE30-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 .LVU329
	.uleb128 .LVU329
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU376
	.uleb128 .LVU376
	.uleb128 .LVU377
	.uleb128 .LVU377
	.uleb128 .LVU594
.LLST4:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL12-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU327
	.uleb128 .LVU327
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU588
	.uleb128 .LVU588
	.uleb128 .LVU590
	.uleb128 .LVU590
	.uleb128 .LVU591
	.uleb128 .LVU591
	.uleb128 0
.LLST5:
	.quad	.LVL11-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL20-.Ltext0
	.quad	.LFE29-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 0
.LLST3:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL10-.Ltext0
	.quad	.LFE28-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 0
.LLST2:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL8-.Ltext0
	.quad	.LFE27-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 0
.LLST1:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL6-.Ltext0
	.quad	.LFE26-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 0
.LLST0:
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL4-.Ltext0
	.quad	.LFE25-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x1
	.long	.LASF0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1
	.byte	0x5
	.uleb128 0x3
	.long	.LASF2
	.byte	0x5
	.uleb128 0x4
	.long	.LASF3
	.byte	0x5
	.uleb128 0x5
	.long	.LASF4
	.byte	0x5
	.uleb128 0x6
	.long	.LASF5
	.byte	0x5
	.uleb128 0x7
	.long	.LASF6
	.byte	0x5
	.uleb128 0x8
	.long	.LASF7
	.byte	0x5
	.uleb128 0x9
	.long	.LASF8
	.byte	0x5
	.uleb128 0xa
	.long	.LASF9
	.byte	0x5
	.uleb128 0xb
	.long	.LASF10
	.byte	0x5
	.uleb128 0xc
	.long	.LASF11
	.byte	0x5
	.uleb128 0xd
	.long	.LASF12
	.byte	0x5
	.uleb128 0xe
	.long	.LASF13
	.byte	0x5
	.uleb128 0xf
	.long	.LASF14
	.byte	0x5
	.uleb128 0x10
	.long	.LASF15
	.byte	0x5
	.uleb128 0x11
	.long	.LASF16
	.byte	0x5
	.uleb128 0x12
	.long	.LASF17
	.byte	0x5
	.uleb128 0x13
	.long	.LASF18
	.byte	0x5
	.uleb128 0x14
	.long	.LASF19
	.byte	0x5
	.uleb128 0x15
	.long	.LASF20
	.byte	0x5
	.uleb128 0x16
	.long	.LASF21
	.byte	0x5
	.uleb128 0x17
	.long	.LASF22
	.byte	0x5
	.uleb128 0x18
	.long	.LASF23
	.byte	0x5
	.uleb128 0x19
	.long	.LASF24
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF25
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF28
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF30
	.byte	0x5
	.uleb128 0x20
	.long	.LASF31
	.byte	0x5
	.uleb128 0x21
	.long	.LASF32
	.byte	0x5
	.uleb128 0x22
	.long	.LASF33
	.byte	0x5
	.uleb128 0x23
	.long	.LASF34
	.byte	0x5
	.uleb128 0x24
	.long	.LASF35
	.byte	0x5
	.uleb128 0x25
	.long	.LASF36
	.byte	0x5
	.uleb128 0x26
	.long	.LASF37
	.byte	0x5
	.uleb128 0x27
	.long	.LASF38
	.byte	0x5
	.uleb128 0x28
	.long	.LASF39
	.byte	0x5
	.uleb128 0x29
	.long	.LASF40
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF41
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF42
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF43
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF44
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF45
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF46
	.byte	0x5
	.uleb128 0x30
	.long	.LASF47
	.byte	0x5
	.uleb128 0x31
	.long	.LASF48
	.byte	0x5
	.uleb128 0x32
	.long	.LASF49
	.byte	0x5
	.uleb128 0x33
	.long	.LASF50
	.byte	0x5
	.uleb128 0x34
	.long	.LASF51
	.byte	0x5
	.uleb128 0x35
	.long	.LASF52
	.byte	0x5
	.uleb128 0x36
	.long	.LASF53
	.byte	0x5
	.uleb128 0x37
	.long	.LASF54
	.byte	0x5
	.uleb128 0x38
	.long	.LASF55
	.byte	0x5
	.uleb128 0x39
	.long	.LASF56
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF57
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF58
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF59
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF60
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF61
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF62
	.byte	0x5
	.uleb128 0x40
	.long	.LASF63
	.byte	0x5
	.uleb128 0x41
	.long	.LASF64
	.byte	0x5
	.uleb128 0x42
	.long	.LASF65
	.byte	0x5
	.uleb128 0x43
	.long	.LASF66
	.byte	0x5
	.uleb128 0x44
	.long	.LASF67
	.byte	0x5
	.uleb128 0x45
	.long	.LASF68
	.byte	0x5
	.uleb128 0x46
	.long	.LASF69
	.byte	0x5
	.uleb128 0x47
	.long	.LASF70
	.byte	0x5
	.uleb128 0x48
	.long	.LASF71
	.byte	0x5
	.uleb128 0x49
	.long	.LASF72
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF73
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF74
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF75
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF76
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF77
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF78
	.byte	0x5
	.uleb128 0x50
	.long	.LASF79
	.byte	0x5
	.uleb128 0x51
	.long	.LASF80
	.byte	0x5
	.uleb128 0x52
	.long	.LASF81
	.byte	0x5
	.uleb128 0x53
	.long	.LASF82
	.byte	0x5
	.uleb128 0x54
	.long	.LASF83
	.byte	0x5
	.uleb128 0x55
	.long	.LASF84
	.byte	0x5
	.uleb128 0x56
	.long	.LASF85
	.byte	0x5
	.uleb128 0x57
	.long	.LASF86
	.byte	0x5
	.uleb128 0x58
	.long	.LASF87
	.byte	0x5
	.uleb128 0x59
	.long	.LASF88
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF89
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF90
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF91
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF92
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF93
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF94
	.byte	0x5
	.uleb128 0x60
	.long	.LASF95
	.byte	0x5
	.uleb128 0x61
	.long	.LASF96
	.byte	0x5
	.uleb128 0x62
	.long	.LASF97
	.byte	0x5
	.uleb128 0x63
	.long	.LASF98
	.byte	0x5
	.uleb128 0x64
	.long	.LASF99
	.byte	0x5
	.uleb128 0x65
	.long	.LASF100
	.byte	0x5
	.uleb128 0x66
	.long	.LASF101
	.byte	0x5
	.uleb128 0x67
	.long	.LASF102
	.byte	0x5
	.uleb128 0x68
	.long	.LASF103
	.byte	0x5
	.uleb128 0x69
	.long	.LASF104
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF105
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF106
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF107
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF108
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF109
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF110
	.byte	0x5
	.uleb128 0x70
	.long	.LASF111
	.byte	0x5
	.uleb128 0x71
	.long	.LASF112
	.byte	0x5
	.uleb128 0x72
	.long	.LASF113
	.byte	0x5
	.uleb128 0x73
	.long	.LASF114
	.byte	0x5
	.uleb128 0x74
	.long	.LASF115
	.byte	0x5
	.uleb128 0x75
	.long	.LASF116
	.byte	0x5
	.uleb128 0x76
	.long	.LASF117
	.byte	0x5
	.uleb128 0x77
	.long	.LASF118
	.byte	0x5
	.uleb128 0x78
	.long	.LASF119
	.byte	0x5
	.uleb128 0x79
	.long	.LASF120
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF121
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF122
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF123
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF124
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF125
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF126
	.byte	0x5
	.uleb128 0x80
	.long	.LASF127
	.byte	0x5
	.uleb128 0x81
	.long	.LASF128
	.byte	0x5
	.uleb128 0x82
	.long	.LASF129
	.byte	0x5
	.uleb128 0x83
	.long	.LASF130
	.byte	0x5
	.uleb128 0x84
	.long	.LASF131
	.byte	0x5
	.uleb128 0x85
	.long	.LASF132
	.byte	0x5
	.uleb128 0x86
	.long	.LASF133
	.byte	0x5
	.uleb128 0x87
	.long	.LASF134
	.byte	0x5
	.uleb128 0x88
	.long	.LASF135
	.byte	0x5
	.uleb128 0x89
	.long	.LASF136
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF137
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF138
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF139
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF140
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF141
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF142
	.byte	0x5
	.uleb128 0x90
	.long	.LASF143
	.byte	0x5
	.uleb128 0x91
	.long	.LASF144
	.byte	0x5
	.uleb128 0x92
	.long	.LASF145
	.byte	0x5
	.uleb128 0x93
	.long	.LASF146
	.byte	0x5
	.uleb128 0x94
	.long	.LASF147
	.byte	0x5
	.uleb128 0x95
	.long	.LASF148
	.byte	0x5
	.uleb128 0x96
	.long	.LASF149
	.byte	0x5
	.uleb128 0x97
	.long	.LASF150
	.byte	0x5
	.uleb128 0x98
	.long	.LASF151
	.byte	0x5
	.uleb128 0x99
	.long	.LASF152
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF153
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF154
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF155
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF156
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF157
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF158
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF159
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF160
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF161
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF162
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF163
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF164
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF165
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF166
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF167
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF168
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF169
	.byte	0x5
	.uleb128 0xab
	.long	.LASF170
	.byte	0x5
	.uleb128 0xac
	.long	.LASF171
	.byte	0x5
	.uleb128 0xad
	.long	.LASF172
	.byte	0x5
	.uleb128 0xae
	.long	.LASF173
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF174
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF175
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF176
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF177
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF178
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF179
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF180
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF181
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF182
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF183
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF184
	.byte	0x5
	.uleb128 0xba
	.long	.LASF185
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF186
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF187
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF188
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF189
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF190
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF191
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF192
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF193
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF194
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF195
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF196
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF197
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF198
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF199
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF200
	.byte	0x5
	.uleb128 0xca
	.long	.LASF201
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF202
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF203
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF204
	.byte	0x5
	.uleb128 0xce
	.long	.LASF205
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF206
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF207
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF208
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF209
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF210
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF211
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF212
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF213
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF214
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF215
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF216
	.byte	0x5
	.uleb128 0xda
	.long	.LASF217
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF218
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF219
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF220
	.byte	0x5
	.uleb128 0xde
	.long	.LASF221
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF222
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF223
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF224
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF225
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF226
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF227
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF228
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF229
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF230
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF231
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF232
	.byte	0x5
	.uleb128 0xea
	.long	.LASF233
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF234
	.byte	0x5
	.uleb128 0xec
	.long	.LASF235
	.byte	0x5
	.uleb128 0xed
	.long	.LASF236
	.byte	0x5
	.uleb128 0xee
	.long	.LASF237
	.byte	0x5
	.uleb128 0xef
	.long	.LASF238
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF239
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF240
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF241
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF242
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF243
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF244
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF245
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF246
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF247
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF248
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF249
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF250
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF251
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF252
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF253
	.byte	0x5
	.uleb128 0xff
	.long	.LASF254
	.byte	0x5
	.uleb128 0x100
	.long	.LASF255
	.byte	0x5
	.uleb128 0x101
	.long	.LASF256
	.byte	0x5
	.uleb128 0x102
	.long	.LASF257
	.byte	0x5
	.uleb128 0x103
	.long	.LASF258
	.byte	0x5
	.uleb128 0x104
	.long	.LASF259
	.byte	0x5
	.uleb128 0x105
	.long	.LASF260
	.byte	0x5
	.uleb128 0x106
	.long	.LASF261
	.byte	0x5
	.uleb128 0x107
	.long	.LASF262
	.byte	0x5
	.uleb128 0x108
	.long	.LASF263
	.byte	0x5
	.uleb128 0x109
	.long	.LASF264
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF265
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF266
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF267
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF268
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF269
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF270
	.byte	0x5
	.uleb128 0x110
	.long	.LASF271
	.byte	0x5
	.uleb128 0x111
	.long	.LASF272
	.byte	0x5
	.uleb128 0x112
	.long	.LASF273
	.byte	0x5
	.uleb128 0x113
	.long	.LASF274
	.byte	0x5
	.uleb128 0x114
	.long	.LASF275
	.byte	0x5
	.uleb128 0x115
	.long	.LASF276
	.byte	0x5
	.uleb128 0x116
	.long	.LASF277
	.byte	0x5
	.uleb128 0x117
	.long	.LASF278
	.byte	0x5
	.uleb128 0x118
	.long	.LASF279
	.byte	0x5
	.uleb128 0x119
	.long	.LASF280
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF281
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF282
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF283
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF284
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF285
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF286
	.byte	0x5
	.uleb128 0x120
	.long	.LASF287
	.byte	0x5
	.uleb128 0x121
	.long	.LASF288
	.byte	0x5
	.uleb128 0x122
	.long	.LASF289
	.byte	0x5
	.uleb128 0x123
	.long	.LASF290
	.byte	0x5
	.uleb128 0x124
	.long	.LASF291
	.byte	0x5
	.uleb128 0x125
	.long	.LASF292
	.byte	0x5
	.uleb128 0x126
	.long	.LASF293
	.byte	0x5
	.uleb128 0x127
	.long	.LASF294
	.byte	0x5
	.uleb128 0x128
	.long	.LASF295
	.byte	0x5
	.uleb128 0x129
	.long	.LASF296
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF297
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF298
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF299
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF300
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF301
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF302
	.byte	0x5
	.uleb128 0x130
	.long	.LASF303
	.byte	0x5
	.uleb128 0x131
	.long	.LASF304
	.byte	0x5
	.uleb128 0x132
	.long	.LASF305
	.byte	0x5
	.uleb128 0x133
	.long	.LASF306
	.byte	0x5
	.uleb128 0x134
	.long	.LASF307
	.byte	0x5
	.uleb128 0x135
	.long	.LASF308
	.byte	0x5
	.uleb128 0x136
	.long	.LASF309
	.byte	0x5
	.uleb128 0x137
	.long	.LASF310
	.byte	0x5
	.uleb128 0x138
	.long	.LASF311
	.byte	0x5
	.uleb128 0x139
	.long	.LASF312
	.byte	0x5
	.uleb128 0x13a
	.long	.LASF313
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF314
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF315
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF316
	.byte	0x5
	.uleb128 0x13e
	.long	.LASF317
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF318
	.byte	0x5
	.uleb128 0x140
	.long	.LASF319
	.byte	0x5
	.uleb128 0x141
	.long	.LASF320
	.byte	0x5
	.uleb128 0x142
	.long	.LASF321
	.byte	0x5
	.uleb128 0x143
	.long	.LASF322
	.byte	0x5
	.uleb128 0x144
	.long	.LASF323
	.byte	0x5
	.uleb128 0x145
	.long	.LASF324
	.byte	0x5
	.uleb128 0x146
	.long	.LASF325
	.byte	0x5
	.uleb128 0x147
	.long	.LASF326
	.byte	0x5
	.uleb128 0x148
	.long	.LASF327
	.byte	0x5
	.uleb128 0x149
	.long	.LASF328
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF329
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF330
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF331
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF332
	.byte	0x5
	.uleb128 0x14e
	.long	.LASF333
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF334
	.byte	0x5
	.uleb128 0x150
	.long	.LASF335
	.byte	0x5
	.uleb128 0x151
	.long	.LASF336
	.byte	0x5
	.uleb128 0x152
	.long	.LASF337
	.byte	0x5
	.uleb128 0x153
	.long	.LASF338
	.byte	0x5
	.uleb128 0x154
	.long	.LASF339
	.byte	0x5
	.uleb128 0x155
	.long	.LASF340
	.byte	0x5
	.uleb128 0x156
	.long	.LASF341
	.byte	0x5
	.uleb128 0x157
	.long	.LASF342
	.byte	0x5
	.uleb128 0x158
	.long	.LASF343
	.byte	0x5
	.uleb128 0x159
	.long	.LASF344
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF345
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF346
	.byte	0x5
	.uleb128 0x15c
	.long	.LASF347
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF348
	.byte	0x5
	.uleb128 0x1
	.long	.LASF349
	.file 8 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x8
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.long	.LASF354
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x2
	.long	.LASF355
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro3
	.file 9 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x9
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF358
	.file 10 "/usr/include/features.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro4
	.file 11 "/usr/include/x86_64-linux-gnu/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x1cd
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro5
	.file 12 "/usr/include/x86_64-linux-gnu/bits/wordsize.h"
	.byte	0x3
	.uleb128 0x1c4
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 13 "/usr/include/x86_64-linux-gnu/bits/long-double.h"
	.byte	0x3
	.uleb128 0x1c5
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x15
	.long	.LASF478
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF489
	.file 14 "/usr/include/x86_64-linux-gnu/gnu/stubs.h"
	.byte	0x3
	.uleb128 0x1e5
	.uleb128 0xe
	.file 15 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro10
	.file 16 "/usr/lib/gcc/x86_64-linux-gnu/10/include/stddef.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.long	.LASF535
	.file 17 "/usr/lib/gcc/x86_64-linux-gnu/10/include/stdarg.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x18
	.long	.LASF538
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 18 "/usr/include/x86_64-linux-gnu/bits/timesize.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x18
	.long	.LASF539
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro13
	.file 19 "/usr/include/x86_64-linux-gnu/bits/typesizes.h"
	.byte	0x3
	.uleb128 0x8d
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.file 20 "/usr/include/x86_64-linux-gnu/bits/time64.h"
	.byte	0x3
	.uleb128 0x8e
	.uleb128 0x14
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x6
	.uleb128 0xe1
	.long	.LASF597
	.byte	0x4
	.file 21 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x2
	.long	.LASF598
	.file 22 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x2
	.long	.LASF599
	.byte	0x4
	.byte	0x4
	.file 23 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x17
	.byte	0x5
	.uleb128 0x2
	.long	.LASF600
	.byte	0x4
	.file 24 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x2
	.long	.LASF601
	.byte	0x4
	.file 25 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x19
	.byte	0x5
	.uleb128 0x2
	.long	.LASF602
	.byte	0x4
	.file 26 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x1a
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.file 27 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h"
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x1b
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro19
	.file 28 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.byte	0x3
	.uleb128 0x30d
	.uleb128 0x1c
	.byte	0x4
	.file 29 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.byte	0x3
	.uleb128 0x360
	.uleb128 0x1d
	.byte	0x7
	.long	.Ldebug_macro20
	.byte	0x4
	.byte	0x4
	.file 30 "/usr/include/stdlib.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0x18
	.long	.LASF357
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x9
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro22
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro23
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.long	.LASF656
	.file 31 "/usr/include/x86_64-linux-gnu/bits/waitflags.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x1f
	.byte	0x7
	.long	.Ldebug_macro24
	.byte	0x4
	.file 32 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x20
	.byte	0x7
	.long	.Ldebug_macro25
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro26
	.file 33 "/usr/include/x86_64-linux-gnu/bits/floatn.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x21
	.byte	0x7
	.long	.Ldebug_macro27
	.file 34 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h"
	.byte	0x3
	.uleb128 0x78
	.uleb128 0x22
	.byte	0x5
	.uleb128 0x15
	.long	.LASF696
	.byte	0x3
	.uleb128 0x18
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x15
	.long	.LASF478
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro28
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro29
	.file 35 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.byte	0x3
	.uleb128 0x18a
	.uleb128 0x23
	.byte	0x7
	.long	.Ldebug_macro30
	.file 36 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h"
	.byte	0x3
	.uleb128 0x7e
	.uleb128 0x24
	.byte	0x5
	.uleb128 0x2
	.long	.LASF736
	.byte	0x4
	.file 37 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h"
	.byte	0x3
	.uleb128 0x80
	.uleb128 0x25
	.byte	0x5
	.uleb128 0x2
	.long	.LASF737
	.byte	0x4
	.file 38 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.byte	0x3
	.uleb128 0x81
	.uleb128 0x26
	.byte	0x5
	.uleb128 0x2
	.long	.LASF738
	.byte	0x4
	.file 39 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h"
	.byte	0x3
	.uleb128 0x82
	.uleb128 0x27
	.byte	0x5
	.uleb128 0x2
	.long	.LASF739
	.byte	0x4
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF512
	.byte	0x3
	.uleb128 0x90
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro31
	.byte	0x4
	.byte	0x3
	.uleb128 0x9b
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x14
	.long	.LASF740
	.byte	0x4
	.byte	0x5
	.uleb128 0xab
	.long	.LASF741
	.file 40 "/usr/include/endian.h"
	.byte	0x3
	.uleb128 0xb0
	.uleb128 0x28
	.byte	0x5
	.uleb128 0x13
	.long	.LASF742
	.file 41 "/usr/include/x86_64-linux-gnu/bits/endian.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x29
	.byte	0x7
	.long	.Ldebug_macro32
	.file 42 "/usr/include/x86_64-linux-gnu/bits/endianness.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x2a
	.byte	0x7
	.long	.Ldebug_macro33
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro34
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro35
	.file 43 "/usr/include/x86_64-linux-gnu/bits/byteswap.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x2b
	.byte	0x7
	.long	.Ldebug_macro36
	.byte	0x4
	.file 44 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x2c
	.byte	0x5
	.uleb128 0x18
	.long	.LASF759
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro37
	.byte	0x4
	.file 45 "/usr/include/x86_64-linux-gnu/sys/select.h"
	.byte	0x3
	.uleb128 0xb3
	.uleb128 0x2d
	.byte	0x5
	.uleb128 0x16
	.long	.LASF772
	.file 46 "/usr/include/x86_64-linux-gnu/bits/select.h"
	.byte	0x3
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x3
	.uleb128 0x16
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro38
	.byte	0x4
	.file 47 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x2f
	.byte	0x5
	.uleb128 0x2
	.long	.LASF778
	.file 48 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x30
	.byte	0x7
	.long	.Ldebug_macro39
	.byte	0x4
	.byte	0x4
	.file 49 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x31
	.byte	0x5
	.uleb128 0x2
	.long	.LASF781
	.byte	0x4
	.file 50 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x32
	.byte	0x5
	.uleb128 0x3
	.long	.LASF782
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro40
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro41
	.file 51 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.byte	0x3
	.uleb128 0xe3
	.uleb128 0x33
	.byte	0x5
	.uleb128 0x14
	.long	.LASF799
	.file 52 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h"
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x34
	.byte	0x5
	.uleb128 0x14
	.long	.LASF800
	.file 53 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x35
	.byte	0x5
	.uleb128 0x13
	.long	.LASF801
	.byte	0x3
	.uleb128 0x15
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro42
	.byte	0x4
	.file 54 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x36
	.byte	0x7
	.long	.Ldebug_macro43
	.byte	0x4
	.file 55 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x37
	.byte	0x7
	.long	.Ldebug_macro44
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF819
	.byte	0x4
	.byte	0x4
	.file 56 "/usr/include/alloca.h"
	.byte	0x3
	.uleb128 0x238
	.uleb128 0x38
	.byte	0x7
	.long	.Ldebug_macro45
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro31
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro46
	.byte	0x4
	.byte	0x5
	.uleb128 0x327
	.long	.LASF823
	.file 57 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h"
	.byte	0x3
	.uleb128 0x339
	.uleb128 0x39
	.byte	0x4
	.file 58 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.byte	0x3
	.uleb128 0x3f5
	.uleb128 0x3a
	.byte	0x4
	.byte	0x4
	.file 59 "/usr/lib/gcc/x86_64-linux-gnu/10/include/stdint.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x3b
	.file 60 "/usr/include/stdint.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x3c
	.byte	0x7
	.long	.Ldebug_macro47
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x9
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.file 61 "/usr/include/x86_64-linux-gnu/bits/wchar.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x3d
	.byte	0x7
	.long	.Ldebug_macro48
	.byte	0x4
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x14
	.long	.LASF828
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro49
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF891
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x11
	.byte	0x7
	.long	.Ldebug_macro50
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro51
	.byte	0x4
	.file 62 "/usr/local/include/stderr.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x3e
	.byte	0x7
	.long	.Ldebug_macro52
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro53
	.byte	0x4
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF941
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF942
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF943
	.byte	0x5
	.uleb128 0x60
	.long	.LASF944
	.byte	0x5
	.uleb128 0x61
	.long	.LASF945
	.byte	0x5
	.uleb128 0x62
	.long	.LASF946
	.byte	0x5
	.uleb128 0x63
	.long	.LASF947
	.byte	0x5
	.uleb128 0x65
	.long	.LASF948
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF949
	.byte	0x5
	.uleb128 0x71
	.long	.LASF950
	.byte	0x5
	.uleb128 0x72
	.long	.LASF951
	.byte	0x5
	.uleb128 0x73
	.long	.LASF952
	.byte	0x5
	.uleb128 0x74
	.long	.LASF953
	.byte	0x5
	.uleb128 0x75
	.long	.LASF954
	.byte	0x5
	.uleb128 0x76
	.long	.LASF955
	.byte	0x5
	.uleb128 0x78
	.long	.LASF956
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF957
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdcpredef.h.19.8dc41bed5d9037ff9622e015fb5f0ce3,comdat
.Ldebug_macro2:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF350
	.byte	0x5
	.uleb128 0x26
	.long	.LASF351
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF352
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF353
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.24.5c1b97eef3c86b7a2549420f69f4f128,comdat
.Ldebug_macro3:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF356
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF357
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.19.15ac77107a63795c2bb2eb98a8707c43,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF359
	.byte	0x6
	.uleb128 0x78
	.long	.LASF360
	.byte	0x6
	.uleb128 0x79
	.long	.LASF361
	.byte	0x6
	.uleb128 0x7a
	.long	.LASF362
	.byte	0x6
	.uleb128 0x7b
	.long	.LASF363
	.byte	0x6
	.uleb128 0x7c
	.long	.LASF364
	.byte	0x6
	.uleb128 0x7d
	.long	.LASF365
	.byte	0x6
	.uleb128 0x7e
	.long	.LASF366
	.byte	0x6
	.uleb128 0x7f
	.long	.LASF367
	.byte	0x6
	.uleb128 0x80
	.long	.LASF368
	.byte	0x6
	.uleb128 0x81
	.long	.LASF369
	.byte	0x6
	.uleb128 0x82
	.long	.LASF370
	.byte	0x6
	.uleb128 0x83
	.long	.LASF371
	.byte	0x6
	.uleb128 0x84
	.long	.LASF372
	.byte	0x6
	.uleb128 0x85
	.long	.LASF373
	.byte	0x6
	.uleb128 0x86
	.long	.LASF374
	.byte	0x6
	.uleb128 0x87
	.long	.LASF375
	.byte	0x6
	.uleb128 0x88
	.long	.LASF376
	.byte	0x6
	.uleb128 0x89
	.long	.LASF377
	.byte	0x6
	.uleb128 0x8a
	.long	.LASF378
	.byte	0x6
	.uleb128 0x8b
	.long	.LASF379
	.byte	0x6
	.uleb128 0x8c
	.long	.LASF380
	.byte	0x6
	.uleb128 0x8d
	.long	.LASF381
	.byte	0x6
	.uleb128 0x8e
	.long	.LASF382
	.byte	0x6
	.uleb128 0x8f
	.long	.LASF383
	.byte	0x6
	.uleb128 0x90
	.long	.LASF384
	.byte	0x6
	.uleb128 0x91
	.long	.LASF385
	.byte	0x5
	.uleb128 0x96
	.long	.LASF386
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF387
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF388
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF389
	.byte	0x6
	.uleb128 0xe2
	.long	.LASF390
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF391
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF392
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF393
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF394
	.byte	0x5
	.uleb128 0xff
	.long	.LASF395
	.byte	0x5
	.uleb128 0x114
	.long	.LASF396
	.byte	0x6
	.uleb128 0x116
	.long	.LASF397
	.byte	0x5
	.uleb128 0x117
	.long	.LASF398
	.byte	0x6
	.uleb128 0x118
	.long	.LASF399
	.byte	0x5
	.uleb128 0x119
	.long	.LASF400
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF401
	.byte	0x5
	.uleb128 0x140
	.long	.LASF402
	.byte	0x5
	.uleb128 0x144
	.long	.LASF403
	.byte	0x5
	.uleb128 0x148
	.long	.LASF404
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF405
	.byte	0x6
	.uleb128 0x14d
	.long	.LASF362
	.byte	0x5
	.uleb128 0x14e
	.long	.LASF395
	.byte	0x6
	.uleb128 0x14f
	.long	.LASF361
	.byte	0x5
	.uleb128 0x150
	.long	.LASF394
	.byte	0x5
	.uleb128 0x154
	.long	.LASF406
	.byte	0x6
	.uleb128 0x155
	.long	.LASF407
	.byte	0x5
	.uleb128 0x156
	.long	.LASF408
	.byte	0x5
	.uleb128 0x180
	.long	.LASF409
	.byte	0x5
	.uleb128 0x184
	.long	.LASF410
	.byte	0x5
	.uleb128 0x193
	.long	.LASF411
	.byte	0x5
	.uleb128 0x19b
	.long	.LASF412
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF413
	.byte	0x6
	.uleb128 0x1bf
	.long	.LASF414
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF415
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF416
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF417
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF418
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.19.a8ffc9250e5bdadaabc998d2b2f3d734,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF419
	.byte	0x2
	.uleb128 0x22
	.string	"__P"
	.byte	0x6
	.uleb128 0x23
	.long	.LASF420
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF421
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF422
	.byte	0x5
	.uleb128 0x37
	.long	.LASF423
	.byte	0x5
	.uleb128 0x38
	.long	.LASF424
	.byte	0x5
	.uleb128 0x39
	.long	.LASF425
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF426
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF427
	.byte	0x5
	.uleb128 0x63
	.long	.LASF428
	.byte	0x5
	.uleb128 0x64
	.long	.LASF429
	.byte	0x5
	.uleb128 0x69
	.long	.LASF430
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF431
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF432
	.byte	0x5
	.uleb128 0x75
	.long	.LASF433
	.byte	0x5
	.uleb128 0x76
	.long	.LASF434
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF435
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF436
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF437
	.byte	0x5
	.uleb128 0x81
	.long	.LASF438
	.byte	0x5
	.uleb128 0x82
	.long	.LASF439
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF440
	.byte	0x5
	.uleb128 0x90
	.long	.LASF441
	.byte	0x5
	.uleb128 0xae
	.long	.LASF442
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF443
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF444
	.byte	0x5
	.uleb128 0xba
	.long	.LASF445
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF446
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF447
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF448
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF449
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF450
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF451
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF452
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF453
	.byte	0x5
	.uleb128 0x105
	.long	.LASF454
	.byte	0x5
	.uleb128 0x112
	.long	.LASF455
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF456
	.byte	0x5
	.uleb128 0x125
	.long	.LASF457
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF458
	.byte	0x5
	.uleb128 0x136
	.long	.LASF459
	.byte	0x6
	.uleb128 0x13e
	.long	.LASF460
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF461
	.byte	0x5
	.uleb128 0x148
	.long	.LASF462
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF463
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF464
	.byte	0x5
	.uleb128 0x164
	.long	.LASF465
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF466
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF467
	.byte	0x5
	.uleb128 0x183
	.long	.LASF468
	.byte	0x5
	.uleb128 0x192
	.long	.LASF469
	.byte	0x5
	.uleb128 0x193
	.long	.LASF470
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF471
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF472
	.byte	0x6
	.uleb128 0x1b3
	.long	.LASF473
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF474
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wordsize.h.4.baf119258a1e53d8dba67ceac44ab6bc,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.long	.LASF475
	.byte	0x5
	.uleb128 0xc
	.long	.LASF476
	.byte	0x5
	.uleb128 0xe
	.long	.LASF477
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.475.fb75d2e4416aa349344e6f45f683bf28,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF479
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF480
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF481
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF482
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF483
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF484
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF485
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF486
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF487
	.byte	0x5
	.uleb128 0x200
	.long	.LASF488
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stubs64.h.10.6ce4c34010988db072c080326a6b6319,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.long	.LASF490
	.byte	0x5
	.uleb128 0xb
	.long	.LASF491
	.byte	0x5
	.uleb128 0xc
	.long	.LASF492
	.byte	0x5
	.uleb128 0xd
	.long	.LASF493
	.byte	0x5
	.uleb128 0xe
	.long	.LASF494
	.byte	0x5
	.uleb128 0xf
	.long	.LASF495
	.byte	0x5
	.uleb128 0x10
	.long	.LASF496
	.byte	0x5
	.uleb128 0x11
	.long	.LASF497
	.byte	0x5
	.uleb128 0x12
	.long	.LASF498
	.byte	0x5
	.uleb128 0x13
	.long	.LASF499
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libcheaderstart.h.37.d9274df4cc0172452960ad9644fa5579,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x25
	.long	.LASF500
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF501
	.byte	0x6
	.uleb128 0x31
	.long	.LASF502
	.byte	0x5
	.uleb128 0x35
	.long	.LASF503
	.byte	0x6
	.uleb128 0x37
	.long	.LASF504
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF505
	.byte	0x6
	.uleb128 0x42
	.long	.LASF506
	.byte	0x5
	.uleb128 0x46
	.long	.LASF507
	.byte	0x6
	.uleb128 0x48
	.long	.LASF508
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF509
	.byte	0x6
	.uleb128 0x51
	.long	.LASF510
	.byte	0x5
	.uleb128 0x55
	.long	.LASF511
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.31.e39a94e203ad4e1d978c0fc68ce016ee,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF512
	.byte	0x5
	.uleb128 0x20
	.long	.LASF513
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.181.c3f52a3b0f4c288bddb5dda1562858e2,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF514
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF515
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF516
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF517
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF518
	.byte	0x5
	.uleb128 0xba
	.long	.LASF519
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF520
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF521
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF522
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF523
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF524
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF525
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF526
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF527
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF528
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF529
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF530
	.byte	0x6
	.uleb128 0xe7
	.long	.LASF531
	.byte	0x6
	.uleb128 0x186
	.long	.LASF532
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF533
	.byte	0x6
	.uleb128 0x191
	.long	.LASF534
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x22
	.long	.LASF536
	.byte	0x5
	.uleb128 0x27
	.long	.LASF537
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.109.56eb9ae966b255288cc544f18746a7ff,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF540
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF541
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF542
	.byte	0x5
	.uleb128 0x70
	.long	.LASF543
	.byte	0x5
	.uleb128 0x71
	.long	.LASF544
	.byte	0x5
	.uleb128 0x72
	.long	.LASF545
	.byte	0x5
	.uleb128 0x80
	.long	.LASF546
	.byte	0x5
	.uleb128 0x81
	.long	.LASF547
	.byte	0x5
	.uleb128 0x82
	.long	.LASF548
	.byte	0x5
	.uleb128 0x83
	.long	.LASF549
	.byte	0x5
	.uleb128 0x84
	.long	.LASF550
	.byte	0x5
	.uleb128 0x85
	.long	.LASF551
	.byte	0x5
	.uleb128 0x86
	.long	.LASF552
	.byte	0x5
	.uleb128 0x87
	.long	.LASF553
	.byte	0x5
	.uleb128 0x89
	.long	.LASF554
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.typesizes.h.24.2c64f817c0dc4b6fb2a2c619d717be26,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF555
	.byte	0x5
	.uleb128 0x22
	.long	.LASF556
	.byte	0x5
	.uleb128 0x23
	.long	.LASF557
	.byte	0x5
	.uleb128 0x26
	.long	.LASF558
	.byte	0x5
	.uleb128 0x27
	.long	.LASF559
	.byte	0x5
	.uleb128 0x28
	.long	.LASF560
	.byte	0x5
	.uleb128 0x29
	.long	.LASF561
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF562
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF563
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF564
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF565
	.byte	0x5
	.uleb128 0x33
	.long	.LASF566
	.byte	0x5
	.uleb128 0x34
	.long	.LASF567
	.byte	0x5
	.uleb128 0x35
	.long	.LASF568
	.byte	0x5
	.uleb128 0x36
	.long	.LASF569
	.byte	0x5
	.uleb128 0x37
	.long	.LASF570
	.byte	0x5
	.uleb128 0x38
	.long	.LASF571
	.byte	0x5
	.uleb128 0x39
	.long	.LASF572
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF573
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF574
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF575
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF576
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF577
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF578
	.byte	0x5
	.uleb128 0x40
	.long	.LASF579
	.byte	0x5
	.uleb128 0x41
	.long	.LASF580
	.byte	0x5
	.uleb128 0x42
	.long	.LASF581
	.byte	0x5
	.uleb128 0x43
	.long	.LASF582
	.byte	0x5
	.uleb128 0x44
	.long	.LASF583
	.byte	0x5
	.uleb128 0x45
	.long	.LASF584
	.byte	0x5
	.uleb128 0x46
	.long	.LASF585
	.byte	0x5
	.uleb128 0x47
	.long	.LASF586
	.byte	0x5
	.uleb128 0x48
	.long	.LASF587
	.byte	0x5
	.uleb128 0x49
	.long	.LASF588
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF589
	.byte	0x5
	.uleb128 0x50
	.long	.LASF590
	.byte	0x5
	.uleb128 0x53
	.long	.LASF591
	.byte	0x5
	.uleb128 0x56
	.long	.LASF592
	.byte	0x5
	.uleb128 0x59
	.long	.LASF593
	.byte	0x5
	.uleb128 0x61
	.long	.LASF594
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.time64.h.24.a8166ae916ec910dab0d8987098d42ee,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF595
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF596
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.struct_FILE.h.19.0888ac70396abe1031c03d393554032f,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF603
	.byte	0x5
	.uleb128 0x66
	.long	.LASF604
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF605
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF606
	.byte	0x5
	.uleb128 0x70
	.long	.LASF607
	.byte	0x5
	.uleb128 0x72
	.long	.LASF608
	.byte	0x5
	.uleb128 0x73
	.long	.LASF609
	.byte	0x5
	.uleb128 0x75
	.long	.LASF610
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.53.78a7f18f3bc87ded52f05aa6f6a64310,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x35
	.long	.LASF611
	.byte	0x5
	.uleb128 0x43
	.long	.LASF612
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF613
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF614
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF615
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF616
	.byte	0x5
	.uleb128 0x63
	.long	.LASF617
	.byte	0x5
	.uleb128 0x68
	.long	.LASF618
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF619
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF620
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF621
	.byte	0x5
	.uleb128 0x78
	.long	.LASF622
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio_lim.h.19.e4b00b560d878dcfbc6635b3406640c5,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF623
	.byte	0x5
	.uleb128 0x19
	.long	.LASF624
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF625
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF626
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF627
	.byte	0x6
	.uleb128 0x24
	.long	.LASF628
	.byte	0x5
	.uleb128 0x25
	.long	.LASF629
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.141.d7a290e19ca077c9e4aa7c43ede17a73,comdat
.Ldebug_macro19:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF630
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF631
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF632
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.20.b0caa08e5723aa5941367be0e5d2ec59,comdat
.Ldebug_macro20:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF633
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF634
	.byte	0x5
	.uleb128 0x93
	.long	.LASF635
	.byte	0x5
	.uleb128 0xab
	.long	.LASF636
	.byte	0x6
	.uleb128 0xc1
	.long	.LASF637
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libcheaderstart.h.31.87b3c285aeba93fe355ad19123070832,comdat
.Ldebug_macro21:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF358
	.byte	0x6
	.uleb128 0x25
	.long	.LASF500
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF501
	.byte	0x6
	.uleb128 0x31
	.long	.LASF502
	.byte	0x5
	.uleb128 0x35
	.long	.LASF503
	.byte	0x6
	.uleb128 0x37
	.long	.LASF504
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF505
	.byte	0x6
	.uleb128 0x42
	.long	.LASF506
	.byte	0x5
	.uleb128 0x46
	.long	.LASF507
	.byte	0x6
	.uleb128 0x48
	.long	.LASF508
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF509
	.byte	0x6
	.uleb128 0x51
	.long	.LASF510
	.byte	0x5
	.uleb128 0x55
	.long	.LASF511
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.28.2cffa49d94c5d85f4538f55f7b59771d,comdat
.Ldebug_macro22:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF512
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF638
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF513
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.231.ac1e89356001c54fbeb8aaa0d15e8b3c,comdat
.Ldebug_macro23:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0xe7
	.long	.LASF531
	.byte	0x5
	.uleb128 0x104
	.long	.LASF639
	.byte	0x5
	.uleb128 0x105
	.long	.LASF640
	.byte	0x5
	.uleb128 0x106
	.long	.LASF641
	.byte	0x5
	.uleb128 0x107
	.long	.LASF642
	.byte	0x5
	.uleb128 0x108
	.long	.LASF643
	.byte	0x5
	.uleb128 0x109
	.long	.LASF644
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF645
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF646
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF647
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF648
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF649
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF650
	.byte	0x5
	.uleb128 0x110
	.long	.LASF651
	.byte	0x5
	.uleb128 0x111
	.long	.LASF652
	.byte	0x5
	.uleb128 0x112
	.long	.LASF653
	.byte	0x6
	.uleb128 0x11f
	.long	.LASF654
	.byte	0x6
	.uleb128 0x154
	.long	.LASF655
	.byte	0x6
	.uleb128 0x186
	.long	.LASF532
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF533
	.byte	0x6
	.uleb128 0x191
	.long	.LASF534
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.waitflags.h.25.41934de4af99038521c2782f418699b1,comdat
.Ldebug_macro24:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x19
	.long	.LASF657
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF658
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF659
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF660
	.byte	0x5
	.uleb128 0x20
	.long	.LASF661
	.byte	0x5
	.uleb128 0x21
	.long	.LASF662
	.byte	0x5
	.uleb128 0x24
	.long	.LASF663
	.byte	0x5
	.uleb128 0x26
	.long	.LASF664
	.byte	0x5
	.uleb128 0x27
	.long	.LASF665
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF666
	.byte	0x6
	.uleb128 0x30
	.long	.LASF667
	.byte	0x6
	.uleb128 0x31
	.long	.LASF668
	.byte	0x6
	.uleb128 0x32
	.long	.LASF669
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.waitstatus.h.28.93f167f49d64e2b9b99f98d1162a93bf,comdat
.Ldebug_macro25:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF670
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF671
	.byte	0x5
	.uleb128 0x22
	.long	.LASF672
	.byte	0x5
	.uleb128 0x25
	.long	.LASF673
	.byte	0x5
	.uleb128 0x28
	.long	.LASF674
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF675
	.byte	0x5
	.uleb128 0x31
	.long	.LASF676
	.byte	0x5
	.uleb128 0x35
	.long	.LASF677
	.byte	0x5
	.uleb128 0x38
	.long	.LASF678
	.byte	0x5
	.uleb128 0x39
	.long	.LASF679
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF680
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF681
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.43.9fa4f727a2f1cb8d2450a574c9195553,comdat
.Ldebug_macro26:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF682
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF683
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF684
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF685
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF686
	.byte	0x5
	.uleb128 0x30
	.long	.LASF687
	.byte	0x5
	.uleb128 0x32
	.long	.LASF688
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatn.h.20.80c7cf8a8dfad237004b28d051d5afda,comdat
.Ldebug_macro27:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF689
	.byte	0x5
	.uleb128 0x21
	.long	.LASF690
	.byte	0x5
	.uleb128 0x29
	.long	.LASF691
	.byte	0x5
	.uleb128 0x31
	.long	.LASF692
	.byte	0x5
	.uleb128 0x37
	.long	.LASF693
	.byte	0x5
	.uleb128 0x42
	.long	.LASF694
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF695
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatncommon.h.34.7e1840d7dfb19e9bdb51aeb077d76637,comdat
.Ldebug_macro28:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF697
	.byte	0x5
	.uleb128 0x23
	.long	.LASF698
	.byte	0x5
	.uleb128 0x24
	.long	.LASF699
	.byte	0x5
	.uleb128 0x25
	.long	.LASF700
	.byte	0x5
	.uleb128 0x26
	.long	.LASF701
	.byte	0x5
	.uleb128 0x34
	.long	.LASF702
	.byte	0x5
	.uleb128 0x35
	.long	.LASF703
	.byte	0x5
	.uleb128 0x36
	.long	.LASF704
	.byte	0x5
	.uleb128 0x37
	.long	.LASF705
	.byte	0x5
	.uleb128 0x38
	.long	.LASF706
	.byte	0x5
	.uleb128 0x39
	.long	.LASF707
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF708
	.byte	0x5
	.uleb128 0x46
	.long	.LASF709
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF710
	.byte	0x5
	.uleb128 0x69
	.long	.LASF711
	.byte	0x5
	.uleb128 0x71
	.long	.LASF712
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF713
	.byte	0x5
	.uleb128 0x97
	.long	.LASF714
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF715
	.byte	0x5
	.uleb128 0xab
	.long	.LASF716
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF717
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.71.2927e068ec678159b4f68ec2f089f7e6,comdat
.Ldebug_macro29:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x47
	.long	.LASF718
	.byte	0x5
	.uleb128 0x51
	.long	.LASF719
	.byte	0x5
	.uleb128 0x56
	.long	.LASF720
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF721
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF722
	.byte	0x5
	.uleb128 0x60
	.long	.LASF723
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.23.882ecbf54662e1f16e101552381a65da,comdat
.Ldebug_macro30:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF724
	.byte	0x5
	.uleb128 0x28
	.long	.LASF725
	.byte	0x5
	.uleb128 0x33
	.long	.LASF726
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF727
	.byte	0x5
	.uleb128 0x41
	.long	.LASF728
	.byte	0x5
	.uleb128 0x46
	.long	.LASF729
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF730
	.byte	0x5
	.uleb128 0x50
	.long	.LASF731
	.byte	0x5
	.uleb128 0x62
	.long	.LASF732
	.byte	0x5
	.uleb128 0x68
	.long	.LASF733
	.byte	0x5
	.uleb128 0x74
	.long	.LASF734
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF735
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.231.0adce5c8c1fd8096aaff50981b3d1f0f,comdat
.Ldebug_macro31:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0xe7
	.long	.LASF531
	.byte	0x6
	.uleb128 0x191
	.long	.LASF534
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.20.efabd1018df5d7b4052c27dc6bdd5ce5,comdat
.Ldebug_macro32:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF743
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF744
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF745
	.byte	0x5
	.uleb128 0x20
	.long	.LASF746
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endianness.h.2.2c6a211f7909f3af5e9e9cfa3b6b63c8,comdat
.Ldebug_macro33:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF747
	.byte	0x5
	.uleb128 0x9
	.long	.LASF748
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.40.9e5d395adda2f4eb53ae69b69b664084,comdat
.Ldebug_macro34:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.long	.LASF749
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF750
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.27.4c4f94262c4eaee2982fe00ed1b4f173,comdat
.Ldebug_macro35:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF751
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF752
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF753
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF754
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.byteswap.h.24.5363c019348146aada5aeadf51456576,comdat
.Ldebug_macro36:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF755
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF756
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF757
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF758
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.39.30a606dbd99b6c3df61c1f06dbdabd4e,comdat
.Ldebug_macro37:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.long	.LASF760
	.byte	0x5
	.uleb128 0x28
	.long	.LASF761
	.byte	0x5
	.uleb128 0x29
	.long	.LASF762
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF763
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF764
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF765
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF766
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF767
	.byte	0x5
	.uleb128 0x31
	.long	.LASF768
	.byte	0x5
	.uleb128 0x32
	.long	.LASF769
	.byte	0x5
	.uleb128 0x33
	.long	.LASF770
	.byte	0x5
	.uleb128 0x34
	.long	.LASF771
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.select.h.28.eb2f3debdbcffd1442ebddaebc4fb6ff,comdat
.Ldebug_macro38:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF773
	.byte	0x5
	.uleb128 0x21
	.long	.LASF774
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF775
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF776
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF777
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.__sigset_t.h.2.6b1ab6ff3d7b8fd9c0c42b0d80afbd80,comdat
.Ldebug_macro39:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF779
	.byte	0x5
	.uleb128 0x4
	.long	.LASF780
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.select.h.44.887a4ff60aa97fcd9c1be017735e1675,comdat
.Ldebug_macro40:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF783
	.byte	0x6
	.uleb128 0x34
	.long	.LASF784
	.byte	0x5
	.uleb128 0x36
	.long	.LASF785
	.byte	0x5
	.uleb128 0x37
	.long	.LASF786
	.byte	0x5
	.uleb128 0x38
	.long	.LASF787
	.byte	0x5
	.uleb128 0x44
	.long	.LASF788
	.byte	0x5
	.uleb128 0x49
	.long	.LASF789
	.byte	0x5
	.uleb128 0x50
	.long	.LASF790
	.byte	0x5
	.uleb128 0x55
	.long	.LASF791
	.byte	0x5
	.uleb128 0x56
	.long	.LASF792
	.byte	0x5
	.uleb128 0x57
	.long	.LASF793
	.byte	0x5
	.uleb128 0x58
	.long	.LASF794
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.186.489a4ed8f2d29cd358843490f54ddea5,comdat
.Ldebug_macro41:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xba
	.long	.LASF795
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF796
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF797
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF798
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.pthreadtypesarch.h.25.6063cba99664c916e22d3a912bcc348a,comdat
.Ldebug_macro42:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x19
	.long	.LASF802
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF803
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF804
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF805
	.byte	0x5
	.uleb128 0x29
	.long	.LASF806
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF807
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF808
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF809
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF810
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF811
	.byte	0x5
	.uleb128 0x30
	.long	.LASF812
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.struct_mutex.h.20.ed51f515172b9be99e450ba83eb5dd99,comdat
.Ldebug_macro43:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF813
	.byte	0x5
	.uleb128 0x25
	.long	.LASF814
	.byte	0x5
	.uleb128 0x38
	.long	.LASF815
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.struct_rwlock.h.21.0254880f2904e3833fb8ae683e0f0330,comdat
.Ldebug_macro44:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x15
	.long	.LASF816
	.byte	0x5
	.uleb128 0x28
	.long	.LASF817
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF818
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.alloca.h.19.edefa922a76c1cbaaf1e416903ba2d1c,comdat
.Ldebug_macro45:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF820
	.byte	0x5
	.uleb128 0x17
	.long	.LASF512
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.alloca.h.29.156e12058824cc23d961c4d3b13031f6,comdat
.Ldebug_macro46:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x1d
	.long	.LASF821
	.byte	0x5
	.uleb128 0x23
	.long	.LASF822
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.23.022efde71688fcb285fe42cc87d41ee3,comdat
.Ldebug_macro47:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF824
	.byte	0x5
	.uleb128 0x19
	.long	.LASF357
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wchar.h.20.510818a05484290d697a517509bf4b2d,comdat
.Ldebug_macro48:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF825
	.byte	0x5
	.uleb128 0x22
	.long	.LASF826
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF827
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.88.7e8071bbba3b822ff5b29420f80324ec,comdat
.Ldebug_macro49:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x58
	.long	.LASF829
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF121
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF130
	.byte	0x5
	.uleb128 0x74
	.long	.LASF830
	.byte	0x5
	.uleb128 0x75
	.long	.LASF831
	.byte	0x5
	.uleb128 0x76
	.long	.LASF832
	.byte	0x5
	.uleb128 0x77
	.long	.LASF833
	.byte	0x5
	.uleb128 0x79
	.long	.LASF834
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF835
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF836
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF837
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF838
	.byte	0x5
	.uleb128 0x80
	.long	.LASF839
	.byte	0x5
	.uleb128 0x81
	.long	.LASF840
	.byte	0x5
	.uleb128 0x82
	.long	.LASF841
	.byte	0x5
	.uleb128 0x86
	.long	.LASF842
	.byte	0x5
	.uleb128 0x87
	.long	.LASF843
	.byte	0x5
	.uleb128 0x88
	.long	.LASF844
	.byte	0x5
	.uleb128 0x89
	.long	.LASF845
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF846
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF847
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF848
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF849
	.byte	0x5
	.uleb128 0x91
	.long	.LASF850
	.byte	0x5
	.uleb128 0x92
	.long	.LASF851
	.byte	0x5
	.uleb128 0x93
	.long	.LASF852
	.byte	0x5
	.uleb128 0x94
	.long	.LASF853
	.byte	0x5
	.uleb128 0x98
	.long	.LASF854
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF855
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF856
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF857
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF858
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF859
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF860
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF861
	.byte	0x5
	.uleb128 0xad
	.long	.LASF862
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF863
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF864
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF865
	.byte	0x5
	.uleb128 0xba
	.long	.LASF866
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF867
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF868
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF869
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF870
	.byte	0x5
	.uleb128 0xca
	.long	.LASF871
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF872
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF873
	.byte	0x5
	.uleb128 0xde
	.long	.LASF874
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF875
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF876
	.byte	0x5
	.uleb128 0xef
	.long	.LASF877
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF878
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF879
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF880
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF881
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF882
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF883
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF884
	.byte	0x5
	.uleb128 0x102
	.long	.LASF885
	.byte	0x5
	.uleb128 0x103
	.long	.LASF886
	.byte	0x5
	.uleb128 0x104
	.long	.LASF887
	.byte	0x5
	.uleb128 0x106
	.long	.LASF888
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF889
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF890
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.31.3fa7b8f6daaa31edd1696c08c77f2a73,comdat
.Ldebug_macro50:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF892
	.byte	0x5
	.uleb128 0x20
	.long	.LASF893
	.byte	0x6
	.uleb128 0x22
	.long	.LASF536
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF894
	.byte	0x5
	.uleb128 0x30
	.long	.LASF895
	.byte	0x5
	.uleb128 0x31
	.long	.LASF896
	.byte	0x5
	.uleb128 0x34
	.long	.LASF897
	.byte	0x5
	.uleb128 0x36
	.long	.LASF898
	.byte	0x5
	.uleb128 0x69
	.long	.LASF899
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF900
	.byte	0x5
	.uleb128 0x72
	.long	.LASF901
	.byte	0x5
	.uleb128 0x75
	.long	.LASF902
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdmoh.h.11.09b959a70a5e4222e0a0daab4a040273,comdat
.Ldebug_macro51:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.long	.LASF903
	.byte	0x5
	.uleb128 0x10
	.long	.LASF904
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF905
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF906
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stderr.h.2.870fb11e7df62fbc2a39f8690f2ff656,comdat
.Ldebug_macro52:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF907
	.byte	0x5
	.uleb128 0x5
	.long	.LASF908
	.byte	0x5
	.uleb128 0x6
	.long	.LASF909
	.byte	0x5
	.uleb128 0x7
	.long	.LASF910
	.byte	0x5
	.uleb128 0xb
	.long	.LASF911
	.byte	0x5
	.uleb128 0xf
	.long	.LASF912
	.byte	0x5
	.uleb128 0x13
	.long	.LASF913
	.byte	0x5
	.uleb128 0x15
	.long	.LASF914
	.byte	0x5
	.uleb128 0x19
	.long	.LASF915
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF916
	.byte	0x5
	.uleb128 0x21
	.long	.LASF917
	.byte	0x5
	.uleb128 0x25
	.long	.LASF918
	.byte	0x5
	.uleb128 0x29
	.long	.LASF919
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.bignum.h.79.e430ee698f88e68b59112b14f9d42a60,comdat
.Ldebug_macro53:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF920
	.byte	0x5
	.uleb128 0x50
	.long	.LASF921
	.byte	0x5
	.uleb128 0x51
	.long	.LASF922
	.byte	0x5
	.uleb128 0x53
	.long	.LASF923
	.byte	0x5
	.uleb128 0x54
	.long	.LASF924
	.byte	0x5
	.uleb128 0x56
	.long	.LASF925
	.byte	0x5
	.uleb128 0x57
	.long	.LASF926
	.byte	0x5
	.uleb128 0x58
	.long	.LASF927
	.byte	0x5
	.uleb128 0x59
	.long	.LASF928
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF929
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF930
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF931
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF932
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF933
	.byte	0x5
	.uleb128 0x60
	.long	.LASF934
	.byte	0x5
	.uleb128 0x65
	.long	.LASF935
	.byte	0x5
	.uleb128 0x67
	.long	.LASF936
	.byte	0x5
	.uleb128 0x68
	.long	.LASF937
	.byte	0x5
	.uleb128 0x69
	.long	.LASF938
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF939
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF940
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1003:
	.string	"biguint_add"
.LASF614:
	.string	"_IOFBF 0"
.LASF554:
	.string	"__STD_TYPE typedef"
.LASF1031:
	.string	"carry"
.LASF1019:
	.string	"biguint_xor"
.LASF473:
	.string	"__attribute_copy__"
.LASF231:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF292:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF691:
	.string	"__HAVE_DISTINCT_FLOAT128 1"
.LASF54:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF305:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF109:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF699:
	.string	"__HAVE_FLOAT64 1"
.LASF393:
	.string	"__USE_ISOC11 1"
.LASF234:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF630:
	.string	"stdin stdin"
.LASF226:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF837:
	.string	"INT64_MAX (__INT64_C(9223372036854775807))"
.LASF763:
	.string	"le16toh(x) __uint16_identity (x)"
.LASF711:
	.string	"__f64(x) x ##f64"
.LASF94:
	.string	"__SIZE_WIDTH__ 64"
.LASF291:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF22:
	.string	"__LP64__ 1"
.LASF947:
	.string	"BIGUINT_UI5RSH(big,len) BIGUINT_UI4RSH(big, 1, len) | BIGUINT_UINT64RSH((big)->ui0, len, 320L)"
.LASF497:
	.string	"__stub_sigreturn "
.LASF374:
	.string	"__USE_XOPEN2K8XSI"
.LASF619:
	.string	"SEEK_SET 0"
.LASF219:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF461:
	.string	"__always_inline __inline __attribute__ ((__always_inline__))"
.LASF766:
	.string	"be32toh(x) __bswap_32 (x)"
.LASF567:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF385:
	.string	"__GLIBC_USE_DEPRECATED_SCANF"
.LASF737:
	.string	"__clockid_t_defined 1"
.LASF379:
	.string	"__USE_ATFILE"
.LASF440:
	.string	"__flexarr []"
.LASF188:
	.string	"__DECIMAL_DIG__ 21"
.LASF882:
	.string	"INT16_C(c) c"
.LASF414:
	.string	"__GNU_LIBRARY__"
.LASF140:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF172:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF449:
	.string	"__attribute_pure__ __attribute__ ((__pure__))"
.LASF276:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF137:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF35:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF944:
	.string	"BIGUINT_UI2RSH(big,ui,len) BIGUINT_UI1RSH(big, (ui)+1, len) | BIGUINT_UINT64RSH((big)->ui64[ui], len, 128L)"
.LASF282:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF904:
	.string	"stdnull \"/dev/null\""
.LASF164:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF48:
	.string	"__INT8_TYPE__ signed char"
.LASF937:
	.string	"BIGCOMPLEX_ZEROINIT() { { biguint0, biguint1 } }"
.LASF928:
	.string	"BIGUINT_SET(ui0,ui1,ui2,ui3,ui4,ui5) (biguint_t){ { ui0, ui1, ui2, ui3, ui4, ui5 } }"
.LASF688:
	.string	"WIFCONTINUED(status) __WIFCONTINUED (status)"
.LASF384:
	.string	"__GLIBC_USE_DEPRECATED_GETS"
.LASF204:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF794:
	.string	"FD_ZERO(fdsetp) __FD_ZERO (fdsetp)"
.LASF659:
	.string	"WSTOPPED 2"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF39:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF124:
	.string	"__UINT8_C(c) c"
.LASF49:
	.string	"__INT16_TYPE__ short int"
.LASF343:
	.string	"linux 1"
.LASF905:
	.string	"true 1"
.LASF211:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF672:
	.string	"__WSTOPSIG(status) __WEXITSTATUS(status)"
.LASF851:
	.string	"UINT_LEAST16_MAX (65535)"
.LASF1006:
	.string	"biguint_lt"
.LASF452:
	.string	"__attribute_noinline__ __attribute__ ((__noinline__))"
.LASF297:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF924:
	.string	"BIGUINT_ZEROINIT { { 0UL, 0UL, 0UL, 0UL, 0UL, 0UL } }"
.LASF786:
	.string	"__FD_ELT(d) ((d) / __NFDBITS)"
.LASF995:
	.string	"biguint_putsephex64"
.LASF597:
	.string	"__STD_TYPE"
.LASF783:
	.string	"__suseconds_t_defined "
.LASF615:
	.string	"_IOLBF 1"
.LASF85:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF779:
	.string	"____sigset_t_defined "
.LASF428:
	.string	"__P(args) args"
.LASF741:
	.string	"__BIT_TYPES_DEFINED__ 1"
.LASF820:
	.string	"_ALLOCA_H 1"
.LASF515:
	.string	"__SIZE_T__ "
.LASF25:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF535:
	.string	"__need___va_list "
.LASF106:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF949:
	.string	"BIGUINT_UINT64LSH(bigi,len,bits) (!(((len) < (bits)) || ((len) >= (bits+64L)))*(bigi << (len-bits)) + !(((len) <= (bits-64L)) || ((len) >= (bits)))*(bigi >> (bits-len)))"
.LASF1029:
	.string	"/ldev/cdev/calculator"
.LASF734:
	.string	"__daddr_t_defined "
.LASF160:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF889:
	.string	"INTMAX_C(c) c ## L"
.LASF655:
	.string	"__need_wchar_t"
.LASF200:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF182:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF713:
	.string	"__f64x(x) x ##f64x"
.LASF789:
	.string	"FD_SETSIZE __FD_SETSIZE"
.LASF690:
	.string	"__HAVE_FLOAT128 1"
.LASF698:
	.string	"__HAVE_FLOAT32 1"
.LASF846:
	.string	"INT_LEAST8_MAX (127)"
.LASF886:
	.string	"UINT16_C(c) c"
.LASF216:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF530:
	.string	"__size_t "
.LASF830:
	.string	"INT8_MIN (-128)"
.LASF138:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF203:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF325:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF551:
	.string	"__ULONG32_TYPE unsigned int"
.LASF418:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF861:
	.string	"INT_FAST64_MAX (__INT64_C(9223372036854775807))"
.LASF978:
	.string	"double"
.LASF744:
	.string	"__LITTLE_ENDIAN 1234"
.LASF442:
	.string	"__REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))"
.LASF519:
	.string	"_T_SIZE "
.LASF170:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF34:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF839:
	.string	"UINT16_MAX (65535)"
.LASF290:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF860:
	.string	"INT_FAST32_MAX (9223372036854775807L)"
.LASF752:
	.string	"BIG_ENDIAN __BIG_ENDIAN"
.LASF1023:
	.string	"biguint_bar"
.LASF856:
	.string	"INT_FAST32_MIN (-9223372036854775807L-1)"
.LASF242:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF377:
	.string	"__USE_FILE_OFFSET64"
.LASF215:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF817:
	.string	"__PTHREAD_RWLOCK_ELISION_EXTRA 0, { 0, 0, 0, 0, 0, 0, 0 }"
.LASF364:
	.string	"__USE_POSIX"
.LASF278:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF532:
	.string	"NULL"
.LASF595:
	.string	"_BITS_TIME64_H 1"
.LASF263:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF877:
	.string	"WCHAR_MIN __WCHAR_MIN"
.LASF492:
	.string	"__stub_fchflags "
.LASF998:
	.string	"big2"
.LASF813:
	.string	"_THREAD_MUTEX_INTERNAL_H 1"
.LASF43:
	.string	"__INTMAX_TYPE__ long int"
.LASF576:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF702:
	.string	"__HAVE_DISTINCT_FLOAT16 __HAVE_FLOAT16"
.LASF687:
	.string	"WIFSTOPPED(status) __WIFSTOPPED (status)"
.LASF236:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF836:
	.string	"INT32_MAX (2147483647)"
.LASF190:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF387:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF643:
	.string	"_T_WCHAR "
.LASF321:
	.string	"__x86_64 1"
.LASF139:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF373:
	.string	"__USE_XOPEN2K8"
.LASF256:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF460:
	.string	"__always_inline"
.LASF517:
	.string	"_SYS_SIZE_T_H "
.LASF743:
	.string	"_BITS_ENDIAN_H 1"
.LASF60:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF383:
	.string	"__GLIBC_USE_ISOC2X"
.LASF803:
	.string	"__SIZEOF_PTHREAD_ATTR_T 56"
.LASF581:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF416:
	.string	"__GLIBC__ 2"
.LASF902:
	.string	"__va_list__ "
.LASF705:
	.string	"__HAVE_DISTINCT_FLOAT32X 0"
.LASF967:
	.string	"long int"
.LASF539:
	.string	"__TIMESIZE __WORDSIZE"
.LASF510:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT"
.LASF757:
	.string	"__bswap_constant_32(x) ((((x) & 0xff000000u) >> 24) | (((x) & 0x00ff0000u) >> 8) | (((x) & 0x0000ff00u) << 8) | (((x) & 0x000000ffu) << 24))"
.LASF778:
	.string	"__sigset_t_defined 1"
.LASF249:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF257:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF388:
	.string	"__glibc_clang_prereq(maj,min) 0"
.LASF406:
	.string	"__USE_XOPEN2K8 1"
.LASF584:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF773:
	.string	"__FD_ZERO_STOS \"stosq\""
.LASF288:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF514:
	.string	"__size_t__ "
.LASF230:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF598:
	.string	"_____fpos_t_defined 1"
.LASF71:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF344:
	.string	"__unix 1"
.LASF56:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1021:
	.string	"biguint_or"
.LASF301:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF594:
	.string	"__FD_SETSIZE 1024"
.LASF270:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF948:
	.ascii	"BIGUINT_RSH(rsh,l"
	.string	"en,big) (rsh)->ui0 = BIGUINT_UI0RSH(big, 0, len); (rsh)->ui1 = BIGUINT_UI1RSH(big, 0, len); (rsh)->ui2 = BIGUINT_UI2RSH(big, 0, len); (rsh)->ui3 = BIGUINT_UI3RSH(big, 0, len); (rsh)->ui4 = BIGUINT_UI4RSH(big, 0, len); (rsh)->ui5 = BIGUINT_UI5RSH(big, len);"
.LASF746:
	.string	"__PDP_ENDIAN 3412"
.LASF657:
	.string	"WNOHANG 1"
.LASF202:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF629:
	.string	"FOPEN_MAX 16"
.LASF70:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF867:
	.string	"INTPTR_MAX (9223372036854775807L)"
.LASF575:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF574:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF246:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF458:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF526:
	.string	"_SIZE_T_DECLARED "
.LASF430:
	.string	"__CONCAT(x,y) x ## y"
.LASF675:
	.string	"__WIFSTOPPED(status) (((status) & 0xff) == 0x7f)"
.LASF334:
	.string	"__FXSR__ 1"
.LASF142:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF1014:
	.string	"length"
.LASF150:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF156:
	.string	"__FLT_MAX_EXP__ 128"
.LASF351:
	.string	"__STDC_IEC_559__ 1"
.LASF24:
	.string	"__SIZEOF_LONG__ 8"
.LASF620:
	.string	"SEEK_CUR 1"
.LASF874:
	.string	"SIG_ATOMIC_MIN (-2147483647-1)"
.LASF936:
	.string	"BIGCOMPLEX_INIT(biguint0,biguint1) { { biguint0, biguint1 } }"
.LASF1000:
	.string	"biguint_sub"
.LASF28:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF119:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF187:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF709:
	.string	"__HAVE_FLOATN_NOT_TYPEDEF 1"
.LASF357:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION "
.LASF350:
	.string	"_STDC_PREDEF_H 1"
.LASF909:
	.string	"IFNOTDEBUG(args...) "
.LASF18:
	.string	"__PIE__ 2"
.LASF224:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF284:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF443:
	.string	"__REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW"
.LASF501:
	.string	"__GLIBC_USE_LIB_EXT2 0"
.LASF722:
	.string	"EXIT_SUCCESS 0"
.LASF155:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF221:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF413:
	.string	"__GLIBC_USE_DEPRECATED_SCANF 0"
.LASF158:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF919:
	.string	"LOG_FATAL(exitstatus,format,args...) fprintf(stderr, \"\\x1b[1;7;41mFATAL ERROR in %s) %s)%u: \", __FILE__, __FUNCTION__, __LINE__); fprintf(stderr, format, ##args); fprintf(stderr, \" \\x1b[0m\\n\"); exit(exitstatus);"
.LASF962:
	.string	"signed char"
.LASF973:
	.string	"uint8_t"
.LASF939:
	.string	"BIGCOMPLEX_SET(biguint0,biguint1) (bigcomplex_t){ { biguint0, biguint1 } }"
.LASF755:
	.string	"_BITS_BYTESWAP_H 1"
.LASF541:
	.string	"__U16_TYPE unsigned short int"
.LASF209:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF432:
	.string	"__ptr_t void *"
.LASF296:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF625:
	.string	"TMP_MAX 238328"
.LASF166:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF589:
	.string	"__CPU_MASK_TYPE __SYSCALL_ULONG_TYPE"
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF304:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF93:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF125:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF1001:
	.string	"big1"
.LASF1:
	.string	"__STDC_VERSION__ 201710L"
.LASF572:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF254:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF218:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF725:
	.string	"__u_char_defined "
.LASF134:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF525:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF527:
	.string	"___int_size_t_h "
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF394:
	.string	"__USE_ISOC99 1"
.LASF208:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF157:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF429:
	.string	"__PMT(args) args"
.LASF348:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF289:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF852:
	.string	"UINT_LEAST32_MAX (4294967295U)"
.LASF260:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF10:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF726:
	.string	"__ino_t_defined "
.LASF785:
	.string	"__NFDBITS (8 * (int) sizeof (__fd_mask))"
.LASF980:
	.string	"ui00"
.LASF981:
	.string	"ui01"
.LASF805:
	.string	"__SIZEOF_PTHREAD_BARRIER_T 32"
.LASF545:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF787:
	.string	"__FD_MASK(d) ((__fd_mask) (1UL << ((d) % __NFDBITS)))"
.LASF128:
	.string	"__UINT32_C(c) c ## U"
.LASF1007:
	.string	"biguint_gteq"
.LASF732:
	.string	"__pid_t_defined "
.LASF612:
	.string	"__off_t_defined "
.LASF96:
	.string	"__INTMAX_C(c) c ## L"
.LASF186:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF831:
	.string	"INT16_MIN (-32767-1)"
.LASF26:
	.string	"__SIZEOF_SHORT__ 2"
.LASF793:
	.string	"FD_ISSET(fd,fdsetp) __FD_ISSET (fd, fdsetp)"
.LASF121:
	.string	"__INT64_C(c) c ## L"
.LASF468:
	.string	"__restrict_arr __restrict"
.LASF490:
	.string	"__stub___compat_bdflush "
.LASF728:
	.string	"__gid_t_defined "
.LASF523:
	.string	"_SIZE_T_DEFINED_ "
.LASF437:
	.string	"__warndecl(name,msg) extern void name (void) __attribute__((__warning__ (msg)))"
.LASF237:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF412:
	.string	"__GLIBC_USE_DEPRECATED_GETS 0"
.LASF314:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF847:
	.string	"INT_LEAST16_MAX (32767)"
.LASF818:
	.string	"__PTHREAD_RWLOCK_INITIALIZER(__flags) 0, 0, 0, 0, 0, 0, 0, 0, __PTHREAD_RWLOCK_ELISION_EXTRA, 0, __flags"
.LASF450:
	.string	"__attribute_const__ __attribute__ ((__const__))"
.LASF199:
	.string	"__FLT32_DIG__ 6"
.LASF637:
	.string	"__STDIO_INLINE"
.LASF298:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF695:
	.string	"__CFLOAT128 _Complex _Float128"
.LASF638:
	.string	"__need_wchar_t "
.LASF67:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF503:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT 0"
.LASF982:
	.string	"ui10"
.LASF983:
	.string	"ui11"
.LASF674:
	.string	"__WIFSIGNALED(status) (((signed char) (((status) & 0x7f) + 1) >> 1) > 0)"
.LASF512:
	.string	"__need_size_t "
.LASF544:
	.string	"__SLONGWORD_TYPE long int"
.LASF566:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF483:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF32:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF465:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF396:
	.string	"__USE_POSIX_IMPLICITLY 1"
.LASF322:
	.string	"__x86_64__ 1"
.LASF891:
	.string	"_GCC_WRAP_STDINT_H "
.LASF371:
	.string	"__USE_XOPEN2K"
.LASF781:
	.string	"__timeval_defined 1"
.LASF596:
	.string	"__TIME64_T_TYPE __TIME_T_TYPE"
.LASF663:
	.string	"__WNOTHREAD 0x20000000"
.LASF372:
	.string	"__USE_XOPEN2KXSI"
.LASF107:
	.string	"__UINT8_MAX__ 0xff"
.LASF162:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF261:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF719:
	.string	"__lldiv_t_defined 1"
.LASF463:
	.string	"__extern_inline extern __inline __attribute__ ((__gnu_inline__))"
.LASF506:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT"
.LASF179:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF814:
	.string	"__PTHREAD_MUTEX_HAVE_PREV 1"
.LASF403:
	.string	"__USE_POSIX199309 1"
.LASF338:
	.string	"__SEG_FS 1"
.LASF858:
	.string	"INT_FAST8_MAX (127)"
.LASF997:
	.string	"prod"
.LASF74:
	.string	"__GXX_ABI_VERSION 1014"
.LASF984:
	.string	"ui20"
.LASF985:
	.string	"ui21"
.LASF114:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF232:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF887:
	.string	"UINT32_C(c) c ## U"
.LASF686:
	.string	"WIFSIGNALED(status) __WIFSIGNALED (status)"
.LASF866:
	.string	"INTPTR_MIN (-9223372036854775807L-1)"
.LASF366:
	.string	"__USE_POSIX199309"
.LASF700:
	.string	"__HAVE_FLOAT32X 1"
.LASF353:
	.string	"__STDC_ISO_10646__ 201706L"
.LASF715:
	.string	"__CFLOAT64 _Complex _Float64"
.LASF714:
	.string	"__CFLOAT32 _Complex _Float32"
.LASF632:
	.string	"stderr stderr"
.LASF680:
	.string	"__W_CONTINUED 0xffff"
.LASF602:
	.string	"__FILE_defined 1"
.LASF605:
	.string	"__putc_unlocked_body(_ch,_fp) (__glibc_unlikely ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end) ? __overflow (_fp, (unsigned char) (_ch)) : (unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))"
.LASF489:
	.string	"__USE_EXTERN_INLINES 1"
.LASF417:
	.string	"__GLIBC_MINOR__ 31"
.LASF608:
	.string	"_IO_ERR_SEEN 0x0020"
.LASF306:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF370:
	.string	"__USE_UNIX98"
.LASF64:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF386:
	.string	"__KERNEL_STRICT_NAMES "
.LASF788:
	.string	"__FDS_BITS(set) ((set)->__fds_bits)"
.LASF1020:
	.string	"biguint_and"
.LASF560:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF610:
	.string	"_IO_USER_LOCK 0x8000"
.LASF122:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF310:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF347:
	.string	"__ELF__ 1"
.LASF986:
	.string	"ui30"
.LASF987:
	.string	"ui31"
.LASF993:
	.string	"ui32"
.LASF467:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF918:
	.string	"LOG_ERROR(format,args...) fprintf(stderr, \"\\x1b[35mERROR in %s) %s)%u: \", __FILE__, __FUNCTION__, __LINE__); fprintf(stderr, format, ##args); fprintf(stderr, \"\\x1b[0m\\n\");"
.LASF311:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF212:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF626:
	.string	"FILENAME_MAX 4096"
.LASF808:
	.string	"__SIZEOF_PTHREAD_CONDATTR_T 4"
.LASF196:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF496:
	.string	"__stub_setlogin "
.LASF277:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF591:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF736:
	.string	"__clock_t_defined 1"
.LASF248:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF509:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X 0"
.LASF537:
	.string	"__GNUC_VA_LIST "
.LASF1032:
	.string	"printf"
.LASF964:
	.string	"__uint8_t"
.LASF101:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF123:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF646:
	.string	"_BSD_WCHAR_T_ "
.LASF592:
	.string	"__RLIM_T_MATCHES_RLIM64_T 1"
.LASF775:
	.string	"__FD_SET(d,set) ((void) (__FDS_BITS (set)[__FD_ELT (d)] |= __FD_MASK (d)))"
.LASF720:
	.string	"RAND_MAX 2147483647"
.LASF271:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF623:
	.string	"_BITS_STDIO_LIM_H 1"
.LASF863:
	.string	"UINT_FAST16_MAX (18446744073709551615UL)"
.LASF174:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF504:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X"
.LASF476:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF624:
	.string	"L_tmpnam 20"
.LASF599:
	.string	"____mbstate_t_defined 1"
.LASF926:
	.string	"BIGUINT_ZERO (biguint_t){ { 0UL, 0UL, 0UL, 0UL, 0UL, 0UL } }"
.LASF116:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF940:
	.string	"BIGQUATERNION_ZERO (bigquaternion_t){ BIGUINT_ZEROINIT, BIGUINT_ZEROINIT, BIGUINT_ZEROINIT, BIGUINT_ZEROINIT }"
.LASF988:
	.string	"ui40"
.LASF989:
	.string	"ui41"
.LASF864:
	.string	"UINT_FAST32_MAX (18446744073709551615UL)"
.LASF748:
	.string	"__BYTE_ORDER __LITTLE_ENDIAN"
.LASF764:
	.string	"htobe32(x) __bswap_32 (x)"
.LASF286:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF505:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C2X 0"
.LASF533:
	.string	"NULL ((void *)0)"
.LASF935:
	.string	"BIGREAL_SET(ui0,ui1,ui2,ui3,ui4,ui5) (bigreal_t){ { ui0, ui1, ui2, ui3, ui4, ui5 } }"
.LASF942:
	.string	"BIGUINT_UI0RSH(big,ui,len) BIGUINT_UINT64RSH((big)->ui64[ui], len, 0L)"
.LASF534:
	.string	"__need_NULL"
.LASF340:
	.string	"__gnu_linux__ 1"
.LASF404:
	.string	"__USE_POSIX199506 1"
.LASF59:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF466:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF407:
	.string	"_ATFILE_SOURCE"
.LASF550:
	.string	"__SLONG32_TYPE int"
.LASF111:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF571:
	.string	"__BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF703:
	.string	"__HAVE_DISTINCT_FLOAT32 0"
.LASF11:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF358:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION"
.LASF360:
	.string	"__USE_ISOC11"
.LASF477:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF784:
	.string	"__NFDBITS"
.LASF827:
	.string	"__WCHAR_MIN __WCHAR_MIN__"
.LASF247:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF828:
	.string	"_BITS_STDINT_UINTN_H 1"
.LASF790:
	.string	"NFDBITS __NFDBITS"
.LASF502:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT"
.LASF990:
	.string	"ui50"
.LASF991:
	.string	"ui51"
.LASF14:
	.string	"__ATOMIC_CONSUME 1"
.LASF337:
	.string	"__MMX_WITH_SSE__ 1"
.LASF165:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF658:
	.string	"WUNTRACED 2"
.LASF582:
	.string	"__DADDR_T_TYPE __S32_TYPE"
.LASF968:
	.string	"__uint64_t"
.LASF848:
	.string	"INT_LEAST32_MAX (2147483647)"
.LASF103:
	.string	"__INT8_MAX__ 0x7f"
.LASF870:
	.string	"INTMAX_MAX (__INT64_C(9223372036854775807))"
.LASF573:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF313:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF494:
	.string	"__stub_lchmod "
.LASF538:
	.string	"_BITS_TYPES_H 1"
.LASF838:
	.string	"UINT8_MAX (255)"
.LASF806:
	.string	"__SIZEOF_PTHREAD_MUTEXATTR_T 4"
.LASF875:
	.string	"SIG_ATOMIC_MAX (2147483647)"
.LASF422:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF147:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF17:
	.string	"__pie__ 2"
.LASF53:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF397:
	.string	"_POSIX_SOURCE"
.LASF65:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF965:
	.string	"__uint32_t"
.LASF395:
	.string	"__USE_ISOC95 1"
.LASF487:
	.string	"__glibc_macro_warning(message) __glibc_macro_warning1 (GCC warning message)"
.LASF193:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF275:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF932:
	.string	"BIGINT_MAX (bigint_t){ { INT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX } }"
.LASF518:
	.string	"_T_SIZE_ "
.LASF149:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF770:
	.string	"be64toh(x) __bswap_64 (x)"
.LASF86:
	.string	"__SCHAR_WIDTH__ 8"
.LASF441:
	.string	"__glibc_c99_flexarr_available 1"
.LASF769:
	.string	"htole64(x) __uint64_identity (x)"
.LASF329:
	.string	"__k8__ 1"
.LASF21:
	.string	"_LP64 1"
.LASF132:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF47:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF423:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF992:
	.string	"ui64"
.LASF513:
	.string	"__need_NULL "
.LASF359:
	.string	"_FEATURES_H 1"
.LASF391:
	.string	"_DEFAULT_SOURCE 1"
.LASF907:
	.string	"STDERR_H_INCLUDED "
.LASF198:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF660:
	.string	"WEXITED 4"
.LASF479:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF375:
	.string	"__USE_LARGEFILE"
.LASF451:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF927:
	.string	"BIGUINT_MAX (biguint_t){ { UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX } }"
.LASF303:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF171:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF555:
	.string	"_BITS_TYPESIZES_H 1"
.LASF12:
	.string	"__ATOMIC_RELEASE 3"
.LASF255:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF152:
	.string	"__FLT_MANT_DIG__ 24"
.LASF636:
	.ascii	"fwrite_unlocked(ptr,size,n,stream) (__extension__ ((__builti"
	.ascii	"n_constant_p (size) && __builtin_constant_p (n) && (size_t) "
	.ascii	"(size) * (size_t) (n) <= 8 && (size_t) (size) != 0) ? ({ con"
	.ascii	"st char *__ptr = (const char *) (ptr); FILE *__stream = (str"
	.ascii	"eam); size_t __cnt; for (__cnt = (size_t) (size) * (size_t) "
	.ascii	"(n); __cnt > 0; --__cnt) if (putc_unlocked (*__ptr++, __stre"
	.ascii	"am) == EOF) break; ((size_t) (size) * (size_t) (n) -"
	.string	" __cnt) / (size_t) (size); }) : (((__builtin_constant_p (size) && (size_t) (size) == 0) || (__builtin_constant_p (n) && (size_t) (n) == 0)) ? ((void) (ptr), (void) (stream), (void) (size), (void) (n), (size_t) 0) : fwrite_unlocked (ptr, size, n, stream))))"
.LASF768:
	.string	"htobe64(x) __bswap_64 (x)"
.LASF892:
	.string	"_STDARG_H "
.LASF19:
	.string	"__OPTIMIZE__ 1"
.LASF954:
	.string	"BIGUINT_UI1LSH(big,ui,len) BIGUINT_UI2LSH(big, (ui)-1, len) | BIGUINT_UINT64LSH((big)->ui64[ui], len, 256L)"
.LASF825:
	.string	"_BITS_WCHAR_H 1"
.LASF716:
	.string	"__CFLOAT32X _Complex _Float32x"
.LASF751:
	.string	"LITTLE_ENDIAN __LITTLE_ENDIAN"
.LASF95:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF222:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF816:
	.string	"_RWLOCK_INTERNAL_H "
.LASF1011:
	.string	"biguint_rev"
.LASF97:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF500:
	.string	"__GLIBC_USE_LIB_EXT2"
.LASF952:
	.string	"BIGUINT_UI3LSH(big,ui,len) BIGUINT_UI4LSH(big, (ui)-1, len) | BIGUINT_UINT64LSH((big)->ui64[ui], len, 128L)"
.LASF352:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF332:
	.string	"__SSE__ 1"
.LASF99:
	.string	"__INTMAX_WIDTH__ 64"
.LASF921:
	.string	"INT_MAX 0x7FFFFFFFFFFFFFFFUL"
.LASF189:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF5:
	.string	"__GNUC__ 10"
.LASF300:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF590:
	.string	"__OFF_T_MATCHES_OFF64_T 1"
.LASF240:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF685:
	.string	"WIFEXITED(status) __WIFEXITED (status)"
.LASF772:
	.string	"_SYS_SELECT_H 1"
.LASF642:
	.string	"_T_WCHAR_ "
.LASF117:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF536:
	.string	"__need___va_list"
.LASF481:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF365:
	.string	"__USE_POSIX2"
.LASF810:
	.string	"__SIZEOF_PTHREAD_BARRIERATTR_T 4"
.LASF308:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF531:
	.string	"__need_size_t"
.LASF917:
	.string	"LOG_WARNINIG(format,args...) fprintf(stderr, \"\\x1b[33mWARNING in %s) %s)%u: \", __FILE__, __FUNCTION__, __LINE__); fprintf(stderr, format, ##args); fprintf(stderr, \"\\x1b[0m\\n\");"
.LASF521:
	.string	"_SIZE_T_ "
.LASF151:
	.string	"__FLT_RADIX__ 2"
.LASF735:
	.string	"__key_t_defined "
.LASF633:
	.string	"_BITS_STDIO_H 1"
.LASF776:
	.string	"__FD_CLR(d,set) ((void) (__FDS_BITS (set)[__FD_ELT (d)] &= ~__FD_MASK (d)))"
.LASF664:
	.string	"__WALL 0x40000000"
.LASF908:
	.string	"IFDEBUG(args...) args"
.LASF197:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF194:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF320:
	.string	"__amd64__ 1"
.LASF90:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF16:
	.string	"__PIC__ 2"
.LASF824:
	.string	"_STDINT_H 1"
.LASF708:
	.string	"__HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113)"
.LASF133:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF996:
	.string	"biguint_puthex"
.LASF309:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF217:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF644:
	.string	"__WCHAR_T "
.LASF63:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF135:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF88:
	.string	"__INT_WIDTH__ 32"
.LASF426:
	.string	"__NTHNL(fct) __attribute__ ((__nothrow__)) fct"
.LASF44:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF92:
	.string	"__WINT_WIDTH__ 32"
.LASF31:
	.string	"__CHAR_BIT__ 8"
.LASF455:
	.string	"__attribute_format_arg__(x) __attribute__ ((__format_arg__ (x)))"
.LASF316:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF131:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF472:
	.string	"__attribute_nonstring__ __attribute__ ((__nonstring__))"
.LASF81:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF420:
	.string	"__PMT"
.LASF901:
	.string	"_VA_LIST_T_H "
.LASF767:
	.string	"le32toh(x) __uint32_identity (x)"
.LASF762:
	.string	"be16toh(x) __bswap_16 (x)"
.LASF141:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF1028:
	.string	"src/bignum.c"
.LASF577:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF857:
	.string	"INT_FAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF408:
	.string	"_ATFILE_SOURCE 1"
.LASF546:
	.string	"__SQUAD_TYPE long int"
.LASF627:
	.string	"L_ctermid 9"
.LASF782:
	.string	"_STRUCT_TIMESPEC 1"
.LASF36:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF118:
	.string	"__INT32_C(c) c"
.LASF251:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF880:
	.string	"WINT_MAX (4294967295u)"
.LASF41:
	.string	"__WCHAR_TYPE__ int"
.LASF73:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF381:
	.string	"__USE_FORTIFY_LEVEL"
.LASF618:
	.string	"EOF (-1)"
.LASF295:
	.string	"__USER_LABEL_PREFIX__ "
.LASF42:
	.string	"__WINT_TYPE__ unsigned int"
.LASF269:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF328:
	.string	"__k8 1"
.LASF634:
	.string	"__STDIO_INLINE __extern_inline"
.LASF486:
	.string	"__glibc_macro_warning1(message) _Pragma (#message)"
.LASF1030:
	.string	"biguint384_t"
.LASF354:
	.string	"BIGNUM_H_INCLUDED "
.LASF677:
	.string	"__WCOREDUMP(status) ((status) & __WCOREFLAG)"
.LASF62:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF959:
	.string	"unsigned int"
.LASF826:
	.string	"__WCHAR_MAX __WCHAR_MAX__"
.LASF66:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF930:
	.string	"BIGINT_MININIT { { INT_MIN, 0UL, 0UL, 0UL, 0UL, 0UL } }"
.LASF154:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF580:
	.string	"__USECONDS_T_TYPE __U32_TYPE"
.LASF471:
	.string	"__glibc_has_attribute(attr) __has_attribute (attr)"
.LASF931:
	.string	"BIGINT_ZERO (bigint_t){ { 0UL, 0UL, 0UL, 0UL, 0UL, 0UL } }"
.LASF611:
	.string	"_VA_LIST_DEFINED "
.LASF378:
	.string	"__USE_MISC"
.LASF250:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF225:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF153:
	.string	"__FLT_DIG__ 6"
.LASF653:
	.string	"_WCHAR_T_DECLARED "
.LASF8:
	.string	"__VERSION__ \"10.2.1 20210110\""
.LASF405:
	.string	"__USE_XOPEN2K 1"
.LASF148:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF583:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF159:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF75:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF238:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF543:
	.string	"__U32_TYPE unsigned int"
.LASF89:
	.string	"__LONG_WIDTH__ 64"
.LASF448:
	.string	"__attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))"
.LASF233:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF146:
	.string	"__GCC_IEC_559 2"
.LASF821:
	.string	"alloca"
.LASF98:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF470:
	.string	"__glibc_likely(cond) __builtin_expect ((cond), 1)"
.LASF493:
	.string	"__stub_gtty "
.LASF640:
	.string	"__WCHAR_T__ "
.LASF849:
	.string	"INT_LEAST64_MAX (__INT64_C(9223372036854775807))"
.LASF318:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF842:
	.string	"INT_LEAST8_MIN (-128)"
.LASF37:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF52:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF557:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF459:
	.string	"__wur "
.LASF771:
	.string	"le64toh(x) __uint64_identity (x)"
.LASF819:
	.string	"__have_pthread_attr_t 1"
.LASF733:
	.string	"__id_t_defined "
.LASF87:
	.string	"__SHRT_WIDTH__ 16"
.LASF287:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF881:
	.string	"INT8_C(c) c"
.LASF730:
	.string	"__nlink_t_defined "
.LASF549:
	.string	"__UWORD_TYPE unsigned long int"
.LASF330:
	.string	"__code_model_small__ 1"
.LASF802:
	.string	"__SIZEOF_PTHREAD_MUTEX_T 40"
.LASF415:
	.string	"__GNU_LIBRARY__ 6"
.LASF559:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF245:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF662:
	.string	"WNOWAIT 0x01000000"
.LASF302:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF635:
	.ascii	"fread_unlocked(ptr,size,n,stream) (__extension__ ((__builtin"
	.ascii	"_constant_p (size) && __builtin_constant_p (n) && (size_t) ("
	.ascii	"size) * (size_t) (n) <= 8 && (size_t) (size) != 0) ? ({ char"
	.ascii	" *__ptr = (char *) (ptr); FILE *__stream = (stream); size_t "
	.ascii	"__cnt; for (__cnt = (size_t) (size) * (size_t) (n); __cnt > "
	.ascii	"0; --__cnt) { int __c = getc_unlocked (__stream); if (__c =="
	.ascii	" EOF) break; *__ptr++ = __c; } ((size_t) (size) * (size_t) ("
	.ascii	"n) "
	.string	"- __cnt) / (size_t) (size); }) : (((__builtin_constant_p (size) && (size_t) (size) == 0) || (__builtin_constant_p (n) && (size_t) (n) == 0)) ? ((void) (ptr), (void) (stream), (void) (size), (void) (n), (size_t) 0) : fread_unlocked (ptr, size, n, stream))))"
.LASF568:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF671:
	.string	"__WTERMSIG(status) ((status) & 0x7f)"
.LASF424:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF480:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF105:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF670:
	.string	"__WEXITSTATUS(status) (((status) & 0xff00) >> 8)"
.LASF431:
	.string	"__STRING(x) #x"
.LASF1002:
	.string	"biguint_dec"
.LASF960:
	.string	"unsigned char"
.LASF474:
	.string	"__attribute_copy__(arg) __attribute__ ((__copy__ (arg)))"
.LASF707:
	.string	"__HAVE_DISTINCT_FLOAT128X __HAVE_FLOAT128X"
.LASF684:
	.string	"WSTOPSIG(status) __WSTOPSIG (status)"
.LASF777:
	.string	"__FD_ISSET(d,set) ((__FDS_BITS (set)[__FD_ELT (d)] & __FD_MASK (d)) != 0)"
.LASF130:
	.string	"__UINT64_C(c) c ## UL"
.LASF201:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF934:
	.string	"BIGINT_SET(ui0,ui1,ui2,ui3,ui4,ui5) (bigint_t){ { ui0, ui1, ui2, ui3, ui4, ui5 } }"
.LASF641:
	.string	"_WCHAR_T "
.LASF943:
	.string	"BIGUINT_UI1RSH(big,ui,len) BIGUINT_UI0RSH(big, (ui)+1, len) | BIGUINT_UINT64RSH((big)->ui64[ui], len, 64L)"
.LASF701:
	.string	"__HAVE_FLOAT128X 0"
.LASF163:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF273:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF951:
	.string	"BIGUINT_UI4LSH(big,ui,len) BIGUINT_UI5LSH(big, (ui)-1, len) | BIGUINT_UINT64LSH((big)->ui64[ui], len, 64L)"
.LASF68:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF280:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF956:
	.ascii	"BIGUINT_LSH(lsh,l"
	.string	"en,big) (lsh)->ui5 = BIGUINT_UI5LSH(big, 5, len); (lsh)->ui4 = BIGUINT_UI4LSH(big, 5, len); (lsh)->ui3 = BIGUINT_UI3LSH(big, 5, len); (lsh)->ui2 = BIGUINT_UI2LSH(big, 5, len); (lsh)->ui1 = BIGUINT_UI1LSH(big, 5, len); (lsh)->ui0 = BIGUINT_UI0LSH(big, len);"
.LASF920:
	.string	"UINT_MAX 0xFFFFFFFFFFFFFFFFUL"
.LASF495:
	.string	"__stub_revoke "
.LASF969:
	.string	"char"
.LASF425:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF485:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF516:
	.string	"_SIZE_T "
.LASF649:
	.string	"_WCHAR_T_H "
.LASF333:
	.string	"__SSE2__ 1"
.LASF1016:
	.string	"rrot"
.LASF601:
	.string	"____FILE_defined 1"
.LASF79:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF758:
	.ascii	"__bswap_constant_64(x) ((((x) & 0xff00000000000000ull) >> 56"
	.ascii	") | (((x) & 0x00ff000000"
	.string	"000000ull) >> 40) | (((x) & 0x0000ff0000000000ull) >> 24) | (((x) & 0x000000ff00000000ull) >> 8) | (((x) & 0x00000000ff000000ull) << 8) | (((x) & 0x0000000000ff0000ull) << 24) | (((x) & 0x000000000000ff00ull) << 40) | (((x) & 0x00000000000000ffull) << 56))"
.LASF979:
	.string	"long double"
.LASF445:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF841:
	.string	"UINT64_MAX (__UINT64_C(18446744073709551615))"
.LASF812:
	.string	"__ONCE_ALIGNMENT "
.LASF272:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF229:
	.string	"__FLT128_DIG__ 33"
.LASF112:
	.string	"__INT8_C(c) c"
.LASF205:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF961:
	.string	"short unsigned int"
.LASF1022:
	.string	"biguint_neg"
.LASF169:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF520:
	.string	"__SIZE_T "
.LASF742:
	.string	"_ENDIAN_H 1"
.LASF50:
	.string	"__INT32_TYPE__ int"
.LASF1009:
	.string	"biguint_neq"
.LASF587:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF362:
	.string	"__USE_ISOC95"
.LASF872:
	.string	"PTRDIFF_MIN (-9223372036854775807L-1)"
.LASF361:
	.string	"__USE_ISOC99"
.LASF955:
	.string	"BIGUINT_UI0LSH(big,len) BIGUINT_UI1LSH(big, 4, len) | BIGUINT_UINT64LSH((big)->ui5, len, 320L)"
.LASF369:
	.string	"__USE_XOPEN_EXTENDED"
.LASF682:
	.string	"WEXITSTATUS(status) __WEXITSTATUS (status)"
.LASF1025:
	.string	"biguint_set"
.LASF693:
	.string	"__HAVE_FLOAT64X_LONG_DOUBLE 1"
.LASF195:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF312:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF759:
	.string	"_BITS_UINTN_IDENTITY_H 1"
.LASF299:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF252:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF433:
	.string	"__BEGIN_DECLS "
.LASF652:
	.string	"_GCC_WCHAR_T "
.LASF853:
	.string	"UINT_LEAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF356:
	.string	"_STDIO_H 1"
.LASF916:
	.string	"LOG_SUPOSITION(format,args...) fprintf(stdout, \"\\x1b[34mSUPOSITION in %s) %s)%u: \", __FILE__, __FUNCTION__, __LINE__); fprintf(stdout, format, ##args); fprintf(stdout, \"\\x1b[0m\\n\");"
.LASF661:
	.string	"WCONTINUED 8"
.LASF845:
	.string	"INT_LEAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF241:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF780:
	.string	"_SIGSET_NWORDS (1024 / (8 * sizeof (unsigned long int)))"
.LASF829:
	.string	"__intptr_t_defined "
.LASF51:
	.string	"__INT64_TYPE__ long int"
.LASF33:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF898:
	.string	"__va_copy(d,s) __builtin_va_copy(d,s)"
.LASF586:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF972:
	.string	"long long unsigned int"
.LASF706:
	.string	"__HAVE_DISTINCT_FLOAT64X 0"
.LASF681:
	.string	"__WCOREFLAG 0x80"
.LASF76:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF363:
	.string	"__USE_ISOCXX11"
.LASF524:
	.string	"_SIZE_T_DEFINED "
.LASF82:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF613:
	.string	"__ssize_t_defined "
.LASF553:
	.string	"__U64_TYPE unsigned long int"
.LASF265:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF72:
	.string	"__INTPTR_TYPE__ long int"
.LASF1012:
	.string	"biguint_lrot"
.LASF850:
	.string	"UINT_LEAST8_MAX (255)"
.LASF958:
	.string	"long unsigned int"
.LASF869:
	.string	"INTMAX_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF739:
	.string	"__timer_t_defined 1"
.LASF400:
	.string	"_POSIX_C_SOURCE 200809L"
.LASF61:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF676:
	.string	"__WIFCONTINUED(status) ((status) == __W_CONTINUED)"
.LASF727:
	.string	"__dev_t_defined "
.LASF45:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF244:
	.string	"__FLT32X_DIG__ 15"
.LASF668:
	.string	"P_PID"
.LASF454:
	.string	"__attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))"
.LASF367:
	.string	"__USE_POSIX199506"
.LASF745:
	.string	"__BIG_ENDIAN 4321"
.LASF883:
	.string	"INT32_C(c) c"
.LASF704:
	.string	"__HAVE_DISTINCT_FLOAT64 0"
.LASF143:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF20:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF888:
	.string	"UINT64_C(c) c ## UL"
.LASF457:
	.string	"__nonnull(params) __attribute__ ((__nonnull__ params))"
.LASF897:
	.string	"va_copy(d,s) __builtin_va_copy(d,s)"
.LASF621:
	.string	"SEEK_END 2"
.LASF656:
	.string	"_STDLIB_H 1"
.LASF1013:
	.string	"lrot"
.LASF475:
	.string	"__WORDSIZE 64"
.LASF903:
	.string	"fallthrough __attribute__((__fallthrough__))"
.LASF792:
	.string	"FD_CLR(fd,fdsetp) __FD_CLR (fd, fdsetp)"
.LASF648:
	.string	"_WCHAR_T_DEFINED "
.LASF893:
	.string	"_ANSI_STDARG_H_ "
.LASF478:
	.string	"__LONG_DOUBLE_USES_FLOAT128 0"
.LASF315:
	.string	"__SIZEOF_INT128__ 16"
.LASF15:
	.string	"__pic__ 2"
.LASF499:
	.string	"__stub_stty "
.LASF40:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF1015:
	.string	"biguint_rrot"
.LASF279:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF438:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF833:
	.string	"INT64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF100:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF120:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF552:
	.string	"__S64_TYPE long int"
.LASF522:
	.string	"_BSD_SIZE_T_ "
.LASF760:
	.string	"htobe16(x) __bswap_16 (x)"
.LASF436:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF368:
	.string	"__USE_XOPEN"
.LASF645:
	.string	"_WCHAR_T_ "
.LASF331:
	.string	"__MMX__ 1"
.LASF801:
	.string	"_BITS_PTHREADTYPES_ARCH_H 1"
.LASF929:
	.string	"BIGINT_MAXINIT { { INT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX } }"
.LASF542:
	.string	"__S32_TYPE int"
.LASF840:
	.string	"UINT32_MAX (4294967295U)"
.LASF665:
	.string	"__WCLONE 0x80000000"
.LASF914:
	.string	"LOG_TRACE(format,args...) fprintf(stdout, \"In %s) %s)%u: \", __FILE__, __FUNCTION__, __LINE__); fprintf(stdout, format, ##args); fprintf(stdout, \"\\n\");"
.LASF938:
	.string	"BIGCOMPLEX_ZERO (bigcomplex_t){ BIGUINT_ZEROINIT, BIGUINT_ZEROINIT }"
.LASF651:
	.string	"__INT_WCHAR_T_H "
.LASF878:
	.string	"WCHAR_MAX __WCHAR_MAX"
.LASF912:
	.string	"DEBUG_ELSE(args...) else { args; }"
.LASF1005:
	.string	"biguint_lteq"
.LASF800:
	.string	"_THREAD_SHARED_TYPES_H 1"
.LASF945:
	.string	"BIGUINT_UI3RSH(big,ui,len) BIGUINT_UI2RSH(big, (ui)+1, len) | BIGUINT_UINT64RSH((big)->ui64[ui], len, 192L)"
.LASF884:
	.string	"INT64_C(c) c ## L"
.LASF1026:
	.string	"dest"
.LASF410:
	.string	"__USE_ATFILE 1"
.LASF176:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF689:
	.string	"_BITS_FLOATN_H "
.LASF616:
	.string	"_IONBF 2"
.LASF774:
	.string	"__FD_ZERO(fdsp) do { int __d0, __d1; __asm__ __volatile__ (\"cld; rep; \" __FD_ZERO_STOS : \"=c\" (__d0), \"=D\" (__d1) : \"a\" (0), \"0\" (sizeof (fd_set) / sizeof (__fd_mask)), \"1\" (&__FDS_BITS (fdsp)[0]) : \"memory\"); } while (0)"
.LASF498:
	.string	"__stub_sstk "
.LASF80:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF58:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF915:
	.string	"LOG_INFO(format,args...) fprintf(stdout, \"\\x1b[32mINFO in %s) %s)%u: \", __FILE__, __FUNCTION__, __LINE__); fprintf(stdout, format, ##args); fprintf(stdout, \"\\x1b[0m\\n\");"
.LASF268:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF798:
	.string	"__fsfilcnt_t_defined "
.LASF6:
	.string	"__GNUC_MINOR__ 2"
.LASF185:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF832:
	.string	"INT32_MIN (-2147483647-1)"
.LASF811:
	.string	"__LOCK_ALIGNMENT "
.LASF307:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF692:
	.string	"__HAVE_FLOAT64X 1"
.LASF253:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF491:
	.string	"__stub_chflags "
.LASF607:
	.string	"__feof_unlocked_body(_fp) (((_fp)->_flags & _IO_EOF_SEEN) != 0)"
.LASF380:
	.string	"__USE_GNU"
.LASF529:
	.string	"_SIZET_ "
.LASF355:
	.string	"STDMOH_H_INCLUDED "
.LASF585:
	.string	"__TIMER_T_TYPE void *"
.LASF181:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF508:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X"
.LASF227:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF1017:
	.string	"biguint_lsh"
.LASF731:
	.string	"__uid_t_defined "
.LASF754:
	.string	"BYTE_ORDER __BYTE_ORDER"
.LASF267:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF239:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF667:
	.string	"P_ALL"
.LASF579:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF484:
	.string	"__REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)"
.LASF696:
	.string	"_BITS_FLOATN_COMMON_H "
.LASF464:
	.string	"__extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__))"
.LASF294:
	.string	"__REGISTER_PREFIX__ "
.LASF293:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF168:
	.string	"__DBL_DIG__ 15"
.LASF710:
	.string	"__f32(x) x ##f32"
.LASF456:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF679:
	.string	"__W_STOPCODE(sig) ((sig) << 8 | 0x7f)"
.LASF30:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF862:
	.string	"UINT_FAST8_MAX (255)"
.LASF223:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF570:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF434:
	.string	"__END_DECLS "
.LASF339:
	.string	"__SEG_GS 1"
.LASF207:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF110:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF890:
	.string	"UINTMAX_C(c) c ## UL"
.LASF628:
	.string	"FOPEN_MAX"
.LASF876:
	.string	"SIZE_MAX (18446744073709551615UL)"
.LASF326:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF600:
	.string	"_____fpos64_t_defined 1"
.LASF323:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF335:
	.string	"__SSE_MATH__ 1"
.LASF963:
	.string	"short int"
.LASF419:
	.string	"_SYS_CDEFS_H 1"
.LASF896:
	.string	"va_arg(v,l) __builtin_va_arg(v,l)"
.LASF126:
	.string	"__UINT16_C(c) c"
.LASF747:
	.string	"_BITS_ENDIANNESS_H 1"
.LASF975:
	.string	"uint64_t"
.LASF389:
	.string	"__GLIBC_USE(F) __GLIBC_USE_ ## F"
.LASF617:
	.string	"BUFSIZ 8192"
.LASF911:
	.string	"DEBUG_ELIF(condition,args...) else if (condition) { args; }"
.LASF796:
	.string	"__blkcnt_t_defined "
.LASF834:
	.string	"INT8_MAX (127)"
.LASF262:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF765:
	.string	"htole32(x) __uint32_identity (x)"
.LASF9:
	.string	"__ATOMIC_RELAXED 0"
.LASF446:
	.string	"__ASMNAME2(prefix,cname) __STRING (prefix) cname"
.LASF795:
	.string	"__blksize_t_defined "
.LASF206:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF180:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF421:
	.string	"__LEAF , __leaf__"
.LASF213:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF946:
	.string	"BIGUINT_UI4RSH(big,ui,len) BIGUINT_UI3RSH(big, (ui)+1, len) | BIGUINT_UINT64RSH((big)->ui64[ui], len, 256L)"
.LASF69:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF1010:
	.string	"biguint_eq"
.LASF807:
	.string	"__SIZEOF_PTHREAD_COND_T 48"
.LASF547:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF27:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF283:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF173:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF950:
	.string	"BIGUINT_UI5LSH(big,ui,len) BIGUINT_UINT64LSH((big)->ui64[ui], len, 0L)"
.LASF724:
	.string	"_SYS_TYPES_H 1"
.LASF444:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
.LASF564:
	.string	"__NLINK_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF175:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF953:
	.string	"BIGUINT_UI2LSH(big,ui,len) BIGUINT_UI3LSH(big, (ui)-1, len) | BIGUINT_UINT64LSH((big)->ui64[ui], len, 192L)"
.LASF976:
	.string	"bool_t"
.LASF447:
	.string	"__attribute_malloc__ __attribute__ ((__malloc__))"
.LASF548:
	.string	"__SWORD_TYPE long int"
.LASF631:
	.string	"stdout stdout"
.LASF453:
	.string	"__attribute_deprecated__ __attribute__ ((__deprecated__))"
.LASF228:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF561:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF401:
	.string	"__USE_POSIX 1"
.LASF925:
	.string	"BIGUINT_MAXINIT { { UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX, UINT_MAX } }"
.LASF871:
	.string	"UINTMAX_MAX (__UINT64_C(18446744073709551615))"
.LASF868:
	.string	"UINTPTR_MAX (18446744073709551615UL)"
.LASF102:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF666:
	.string	"__ENUM_IDTYPE_T 1"
.LASF922:
	.string	"INT_MIN 0x8000000000000000UL"
.LASF694:
	.string	"__f128(x) x ##f128"
.LASF941:
	.string	"BIGUINT_UINT64RSH(bigi,len,bits) (!(((len) < (bits)) || ((len) >= (bits+64L)))*((bigi) >> (len-bits)) + !(((len) <= (bits-64L)) || ((len) >= (bits)))*((bigi) << (bits-len)))"
.LASF723:
	.string	"MB_CUR_MAX (__ctype_get_mb_cur_max ())"
.LASF712:
	.string	"__f32x(x) x ##f32x"
.LASF191:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF900:
	.string	"_VA_LIST "
.LASF906:
	.string	"false 0"
.LASF4:
	.string	"__STDC_HOSTED__ 1"
.LASF540:
	.string	"__S16_TYPE short int"
.LASF815:
	.string	"__PTHREAD_MUTEX_INITIALIZER(__kind) 0, 0, 0, 0, __kind, 0, 0, { 0, 0 }"
.LASF317:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF738:
	.string	"__time_t_defined 1"
.LASF0:
	.string	"__STDC__ 1"
.LASF966:
	.string	"__int64_t"
.LASF809:
	.string	"__SIZEOF_PTHREAD_RWLOCKATTR_T 8"
.LASF761:
	.string	"htole16(x) __uint16_identity (x)"
.LASF895:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF46:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF462:
	.string	"__attribute_artificial__ __attribute__ ((__artificial__))"
.LASF210:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF885:
	.string	"UINT8_C(c) c"
.LASF274:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF55:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF650:
	.string	"___int_wchar_t_h "
.LASF844:
	.string	"INT_LEAST32_MIN (-2147483647-1)"
.LASF266:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF753:
	.string	"PDP_ENDIAN __PDP_ENDIAN"
.LASF29:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF482:
	.string	"__LDBL_REDIR_NTH(name,proto) name proto __THROW"
.LASF578:
	.string	"__CLOCK_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF1027:
	.string	"GNU C17 10.2.1 20210110 -mtune=generic -march=x86-64 -g3 -Og -fasynchronous-unwind-tables"
.LASF569:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF235:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF697:
	.string	"__HAVE_FLOAT16 0"
.LASF606:
	.string	"_IO_EOF_SEEN 0x0010"
.LASF336:
	.string	"__SSE2_MATH__ 1"
.LASF718:
	.string	"__ldiv_t_defined 1"
.LASF390:
	.string	"_DEFAULT_SOURCE"
.LASF220:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF528:
	.string	"_GCC_SIZE_T "
.LASF258:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF556:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF933:
	.string	"BIGINT_MIN (bigint_t){ { INT_MIN, 0UL, 0UL, 0UL, 0UL, 0UL } }"
.LASF78:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF23:
	.string	"__SIZEOF_INT__ 4"
.LASF654:
	.string	"_BSD_WCHAR_T_"
.LASF894:
	.string	"va_start(v,l) __builtin_va_start(v,l)"
.LASF970:
	.string	"long long int"
.LASF1008:
	.string	"biguint_gt"
.LASF38:
	.string	"__SIZEOF_POINTER__ 8"
.LASF974:
	.string	"uint32_t"
.LASF392:
	.string	"__GLIBC_USE_ISOC2X 0"
.LASF558:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF843:
	.string	"INT_LEAST16_MIN (-32767-1)"
.LASF669:
	.string	"P_PGID"
.LASF84:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF145:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF327:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF855:
	.string	"INT_FAST16_MIN (-9223372036854775807L-1)"
.LASF435:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF750:
	.string	"__LONG_LONG_PAIR(HI,LO) LO, HI"
.LASF319:
	.string	"__amd64 1"
.LASF398:
	.string	"_POSIX_SOURCE 1"
.LASF192:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF402:
	.string	"__USE_POSIX2 1"
.LASF345:
	.string	"__unix__ 1"
.LASF427:
	.string	"__glibc_clang_has_extension(ext) 0"
.LASF678:
	.string	"__W_EXITCODE(ret,sig) ((ret) << 8 | (sig))"
.LASF488:
	.string	"__HAVE_GENERIC_SELECTION 1"
.LASF835:
	.string	"INT16_MAX (32767)"
.LASF879:
	.string	"WINT_MIN (0u)"
.LASF183:
	.string	"__LDBL_DIG__ 18"
.LASF562:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF729:
	.string	"__mode_t_defined "
.LASF83:
	.string	"__WINT_MIN__ 0U"
.LASF563:
	.string	"__MODE_T_TYPE __U32_TYPE"
.LASF1018:
	.string	"biguint_rsh"
.LASF214:
	.string	"__FLT64_DIG__ 15"
.LASF285:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF622:
	.string	"P_tmpdir \"/tmp\""
.LASF161:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF113:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF57:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF823:
	.string	"__COMPAR_FN_T "
.LASF346:
	.string	"unix 1"
.LASF740:
	.string	"_BITS_STDINT_INTN_H 1"
.LASF977:
	.string	"float"
.LASF639:
	.string	"__wchar_t__ "
.LASF859:
	.string	"INT_FAST16_MAX (9223372036854775807L)"
.LASF507:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT 0"
.LASF923:
	.string	"BIGUINT_INIT(ui0,ui1,ui2,ui3,ui4,ui5) { { ui0, ui1, ui2, ui3, ui4, ui5 } }"
.LASF342:
	.string	"__linux__ 1"
.LASF411:
	.string	"__USE_FORTIFY_LEVEL 0"
.LASF184:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF511:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT 0"
.LASF409:
	.string	"__USE_MISC 1"
.LASF588:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF177:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF1004:
	.string	"biguint_inc"
.LASF324:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF673:
	.string	"__WIFEXITED(status) (__WTERMSIG(status) == 0)"
.LASF349:
	.string	"_DEBUG 1"
.LASF127:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF683:
	.string	"WTERMSIG(status) __WTERMSIG (status)"
.LASF603:
	.string	"__struct_FILE_defined 1"
.LASF609:
	.string	"__ferror_unlocked_body(_fp) (((_fp)->_flags & _IO_ERR_SEEN) != 0)"
.LASF439:
	.string	"__errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))"
.LASF971:
	.string	"int64_t"
.LASF721:
	.string	"EXIT_FAILURE 1"
.LASF717:
	.string	"__CFLOAT64X _Complex _Float64x"
.LASF565:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF382:
	.string	"__KERNEL_STRICT_NAMES"
.LASF243:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF913:
	.string	"ASSERT(condition) if (!condition) abort();"
.LASF91:
	.string	"__WCHAR_WIDTH__ 32"
.LASF376:
	.string	"__USE_LARGEFILE64"
.LASF604:
	.string	"__getc_unlocked_body(_fp) (__glibc_unlikely ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end) ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)"
.LASF115:
	.string	"__INT16_C(c) c"
.LASF259:
	.string	"__FLT64X_DIG__ 18"
.LASF281:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF799:
	.string	"_BITS_PTHREADTYPES_COMMON_H 1"
.LASF994:
	.string	"biguint_t"
.LASF13:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF144:
	.string	"__INTPTR_WIDTH__ 64"
.LASF749:
	.string	"__FLOAT_WORD_ORDER __BYTE_ORDER"
.LASF341:
	.string	"__linux 1"
.LASF647:
	.string	"_WCHAR_T_DEFINED_ "
.LASF136:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF178:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF791:
	.string	"FD_SET(fd,fdsetp) __FD_SET (fd, fdsetp)"
.LASF264:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF999:
	.string	"biguint_mul"
.LASF822:
	.string	"alloca(size) __builtin_alloca (size)"
.LASF865:
	.string	"UINT_FAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF593:
	.string	"__STATFS_MATCHES_STATFS64 1"
.LASF957:
	.ascii	"BIGUINT_UINT64REV(revi,bigi) revi = ((bigi) >> 32UL) | ((big"
	.ascii	"i) << 32UL); revi = (((revi) & 0xFFFF0000FFFF0000UL) >> 16UL"
	.ascii	") | (((revi) & 0x0000FFFF0000FFFFUL) << 16UL); revi = (((rev"
	.ascii	"i) & 0xFF00FF00FF00FF00UL) >> 8UL) | (((revi) & 0x00FF00FF00"
	.ascii	"FF00FFUL) << 8UL); revi = (((revi) & 0"
	.string	"xF0F0F0F0F0F0F0F0UL) >> 4UL) | (((revi) & 0x0F0F0F0F0F0F0F0FUL) << 4UL); revi = (((revi) & 0xCCCCCCCCCCCCCCCCUL) >> 2UL) | (((revi) & 0x3333333333333333UL) << 2UL); revi = (((revi) & 0xAAAAAAAAAAAAAAAAUL) >> 1UL) | (((revi) & 0x5555555555555555UL) << 1UL);"
.LASF873:
	.string	"PTRDIFF_MAX (9223372036854775807L)"
.LASF804:
	.string	"__SIZEOF_PTHREAD_RWLOCK_T 56"
.LASF899:
	.string	"_VA_LIST_ "
.LASF399:
	.string	"_POSIX_C_SOURCE"
.LASF167:
	.string	"__DBL_MANT_DIG__ 53"
.LASF756:
	.string	"__bswap_constant_16(x) ((__uint16_t) ((((x) >> 8) & 0xff) | (((x) & 0xff) << 8)))"
.LASF1024:
	.string	"biguint_not"
.LASF854:
	.string	"INT_FAST8_MIN (-128)"
.LASF469:
	.string	"__glibc_unlikely(cond) __builtin_expect ((cond), 0)"
.LASF77:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF129:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF108:
	.string	"__UINT16_MAX__ 0xffff"
.LASF104:
	.string	"__INT16_MAX__ 0x7fff"
.LASF910:
	.string	"DEBUG_IF(condition,args...) if (condition) { args; }"
.LASF797:
	.string	"__fsblkcnt_t_defined "
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
