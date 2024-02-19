;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_ceilull
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_bit_ceilull
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
___stdc_bit_ceilull_sloc0_1_0:
	.ds 1
___stdc_bit_ceilull_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___stdc_bit_ceilull_value_65536_9:
	.ds 8
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '__stdc_bit_ceilull'
;------------------------------------------------------------
;value                     Allocated with name '___stdc_bit_ceilull_value_65536_9'
;i                         Allocated with name '___stdc_bit_ceilull_i_65536_10'
;sloc0                     Allocated with name '___stdc_bit_ceilull_sloc0_1_0'
;sloc1                     Allocated with name '___stdc_bit_ceilull_sloc1_1_0'
;------------------------------------------------------------
;	__stdc_bit_ceilull.c:37: unsigned long long __stdc_bit_ceilull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_bit_ceilull
;	-----------------------------------------
___stdc_bit_ceilull:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#___stdc_bit_ceilull_value_65536_9
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	__stdc_bit_ceilull.c:40: for(i = 0; i < ULLONG_WIDTH; i++)
	mov	dptr,#___stdc_bit_ceilull_value_65536_9
	movx	a,@dptr
	mov	___stdc_bit_ceilull_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_ceilull_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_ceilull_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_ceilull_sloc1_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_ceilull_sloc1_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_ceilull_sloc1_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_ceilull_sloc1_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(___stdc_bit_ceilull_sloc1_1_0 + 7),a
	mov	___stdc_bit_ceilull_sloc0_1_0,#0x00
00104$:
;	__stdc_bit_ceilull.c:41: if(value <= (1ull << i))
	mov	b,___stdc_bit_ceilull_sloc0_1_0
	inc	b
	mov	r0,#0x01
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00118$
00117$:
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00118$:
	djnz	b,00117$
	clr	c
	mov	a,r0
	subb	a,___stdc_bit_ceilull_sloc1_1_0
	mov	a,r1
	subb	a,(___stdc_bit_ceilull_sloc1_1_0 + 1)
	mov	a,r2
	subb	a,(___stdc_bit_ceilull_sloc1_1_0 + 2)
	mov	a,r3
	subb	a,(___stdc_bit_ceilull_sloc1_1_0 + 3)
	mov	a,r4
	subb	a,(___stdc_bit_ceilull_sloc1_1_0 + 4)
	mov	a,r5
	subb	a,(___stdc_bit_ceilull_sloc1_1_0 + 5)
	mov	a,r6
	subb	a,(___stdc_bit_ceilull_sloc1_1_0 + 6)
	mov	a,r7
	subb	a,(___stdc_bit_ceilull_sloc1_1_0 + 7)
	jnc	00103$
;	__stdc_bit_ceilull.c:40: for(i = 0; i < ULLONG_WIDTH; i++)
	inc	___stdc_bit_ceilull_sloc0_1_0
	mov	a,#0x100 - 0x40
	add	a,___stdc_bit_ceilull_sloc0_1_0
	jnc	00104$
00103$:
;	__stdc_bit_ceilull.c:43: return (1ull << i);
	mov	b,___stdc_bit_ceilull_sloc0_1_0
	inc	b
	mov	r0,#0x01
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00122$
00121$:
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00122$:
	djnz	b,00121$
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
;	__stdc_bit_ceilull.c:44: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
