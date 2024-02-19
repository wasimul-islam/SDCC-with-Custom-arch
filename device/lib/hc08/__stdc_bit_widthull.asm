;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_widthull
	.optsdcc -mhc08
	
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
	.globl ___stdc_bit_widthull_PARM_1
	.globl ___stdc_bit_widthull
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___stdc_bit_widthull_sloc0_1_0:
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
___stdc_bit_widthull_PARM_1:
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
;Allocation info for local variables in function '__stdc_bit_widthull'
;------------------------------------------------------------
;sloc0                     Allocated with name '___stdc_bit_widthull_sloc0_1_0'
;value                     Allocated with name '___stdc_bit_widthull_PARM_1'
;width                     Allocated to registers a 
;i                         Allocated to registers 
;------------------------------------------------------------
;../__stdc_bit_widthull.c:37: int_fast8_t __stdc_bit_widthull(unsigned long long value)
;	-----------------------------------------
;	 function __stdc_bit_widthull
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_bit_widthull:
;../__stdc_bit_widthull.c:39: int_fast8_t width = 0;
	clra
;../__stdc_bit_widthull.c:40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	tax
00105$:
	cpx	#0x40
	bcs	00125$
	rts
00125$:
;../__stdc_bit_widthull.c:41: if(value & (1ull << i))
	psha
	clra
	sta	__rlulonglong_PARM_1
	sta	(__rlulonglong_PARM_1 + 1)
	sta	(__rlulonglong_PARM_1 + 2)
	sta	(__rlulonglong_PARM_1 + 3)
	sta	(__rlulonglong_PARM_1 + 4)
	sta	(__rlulonglong_PARM_1 + 5)
	sta	(__rlulonglong_PARM_1 + 6)
	inca
	sta	(__rlulonglong_PARM_1 + 7)
	pula
	stx	__rlulonglong_PARM_2
	psha
	pshx
	jsr	__rlulonglong
	sta	*(___stdc_bit_widthull_sloc0_1_0 + 7)
	stx	*(___stdc_bit_widthull_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(___stdc_bit_widthull_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(___stdc_bit_widthull_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(___stdc_bit_widthull_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(___stdc_bit_widthull_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(___stdc_bit_widthull_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*___stdc_bit_widthull_sloc0_1_0
	pulx
	lda	(___stdc_bit_widthull_PARM_1 + 7)
	bit	*(___stdc_bit_widthull_sloc0_1_0 + 7)
	bne	00126$
	lda	(___stdc_bit_widthull_PARM_1 + 6)
	bit	*(___stdc_bit_widthull_sloc0_1_0 + 6)
	bne	00126$
	lda	(___stdc_bit_widthull_PARM_1 + 5)
	bit	*(___stdc_bit_widthull_sloc0_1_0 + 5)
	bne	00126$
	lda	(___stdc_bit_widthull_PARM_1 + 4)
	bit	*(___stdc_bit_widthull_sloc0_1_0 + 4)
	bne	00126$
	lda	(___stdc_bit_widthull_PARM_1 + 3)
	bit	*(___stdc_bit_widthull_sloc0_1_0 + 3)
	bne	00126$
	lda	(___stdc_bit_widthull_PARM_1 + 2)
	bit	*(___stdc_bit_widthull_sloc0_1_0 + 2)
	bne	00126$
	lda	(___stdc_bit_widthull_PARM_1 + 1)
	bit	*(___stdc_bit_widthull_sloc0_1_0 + 1)
	bne	00126$
	lda	___stdc_bit_widthull_PARM_1
	bit	*___stdc_bit_widthull_sloc0_1_0
00126$:
	pula
	beq	00106$
;../__stdc_bit_widthull.c:42: width = (i + 1);
	txa
	inca
00106$:
;../__stdc_bit_widthull.c:40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
	aix	#1
	jmp	00105$
;../__stdc_bit_widthull.c:43: return width;
;../__stdc_bit_widthull.c:44: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
