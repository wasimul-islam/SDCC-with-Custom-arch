;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module __stdc_count_onesull
	.optsdcc -ms08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_count_onesull_PARM_1
	.globl ___stdc_count_onesull
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___stdc_count_onesull_sloc0_1_0:
	.ds 1
___stdc_count_onesull_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
___stdc_count_onesull_PARM_1:
	.ds 8
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
;Allocation info for local variables in function '__stdc_count_onesull'
;------------------------------------------------------------
;sloc0                     Allocated with name '___stdc_count_onesull_sloc0_1_0'
;sloc1                     Allocated with name '___stdc_count_onesull_sloc1_1_0'
;value                     Allocated with name '___stdc_count_onesull_PARM_1'
;count                     Allocated to registers 
;i                         Allocated to registers 
;------------------------------------------------------------
;../__stdc_count_onesull.c:37: int_fast8_t __stdc_count_onesull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_count_onesull
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_count_onesull:
;../__stdc_count_onesull.c:40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	mov	#0x00,*___stdc_count_onesull_sloc0_1_0
	clra
00105$:
	cmp	#0x40
	bcc	00103$
;../__stdc_count_onesull.c:41: if(value & (1ull << i))
	clrh
	clrx
	sthx	__rlulonglong_PARM_1
	sthx	(__rlulonglong_PARM_1 + 2)
	sthx	(__rlulonglong_PARM_1 + 4)
	incx
	sthx	(__rlulonglong_PARM_1 + 6)
	sta	__rlulonglong_PARM_2
	psha
	jsr	__rlulonglong
	sta	*(___stdc_count_onesull_sloc1_1_0 + 7)
	stx	*(___stdc_count_onesull_sloc1_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___stdc_count_onesull_sloc1_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___stdc_count_onesull_sloc1_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___stdc_count_onesull_sloc1_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___stdc_count_onesull_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___stdc_count_onesull_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___stdc_count_onesull_sloc1_1_0
	lda	(___stdc_count_onesull_PARM_1 + 7)
	bit	*(___stdc_count_onesull_sloc1_1_0 + 7)
	bne	00126$
	lda	(___stdc_count_onesull_PARM_1 + 6)
	bit	*(___stdc_count_onesull_sloc1_1_0 + 6)
	bne	00126$
	lda	(___stdc_count_onesull_PARM_1 + 5)
	bit	*(___stdc_count_onesull_sloc1_1_0 + 5)
	bne	00126$
	lda	(___stdc_count_onesull_PARM_1 + 4)
	bit	*(___stdc_count_onesull_sloc1_1_0 + 4)
	bne	00126$
	lda	(___stdc_count_onesull_PARM_1 + 3)
	bit	*(___stdc_count_onesull_sloc1_1_0 + 3)
	bne	00126$
	lda	(___stdc_count_onesull_PARM_1 + 2)
	bit	*(___stdc_count_onesull_sloc1_1_0 + 2)
	bne	00126$
	lda	(___stdc_count_onesull_PARM_1 + 1)
	bit	*(___stdc_count_onesull_sloc1_1_0 + 1)
	bne	00126$
	lda	___stdc_count_onesull_PARM_1
	bit	*___stdc_count_onesull_sloc1_1_0
00126$:
	pula
	beq	00106$
;../__stdc_count_onesull.c:42: count++;
	inc	*___stdc_count_onesull_sloc0_1_0
00106$:
;../__stdc_count_onesull.c:40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	inca
	bra	00105$
00103$:
;../__stdc_count_onesull.c:43: return count;
	lda	*___stdc_count_onesull_sloc0_1_0
;../__stdc_count_onesull.c:44: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
