;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_count_trailing_onesull
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_count_trailing_onesull
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
___stdc_count_trailing_onesull_sloc0_1_0:
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
___stdc_count_trailing_onesull_value_65536_9:
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
;Allocation info for local variables in function '__stdc_count_trailing_onesull'
;------------------------------------------------------------
;sloc0                     Allocated with name '___stdc_count_trailing_onesull_sloc0_1_0'
;------------------------------------------------------------
;	__stdc_count_trailing_onesull.c:37: int_fast8_t __stdc_count_trailing_onesull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_count_trailing_onesull
;	-----------------------------------------
___stdc_count_trailing_onesull:
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
	mov	r0,#___stdc_count_trailing_onesull_value_65536_9
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
;	__stdc_count_trailing_onesull.c:40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	mov	r7,#0x00
	mov	r6,#0x00
00106$:
	cjne	r6,#0x40,00123$
00123$:
	jc	00124$
	ljmp	00104$
00124$:
;	__stdc_count_trailing_onesull.c:41: if(value & (1ull << i))
	push	ar7
	mov	b,r6
	inc	b
	mov	___stdc_count_trailing_onesull_sloc0_1_0,#0x01
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 1),#0x00
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 2),#0x00
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 3),#0x00
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 4),#0x00
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 5),#0x00
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 6),#0x00
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 7),#0x00
	sjmp	00126$
00125$:
	mov	a,___stdc_count_trailing_onesull_sloc0_1_0
	add	a,___stdc_count_trailing_onesull_sloc0_1_0
	mov	___stdc_count_trailing_onesull_sloc0_1_0,a
	mov	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 1)
	rlc	a
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 1),a
	mov	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 2)
	rlc	a
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 2),a
	mov	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 3)
	rlc	a
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 3),a
	mov	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 4)
	rlc	a
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 4),a
	mov	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 5)
	rlc	a
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 5),a
	mov	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 6)
	rlc	a
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 6),a
	mov	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 7)
	rlc	a
	mov	(___stdc_count_trailing_onesull_sloc0_1_0 + 7),a
00126$:
	djnz	b,00125$
	mov	r0,#___stdc_count_trailing_onesull_value_65536_9
	movx	a,@r0
	anl	___stdc_count_trailing_onesull_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_trailing_onesull_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_trailing_onesull_sloc0_1_0 + 2),a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_trailing_onesull_sloc0_1_0 + 3),a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_trailing_onesull_sloc0_1_0 + 4),a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_trailing_onesull_sloc0_1_0 + 5),a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_trailing_onesull_sloc0_1_0 + 6),a
	inc	r0
	movx	a,@r0
	anl	(___stdc_count_trailing_onesull_sloc0_1_0 + 7),a
	pop	ar7
	mov	a,___stdc_count_trailing_onesull_sloc0_1_0
	orl	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 1)
	orl	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 2)
	orl	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 3)
	orl	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 4)
	orl	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 5)
	orl	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 6)
	orl	a,(___stdc_count_trailing_onesull_sloc0_1_0 + 7)
	jz	00104$
;	__stdc_count_trailing_onesull.c:42: count++;
	inc	r7
;	__stdc_count_trailing_onesull.c:40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	inc	r6
	ljmp	00106$
00104$:
;	__stdc_count_trailing_onesull.c:45: return count;
	mov	dpl,r7
;	__stdc_count_trailing_onesull.c:46: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
