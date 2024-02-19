;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rrslonglong
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
	.globl __rrslonglong_PARM_2
	.globl __rrslonglong_PARM_1
	.globl __rrslonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__rrslonglong_sloc0_1_0:
	.ds 4
__rrslonglong_sloc1_1_0:
	.ds 4
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
__rrslonglong_PARM_1:
	.ds 8
__rrslonglong_PARM_2:
	.ds 1
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
;Allocation info for local variables in function '_rrslonglong'
;------------------------------------------------------------
;l                         Allocated with name '__rrslonglong_PARM_1'
;s                         Allocated with name '__rrslonglong_PARM_2'
;top                       Allocated to registers 
;middle                    Allocated to registers 
;bottom                    Allocated to registers 
;b                         Allocated to registers 
;sloc0                     Allocated with name '__rrslonglong_sloc0_1_0'
;sloc1                     Allocated with name '__rrslonglong_sloc1_1_0'
;------------------------------------------------------------
;../_rrslonglong.c:41: long long _rrslonglong(long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rrslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__rrslonglong:
;../_rrslonglong.c:43: int32_t *top = (uint32_t *)((char *)(&l) + 0);
;../_rrslonglong.c:44: uint32_t *middle = (uint16_t *)((char *)(&l) + 2);
;../_rrslonglong.c:45: uint32_t *bottom = (uint32_t *)((char *)(&l) + 4);
;../_rrslonglong.c:46: uint16_t *b = (uint16_t *)(&l);
;../_rrslonglong.c:56: (*bottom) >>= s;
00103$:
;../_rrslonglong.c:48: for(;s >= 16; s-= 16)
	lda	__rrslonglong_PARM_2
	cmp	#0x10
	bcs	00101$
;../_rrslonglong.c:50: b[3] = b[2];
	ldx	(__rrslonglong_PARM_1 + 0x0004)
	lda	((__rrslonglong_PARM_1 + 0x0004) + 1)
	stx	(__rrslonglong_PARM_1 + 0x0006)
	sta	((__rrslonglong_PARM_1 + 0x0006) + 1)
;../_rrslonglong.c:51: b[2] = b[1];
	ldx	(__rrslonglong_PARM_1 + 0x0002)
	lda	((__rrslonglong_PARM_1 + 0x0002) + 1)
	stx	(__rrslonglong_PARM_1 + 0x0004)
	sta	((__rrslonglong_PARM_1 + 0x0004) + 1)
;../_rrslonglong.c:52: b[1] = b[0];
	ldx	__rrslonglong_PARM_1
	lda	(__rrslonglong_PARM_1 + 1)
	stx	(__rrslonglong_PARM_1 + 0x0002)
	sta	((__rrslonglong_PARM_1 + 0x0002) + 1)
;../_rrslonglong.c:53: b[0] = (b[0] & 0x8000) ? 0xffff : 0x000000;
	ldx	__rrslonglong_PARM_1
	lda	(__rrslonglong_PARM_1 + 1)
	tstx
	bpl     00107$
	ldx	#0xff
	txa
	bra	00108$
00107$:
	clrx
	txa
00108$:
	stx	__rrslonglong_PARM_1
	sta	(__rrslonglong_PARM_1 + 1)
;../_rrslonglong.c:48: for(;s >= 16; s-= 16)
	lda	__rrslonglong_PARM_2
	sub	#0x10
	sta	__rrslonglong_PARM_2
	bra	00103$
00101$:
;../_rrslonglong.c:56: (*bottom) >>= s;
	lda	(__rrslonglong_PARM_1 + 0x0004)
	sta	*__rrslonglong_sloc0_1_0
	lda	((__rrslonglong_PARM_1 + 0x0004) + 1)
	sta	*(__rrslonglong_sloc0_1_0 + 1)
	lda	((__rrslonglong_PARM_1 + 0x0004) + 2)
	sta	*(__rrslonglong_sloc0_1_0 + 2)
	lda	((__rrslonglong_PARM_1 + 0x0004) + 3)
	sta	*(__rrslonglong_sloc0_1_0 + 3)
	ldx	__rrslonglong_PARM_2
	beq	00127$
00126$:
	lsr	*__rrslonglong_sloc0_1_0
	ror	*(__rrslonglong_sloc0_1_0 + 1)
	ror	*(__rrslonglong_sloc0_1_0 + 2)
	ror	*(__rrslonglong_sloc0_1_0 + 3)
	dbnzx	00126$
00127$:
	lda	*__rrslonglong_sloc0_1_0
	sta	(__rrslonglong_PARM_1 + 0x0004)
	lda	*(__rrslonglong_sloc0_1_0 + 1)
	sta	((__rrslonglong_PARM_1 + 0x0004) + 1)
	lda	*(__rrslonglong_sloc0_1_0 + 2)
	sta	((__rrslonglong_PARM_1 + 0x0004) + 2)
	lda	*(__rrslonglong_sloc0_1_0 + 3)
	sta	((__rrslonglong_PARM_1 + 0x0004) + 3)
;../_rrslonglong.c:57: (*middle) |= (((*middle & 0xffff0000ul) >> s) & 0x0000fffful);
	lda	(__rrslonglong_PARM_1 + 0x0002)
	sta	*__rrslonglong_sloc0_1_0
	lda	((__rrslonglong_PARM_1 + 0x0002) + 1)
	sta	*(__rrslonglong_sloc0_1_0 + 1)
	lda	((__rrslonglong_PARM_1 + 0x0002) + 2)
	sta	*(__rrslonglong_sloc0_1_0 + 2)
	lda	((__rrslonglong_PARM_1 + 0x0002) + 3)
	sta	*(__rrslonglong_sloc0_1_0 + 3)
	mov	#0x00,*(__rrslonglong_sloc1_1_0 + 3)
	mov	#0x00,*(__rrslonglong_sloc1_1_0 + 2)
	mov	*(__rrslonglong_sloc0_1_0 + 1),*(__rrslonglong_sloc1_1_0 + 1)
	mov	*__rrslonglong_sloc0_1_0,*__rrslonglong_sloc1_1_0
	ldx	__rrslonglong_PARM_2
	beq	00129$
00128$:
	lsr	*__rrslonglong_sloc1_1_0
	ror	*(__rrslonglong_sloc1_1_0 + 1)
	ror	*(__rrslonglong_sloc1_1_0 + 2)
	ror	*(__rrslonglong_sloc1_1_0 + 3)
	dbnzx	00128$
00129$:
	mov	#0x00,*(__rrslonglong_sloc1_1_0 + 1)
	mov	#0x00,*__rrslonglong_sloc1_1_0
	lda	*(__rrslonglong_sloc0_1_0 + 3)
	ora	*(__rrslonglong_sloc1_1_0 + 3)
	sta	*(__rrslonglong_sloc1_1_0 + 3)
	lda	*(__rrslonglong_sloc0_1_0 + 2)
	ora	*(__rrslonglong_sloc1_1_0 + 2)
	sta	*(__rrslonglong_sloc1_1_0 + 2)
	lda	*(__rrslonglong_sloc0_1_0 + 1)
	ora	*(__rrslonglong_sloc1_1_0 + 1)
	sta	*(__rrslonglong_sloc1_1_0 + 1)
	lda	*__rrslonglong_sloc0_1_0
	ora	*__rrslonglong_sloc1_1_0
	sta	*__rrslonglong_sloc1_1_0
	lda	*__rrslonglong_sloc1_1_0
	sta	(__rrslonglong_PARM_1 + 0x0002)
	lda	*(__rrslonglong_sloc1_1_0 + 1)
	sta	((__rrslonglong_PARM_1 + 0x0002) + 1)
	lda	*(__rrslonglong_sloc1_1_0 + 2)
	sta	((__rrslonglong_PARM_1 + 0x0002) + 2)
	lda	*(__rrslonglong_sloc1_1_0 + 3)
	sta	((__rrslonglong_PARM_1 + 0x0002) + 3)
;../_rrslonglong.c:58: (*top) >>= s;
	lda	__rrslonglong_PARM_1
	sta	*__rrslonglong_sloc1_1_0
	lda	(__rrslonglong_PARM_1 + 1)
	sta	*(__rrslonglong_sloc1_1_0 + 1)
	lda	(__rrslonglong_PARM_1 + 2)
	sta	*(__rrslonglong_sloc1_1_0 + 2)
	lda	(__rrslonglong_PARM_1 + 3)
	sta	*(__rrslonglong_sloc1_1_0 + 3)
	ldx	__rrslonglong_PARM_2
	beq	00131$
00130$:
	asr	*__rrslonglong_sloc1_1_0
	ror	*(__rrslonglong_sloc1_1_0 + 1)
	ror	*(__rrslonglong_sloc1_1_0 + 2)
	ror	*(__rrslonglong_sloc1_1_0 + 3)
	dbnzx	00130$
00131$:
	lda	*__rrslonglong_sloc1_1_0
	sta	__rrslonglong_PARM_1
	lda	*(__rrslonglong_sloc1_1_0 + 1)
	sta	(__rrslonglong_PARM_1 + 1)
	lda	*(__rrslonglong_sloc1_1_0 + 2)
	sta	(__rrslonglong_PARM_1 + 2)
	lda	*(__rrslonglong_sloc1_1_0 + 3)
	sta	(__rrslonglong_PARM_1 + 3)
;../_rrslonglong.c:60: return(l);
	lda	__rrslonglong_PARM_1
	sta	*___SDCC_hc08_ret7
	lda	(__rrslonglong_PARM_1 + 1)
	sta	*___SDCC_hc08_ret6
	lda	(__rrslonglong_PARM_1 + 2)
	sta	*___SDCC_hc08_ret5
	lda	(__rrslonglong_PARM_1 + 3)
	sta	*___SDCC_hc08_ret4
	lda	(__rrslonglong_PARM_1 + 4)
	sta	*___SDCC_hc08_ret3
	lda	(__rrslonglong_PARM_1 + 5)
	sta	*___SDCC_hc08_ret2
	ldx	(__rrslonglong_PARM_1 + 6)
	lda	(__rrslonglong_PARM_1 + 7)
;../_rrslonglong.c:61: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
