;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _rlulonglong
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
	.globl __rlulonglong_PARM_2
	.globl __rlulonglong_PARM_1
	.globl __rlulonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__rlulonglong_sloc0_1_0:
	.ds 4
__rlulonglong_sloc1_1_0:
	.ds 1
__rlulonglong_sloc2_1_0:
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
__rlulonglong_PARM_1:
	.ds 8
__rlulonglong_PARM_2:
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
;Allocation info for local variables in function '_rlulonglong'
;------------------------------------------------------------
;l                         Allocated with name '__rlulonglong_PARM_1'
;s                         Allocated with name '__rlulonglong_PARM_2'
;top                       Allocated to registers 
;middle                    Allocated to registers 
;bottom                    Allocated to registers 
;b                         Allocated to registers 
;sloc0                     Allocated with name '__rlulonglong_sloc0_1_0'
;sloc1                     Allocated with name '__rlulonglong_sloc1_1_0'
;sloc2                     Allocated with name '__rlulonglong_sloc2_1_0'
;------------------------------------------------------------
;../_rlulonglong.c:43: unsigned long long _rlulonglong(unsigned long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rlulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__rlulonglong:
;../_rlulonglong.c:45: uint32_t *const top = (uint32_t *)((char *)(&l) + 0);
;../_rlulonglong.c:46: uint16_t *const middle = (uint16_t *)((char *)(&l) + 4);
;../_rlulonglong.c:47: uint32_t *const bottom = (uint32_t *)((char *)(&l) + 4);
;../_rlulonglong.c:48: uint16_t *const b = (uint16_t *)(&l);
;../_rlulonglong.c:58: (*top) <<= s;
00103$:
;../_rlulonglong.c:50: for(;s >= 16; s-= 16)
	lda	__rlulonglong_PARM_2
	cmp	#0x10
	bcs	00101$
;../_rlulonglong.c:52: b[0] = b[1];
	ldhx	(__rlulonglong_PARM_1 + 0x0002)
	sthx	__rlulonglong_PARM_1
;../_rlulonglong.c:53: b[1] = b[2];
	ldhx	(__rlulonglong_PARM_1 + 0x0004)
	sthx	(__rlulonglong_PARM_1 + 0x0002)
;../_rlulonglong.c:54: b[2] = b[3];
	ldhx	(__rlulonglong_PARM_1 + 0x0006)
	sthx	(__rlulonglong_PARM_1 + 0x0004)
;../_rlulonglong.c:55: b[3] = 0;
	clra
	sta	(__rlulonglong_PARM_1 + 0x0006)
	sta	((__rlulonglong_PARM_1 + 0x0006) + 1)
;../_rlulonglong.c:50: for(;s >= 16; s-= 16)
	lda	__rlulonglong_PARM_2
	sub	#0x10
	sta	__rlulonglong_PARM_2
	bra	00103$
00101$:
;../_rlulonglong.c:58: (*top) <<= s;
	lda	__rlulonglong_PARM_1
	sta	*__rlulonglong_sloc0_1_0
	lda	(__rlulonglong_PARM_1 + 1)
	sta	*(__rlulonglong_sloc0_1_0 + 1)
	lda	(__rlulonglong_PARM_1 + 2)
	sta	*(__rlulonglong_sloc0_1_0 + 2)
	lda	(__rlulonglong_PARM_1 + 3)
	sta	*(__rlulonglong_sloc0_1_0 + 3)
	lda	__rlulonglong_PARM_2
	sta	*__rlulonglong_sloc1_1_0
	ldx	*__rlulonglong_sloc1_1_0
	beq	00119$
00118$:
	lsl	*(__rlulonglong_sloc0_1_0 + 3)
	rol	*(__rlulonglong_sloc0_1_0 + 2)
	rol	*(__rlulonglong_sloc0_1_0 + 1)
	rol	*__rlulonglong_sloc0_1_0
	dbnzx	00118$
00119$:
	lda	*__rlulonglong_sloc0_1_0
	sta	__rlulonglong_PARM_1
	lda	*(__rlulonglong_sloc0_1_0 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	*(__rlulonglong_sloc0_1_0 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	*(__rlulonglong_sloc0_1_0 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
;../_rlulonglong.c:59: (*top) |= (((uint32_t)((*middle) & 0xffffu) << s) >> 16);
	ldhx	(__rlulonglong_PARM_1 + 0x0004)
	stx	*(__rlulonglong_sloc2_1_0 + 3)
	pshh
	pula
	sta	*(__rlulonglong_sloc2_1_0 + 2)
	mov	#0x00,*(__rlulonglong_sloc2_1_0 + 1)
	mov	#0x00,*__rlulonglong_sloc2_1_0
	ldx	*__rlulonglong_sloc1_1_0
	beq	00121$
00120$:
	lsl	*(__rlulonglong_sloc2_1_0 + 3)
	rol	*(__rlulonglong_sloc2_1_0 + 2)
	rol	*(__rlulonglong_sloc2_1_0 + 1)
	rol	*__rlulonglong_sloc2_1_0
	dbnzx	00120$
00121$:
	lda	*(__rlulonglong_sloc2_1_0 + 1)
	ldx	*__rlulonglong_sloc2_1_0
	sta	*(__rlulonglong_sloc2_1_0 + 3)
	stx	*(__rlulonglong_sloc2_1_0 + 2)
	mov	#0x00,*(__rlulonglong_sloc2_1_0 + 1)
	mov	#0x00,*__rlulonglong_sloc2_1_0
	lda	*(__rlulonglong_sloc0_1_0 + 3)
	ora	*(__rlulonglong_sloc2_1_0 + 3)
	sta	*(__rlulonglong_sloc2_1_0 + 3)
	lda	*(__rlulonglong_sloc0_1_0 + 2)
	ora	*(__rlulonglong_sloc2_1_0 + 2)
	sta	*(__rlulonglong_sloc2_1_0 + 2)
	lda	*(__rlulonglong_sloc0_1_0 + 1)
	ora	*(__rlulonglong_sloc2_1_0 + 1)
	sta	*(__rlulonglong_sloc2_1_0 + 1)
	lda	*__rlulonglong_sloc0_1_0
	ora	*__rlulonglong_sloc2_1_0
	sta	*__rlulonglong_sloc2_1_0
	lda	*__rlulonglong_sloc2_1_0
	sta	__rlulonglong_PARM_1
	lda	*(__rlulonglong_sloc2_1_0 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	*(__rlulonglong_sloc2_1_0 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	*(__rlulonglong_sloc2_1_0 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
;../_rlulonglong.c:60: (*bottom) <<= s;
	lda	(__rlulonglong_PARM_1 + 0x0004)
	sta	*__rlulonglong_sloc2_1_0
	lda	((__rlulonglong_PARM_1 + 0x0004) + 1)
	sta	*(__rlulonglong_sloc2_1_0 + 1)
	lda	((__rlulonglong_PARM_1 + 0x0004) + 2)
	sta	*(__rlulonglong_sloc2_1_0 + 2)
	lda	((__rlulonglong_PARM_1 + 0x0004) + 3)
	sta	*(__rlulonglong_sloc2_1_0 + 3)
	ldx	*__rlulonglong_sloc1_1_0
	beq	00123$
00122$:
	lsl	*(__rlulonglong_sloc2_1_0 + 3)
	rol	*(__rlulonglong_sloc2_1_0 + 2)
	rol	*(__rlulonglong_sloc2_1_0 + 1)
	rol	*__rlulonglong_sloc2_1_0
	dbnzx	00122$
00123$:
	lda	*__rlulonglong_sloc2_1_0
	sta	(__rlulonglong_PARM_1 + 0x0004)
	lda	*(__rlulonglong_sloc2_1_0 + 1)
	sta	((__rlulonglong_PARM_1 + 0x0004) + 1)
	lda	*(__rlulonglong_sloc2_1_0 + 2)
	sta	((__rlulonglong_PARM_1 + 0x0004) + 2)
	lda	*(__rlulonglong_sloc2_1_0 + 3)
	sta	((__rlulonglong_PARM_1 + 0x0004) + 3)
;../_rlulonglong.c:62: return(l);
	lda	__rlulonglong_PARM_1
	sta	*___SDCC_hc08_ret7
	lda	(__rlulonglong_PARM_1 + 1)
	sta	*___SDCC_hc08_ret6
	lda	(__rlulonglong_PARM_1 + 2)
	sta	*___SDCC_hc08_ret5
	lda	(__rlulonglong_PARM_1 + 3)
	sta	*___SDCC_hc08_ret4
	lda	(__rlulonglong_PARM_1 + 4)
	sta	*___SDCC_hc08_ret3
	lda	(__rlulonglong_PARM_1 + 5)
	sta	*___SDCC_hc08_ret2
	ldx	(__rlulonglong_PARM_1 + 6)
	lda	(__rlulonglong_PARM_1 + 7)
;../_rlulonglong.c:63: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
