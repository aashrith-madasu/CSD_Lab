	.file	"main.c"
	.option nopic
	.text
	.comm	gb,4,4
	.local	s1
	.comm	s1,4,4
	.align	1
	.globl	min3
	.type	min3, @function

# min3 here -----------------
min3:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	mv	a5,a0
	mv	a3,a1
	mv	a4,a2
	sw	a5,-20(s0)
	mv	a5,a3
	sw	a5,-24(s0)
	mv	a5,a4
	sw	a5,-28(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bgt	a4,a5,.L2
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bgt	a4,a5,.L2
	lw	a5,-20(s0)
	j	.L3
.L2:
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bgt	a4,a5,.L4
	lw	a5,-24(s0)
	j	.L3
.L4:
	lw	a5,-28(s0)
.L3:
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	min3, .-min3
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function

# main here --------------
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	lui	a5,%hi(g)
	lw	a5,%lo(g)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	li	a2,4
	li	a1,3
	li	a0,2
	call	max3
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
