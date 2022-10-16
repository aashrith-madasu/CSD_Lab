	.file	"utils.c"
	.option nopic
	.text
	.comm	gb,4,4
	.local	s2
	.comm	s2,4,4
	.align	1
	.globl	max3
	.type	max3, @function

# max3 here --------------
max3:
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
	blt	a4,a5,.L2
	lw	a4,-20(s0)
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L2
	lw	a5,-20(s0)
	j	.L3
.L2:
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	lw	a5,-24(s0)
	j	.L3
.L4:
	lw	a5,-28(s0)
.L3:
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	max3, .-max3
	.align	1
	.globl	sum3
	.type	sum3, @function


# sum3 here --------------
sum3:
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
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	sum3, .-sum3
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
