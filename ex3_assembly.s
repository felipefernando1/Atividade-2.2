	.file	"ex3.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Digite tres numeros: \0"
.LC1:
	.ascii "%f %f %f\0"
.LC3:
	.ascii "Media: %.2f\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movss	-4(%rbp), %xmm1
	movss	-8(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	.LC2(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC2:
	.long	1077936128
	.ident	"GCC: (tdm64-1) 4.9.2"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
