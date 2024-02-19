;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rrulonglong
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
	.globl __rrulonglong_PARM_2
	.globl __rrulonglong_PARM_1
	.globl __rrulonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__rrulonglong_sloc0_1_0:
	.ds 4
__rrulonglong_sloc1_1_0:
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
__rrulonglong_PARM_1:
	.ds 8
__rrulonglong_PARM_2:
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
;Allocation info for local variables in function '_rrulonglong'
;------------------------------------------------------------
;l                         Allocated with name '__rrulonglong_PARM_1'
;s                         Allocated with name '__rrulonglong_PARM_2'
;top                       Allocated to registers 
;middle                    Allocated to registers 
;bottom                    Allocated to registers 
;b                         Allocated to registers 
;sloc0                     Allocated with name '__rrulonglong_sloc0_1_0'
;sloc1                     Allocated with name '__rrulonglong_sloc1_1_0'
;------------------------------------------------------------
;../_rrulonglong.c:41: unsigned long long _rrulonglong(unsigned long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rrulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__rrulonglong:
;../_rrulonglong.c:43: uint32_t *const top = (uint32_t *)((char *)(&l) + 0);
;../_rrulonglong.c:44: uint32_t *const middle = (uint16_t *)((char *)(&l) + 2);
;../_rrulonglong.c:45: uint32_t *const bottom = (uint32_t *)((char *)(&l) + 4);
;../_rrulonglong.c:46: uint16_t *const b = (uint16_t *)(&l);
;../_rrulonglong.c:56: (*bottom) >>= s;
00103$:
;../_rrulonglong.c:48: for(;s >= 16; s -= 16)
	lda	__rrulonglong_PARM_2
	cmp	#0x10
	bcs	00101$
;../_rrulonglong.c:50: b[3] = b[2];
	ldx	(__rrulonglong_PARM_1 + 0x0004)
	lda	((__rrulonglong_PARM_1 + 0x0004) + 1)
	stx	(__rrulonglong_PARM_1 + 0x0006)
	sta	((__rrulonglong_PARM_1 + 0x0006) + 1)
;../_rrulonglong.c:51: b[2] = b[1];
	ldx	(__rrulonglong_PARM_1 + 0x0002)
	lda	((__rrulonglong_PARM_1 + 0x0002) + 1)
	stx	(__rrulonglong_PARM_1 + 0x0004)
	sta	((__rrulonglong_PARM_1 + 0x0004) + 1)
;../_rrulonglong.c:52: b[1] = b[0];
	ldx	__rrulonglong_PARM_1
	lda	(__rrulonglong_PARM_1 + 1)
	stx	(__rrulonglong_PARM_1 + 0x0002)
	sta	((__rrulonglong_PARM_1 + 0x0002) + 1)
;../_rrulonglong.c:53: b[0] = 0x000000;
	clra
	sta	__rrulonglong_PARM_1
	sta	(__rrulonglong_PARM_1 + 1)
;../_rrulonglong.c:48: for(;s >= 16; s -= 16)
	lda	__rrulonglong_PARM_2
	sub	#0x10
	sta	__rrulonglong_PARM_2
	bra	00103$
00101$:
;../_rrulonglong.c:56: (*bottom) >>= s;
	lda	(__rrulonglong_PARM_1 + 0x0004)
	sta	*__rrulonglong_sloc0_1_0
	lda	((__rrulonglong_PARM_1 + 0x0004) + 1)
	sta	*(__rrulonglong_sloc0_1_0 + 1)
	lda	((__rrulonglong_PARM_1 + 0x0004) + 2)
	sta	*(__rrulonglong_sloc0_1_0 + 2)
	lda	((__rrulonglong_PARM_1 + 0x0004) + 3)
	sta	*(__rrulonglong_sloc0_1_0 + 3)
	ldx	__rrulonglong_PARM_2
	beq	00119$
00118$:
	lsr	*__rrulonglong_sloc0_1_0
	ror	*(__rrulonglong_sloc0_1_0 + 1)
	ror	*(__rrulonglong_sloc0_1_0 + 2)
	ror	*(__rrulonglong_sloc0_1_0 + 3)
	dbnzx	00118$
00119$:
	lda	*__rrulonglong_sloc0_1_0
	sta	(__rrulonglong_PARM_1 + 0x0004)
	lda	*(__rrulonglong_sloc0_1_0 + 1)
	sta	((__rrulonglong_PARM_1 + 0x0004) + 1)
	lda	*(__rrulonglong_sloc0_1_0 + 2)
	sta	((__rrulonglong_PARM_1 + 0x0004) + 2)
	lda	*(__rrulonglong_sloc0_1_0 + 3)
	sta	((__rrulonglong_PARM_1 + 0x0004) + 3)
;../_rrulonglong.c:57: (*middle) |= (((*middle & 0xffff0000ul) >> s) & 0x0000fffful);
	lda	(__rrulonglong_PARM_1 + 0x0002)
	sta	*__rrulonglong_sloc0_1_0
	lda	((__rrulonglong_PARM_1 + 0x0002) + 1)
	sta	*(__rrulonglong_sloc0_1_0 + 1)
	lda	((__rrulonglong_PARM_1 + 0x0002) + 2)
	sta	*(__rrulonglong_sloc0_1_0 + 2)
	lda	((__rrulonglong_PARM_1 + 0x0002) + 3)
	sta	*(__rrulonglong_sloc0_1_0 + 3)
	mov	#0x00,*(__rrulonglong_sloc1_1_0 + 3)
	mov	#0x00,*(__rrulonglong_sloc1_1_0 + 2)
	mov	*(__rrulonglong_sloc0_1_0 + 1),*(__rrulonglong_sloc1_1_0 + 1)
	mov	*__rrulonglong_sloc0_1_0,*__rrulonglong_sloc1_1_0
	ldx	__rrulonglong_PARM_2
	beq	00121$
00120$:
	lsr	*__rrulonglong_sloc1_1_0
	ror	*(__rrulonglong_sloc1_1_0 + 1)
	ror	*(__rrulonglong_sloc1_1_0 + 2)
	ror	*(__rrulonglong_sloc1_1_0 + 3)
	dbnzx	00120$
00121$:
	mov	#0x00,*(__rrulonglong_sloc1_1_0 + 1)
	mov	#0x00,*__rrulonglong_sloc1_1_0
	lda	*(__rrulonglong_sloc0_1_0 + 3)
	ora	*(__rrulonglong_sloc1_1_0 + 3)
	sta	*(__rrulonglong_sloc1_1_0 + 3)
	lda	*(__rrulonglong_sloc0_1_0 + 2)
	ora	*(__rrulonglong_sloc1_1_0 + 2)
	sta	*(__rrulonglong_sloc1_1_0 + 2)
	lda	*(__rrulonglong_sloc0_1_0 + 1)
	ora	*(__rrulonglong_sloc1_1_0 + 1)
	sta	*(__rrulonglong_sloc1_1_0 + 1)
	lda	*__rrulonglong_sloc0_1_0
	ora	*__rrulonglong_sloc1_1_0
	sta	*__rrulonglong_sloc1_1_0
	lda	*__rrulonglong_sloc1_1_0
	sta	(__rrulonglong_PARM_1 + 0x0002)
	lda	*(__rrulonglong_sloc1_1_0 + 1)
	sta	((__rrulonglong_PARM_1 + 0x0002) + 1)
	lda	*(__rrulonglong_sloc1_1_0 + 2)
	sta	((__rrulonglong_PARM_1 + 0x0002) + 2)
	lda	*(__rrulonglong_sloc1_1_0 + 3)
	sta	((__rrulonglong_PARM_1 + 0x0002) + 3)
;../_rrulonglong.c:58: (*top) >>= s;
	lda	__rrulonglong_PARM_1
	sta	*__rrulonglong_sloc1_1_0
	lda	(__rrulonglong_PARM_1 + 1)
	sta	*(__rrulonglong_sloc1_1_0 + 1)
	lda	(__rrulonglong_PARM_1 + 2)
	sta	*(__rrulonglong_sloc1_1_0 + 2)
	lda	(__rrulonglong_PARM_1 + 3)
	sta	*(__rrulonglong_sloc1_1_0 + 3)
	ldx	__rrulonglong_PARM_2
	beq	00123$
00122$:
	lsr	*__rrulonglong_sloc1_1_0
	ror	*(__rrulonglong_sloc1_1_0 + 1)
	ror	*(__rrulonglong_sloc1_1_0 + 2)
	ror	*(__rrulonglong_sloc1_1_0 + 3)
	dbnzx	00122$
00123$:
	lda	*__rrulonglong_sloc1_1_0
	sta	__rrulonglong_PARM_1
	lda	*(__rrulonglong_sloc1_1_0 + 1)
	sta	(__rrulonglong_PARM_1 + 1)
	lda	*(__rrulonglong_sloc1_1_0 + 2)
	sta	(__rrulonglong_PARM_1 + 2)
	lda	*(__rrulonglong_sloc1_1_0 + 3)
	sta	(__rrulonglong_PARM_1 + 3)
;../_rrulonglong.c:60: return(l);
	lda	__rrulonglong_PARM_1
	sta	*___SDCC_hc08_ret7
	lda	(__rrulonglong_PARM_1 + 1)
	sta	*___SDCC_hc08_ret6
	lda	(__rrulonglong_PARM_1 + 2)
	sta	*___SDCC_hc08_ret5
	lda	(__rrulonglong_PARM_1 + 3)
	sta	*___SDCC_hc08_ret4
	lda	(__rrulonglong_PARM_1 + 4)
	sta	*___SDCC_hc08_ret3
	lda	(__rrulonglong_PARM_1 + 5)
	sta	*___SDCC_hc08_ret2
	ldx	(__rrulonglong_PARM_1 + 6)
	lda	(__rrulonglong_PARM_1 + 7)
;../_rrulonglong.c:61: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
