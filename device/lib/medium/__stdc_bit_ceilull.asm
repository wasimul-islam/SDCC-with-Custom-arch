;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_ceilull
	.optsdcc -mmcs51 --model-medium
	
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
___stdc_bit_ceilull_value_65536_9:
	.ds 8
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
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
;sloc0                     Allocated with name '___stdc_bit_ceilull_sloc0_1_0'
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
	mov	r0,#___stdc_bit_ceilull_value_65536_9
	pop	acc
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	__stdc_bit_ceilull.c:40: for(i = 0; i < ULLONG_WIDTH; i++)
	mov	r7,#0x00
00104$:
;	__stdc_bit_ceilull.c:41: if(value <= (1ull << i))
	mov	b,r7
	inc	b
	mov	___stdc_bit_ceilull_sloc0_1_0,#0x01
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 1),#0x00
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 2),#0x00
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 3),#0x00
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 4),#0x00
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 5),#0x00
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 6),#0x00
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 7),#0x00
	sjmp	00118$
00117$:
	mov	a,___stdc_bit_ceilull_sloc0_1_0
	add	a,___stdc_bit_ceilull_sloc0_1_0
	mov	___stdc_bit_ceilull_sloc0_1_0,a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 1)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 1),a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 2)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 2),a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 3)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 3),a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 4)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 4),a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 5)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 5),a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 6)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 6),a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 7)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 7),a
00118$:
	djnz	b,00117$
	mov	r0,#___stdc_bit_ceilull_value_65536_9
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,___stdc_bit_ceilull_sloc0_1_0
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 1)
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 2)
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 3)
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 4)
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 5)
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 6)
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 7)
	subb	a,b
	jnc	00103$
;	__stdc_bit_ceilull.c:40: for(i = 0; i < ULLONG_WIDTH; i++)
	inc	r7
	cjne	r7,#0x40,00120$
00120$:
	jnc	00121$
	ljmp	00104$
00121$:
00103$:
;	__stdc_bit_ceilull.c:43: return (1ull << i);
	mov	b,r7
	inc	b
	mov	___stdc_bit_ceilull_sloc0_1_0,#0x01
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 1),#0x00
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 2),#0x00
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 3),#0x00
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 4),#0x00
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 5),#0x00
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 6),#0x00
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 7),#0x00
	sjmp	00123$
00122$:
	mov	a,___stdc_bit_ceilull_sloc0_1_0
	add	a,___stdc_bit_ceilull_sloc0_1_0
	mov	___stdc_bit_ceilull_sloc0_1_0,a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 1)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 1),a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 2)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 2),a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 3)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 3),a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 4)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 4),a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 5)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 5),a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 6)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 6),a
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 7)
	rlc	a
	mov	(___stdc_bit_ceilull_sloc0_1_0 + 7),a
00123$:
	djnz	b,00122$
	mov	dpl,___stdc_bit_ceilull_sloc0_1_0
	mov	dph,(___stdc_bit_ceilull_sloc0_1_0 + 1)
	mov	b,(___stdc_bit_ceilull_sloc0_1_0 + 2)
	mov	a,(___stdc_bit_ceilull_sloc0_1_0 + 3)
	mov	r4,(___stdc_bit_ceilull_sloc0_1_0 + 4)
	mov	r5,(___stdc_bit_ceilull_sloc0_1_0 + 5)
	mov	r6,(___stdc_bit_ceilull_sloc0_1_0 + 6)
	mov	r7,(___stdc_bit_ceilull_sloc0_1_0 + 7)
;	__stdc_bit_ceilull.c:44: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
