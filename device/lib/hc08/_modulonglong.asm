;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _modulonglong
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
	.globl __modulonglong_PARM_2
	.globl __modulonglong_PARM_1
	.globl __modulonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
__modulonglong_PARM_1:
	.ds 8
__modulonglong_PARM_2:
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
;Allocation info for local variables in function '_modulonglong'
;------------------------------------------------------------
;a                         Allocated with name '__modulonglong_PARM_1'
;b                         Allocated with name '__modulonglong_PARM_2'
;count                     Allocated to registers h 
;------------------------------------------------------------
;../_modulonglong.c:44: _modulonglong (unsigned long long a, unsigned long long b) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _modulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modulonglong:
;../_modulonglong.c:46: unsigned char count = 0;
	clrh
;../_modulonglong.c:48: while (!MSB_SET(b))
	clrx
00103$:
	lda	__modulonglong_PARM_2
	rola
	clra
	rola
	tsta
	beq	00144$
	jmp	00117$
00144$:
;../_modulonglong.c:50: b <<= 1;
	lda	__modulonglong_PARM_2
	sta	__rlulonglong_PARM_1
	lda	(__modulonglong_PARM_2 + 1)
	sta	(__rlulonglong_PARM_1 + 1)
	lda	(__modulonglong_PARM_2 + 2)
	sta	(__rlulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_2 + 3)
	sta	(__rlulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_2 + 4)
	sta	(__rlulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_2 + 5)
	sta	(__rlulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_2 + 6)
	sta	(__rlulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_2 + 7)
	sta	(__rlulonglong_PARM_1 + 7)
	lda	#0x01
	sta	__rlulonglong_PARM_2
	pshx
	pshh
	jsr	__rlulonglong
	sta	(__modulonglong_PARM_2 + 7)
	stx	(__modulonglong_PARM_2 + 6)
	lda	*___SDCC_hc08_ret2
	sta	(__modulonglong_PARM_2 + 5)
	lda	*___SDCC_hc08_ret3
	sta	(__modulonglong_PARM_2 + 4)
	lda	*___SDCC_hc08_ret4
	sta	(__modulonglong_PARM_2 + 3)
	lda	*___SDCC_hc08_ret5
	sta	(__modulonglong_PARM_2 + 2)
	lda	*___SDCC_hc08_ret6
	sta	(__modulonglong_PARM_2 + 1)
	lda	*___SDCC_hc08_ret7
	sta	__modulonglong_PARM_2
	pulh
	pulx
;../_modulonglong.c:51: if (b > a)
	lda	(__modulonglong_PARM_1 + 7)
	sub	(__modulonglong_PARM_2 + 7)
	lda	(__modulonglong_PARM_1 + 6)
	sbc	(__modulonglong_PARM_2 + 6)
	lda	(__modulonglong_PARM_1 + 5)
	sbc	(__modulonglong_PARM_2 + 5)
	lda	(__modulonglong_PARM_1 + 4)
	sbc	(__modulonglong_PARM_2 + 4)
	lda	(__modulonglong_PARM_1 + 3)
	sbc	(__modulonglong_PARM_2 + 3)
	lda	(__modulonglong_PARM_1 + 2)
	sbc	(__modulonglong_PARM_2 + 2)
	lda	(__modulonglong_PARM_1 + 1)
	sbc	(__modulonglong_PARM_2 + 1)
	lda	__modulonglong_PARM_1
	sbc	__modulonglong_PARM_2
	bcc	00102$
;../_modulonglong.c:53: b >>=1;
	lda	__modulonglong_PARM_2
	sta	__rrulonglong_PARM_1
	lda	(__modulonglong_PARM_2 + 1)
	sta	(__rrulonglong_PARM_1 + 1)
	lda	(__modulonglong_PARM_2 + 2)
	sta	(__rrulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_2 + 3)
	sta	(__rrulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_2 + 4)
	sta	(__rrulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_2 + 5)
	sta	(__rrulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_2 + 6)
	sta	(__rrulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_2 + 7)
	sta	(__rrulonglong_PARM_1 + 7)
	lda	#0x01
	sta	__rrulonglong_PARM_2
	pshh
	jsr	__rrulonglong
	sta	(__modulonglong_PARM_2 + 7)
	stx	(__modulonglong_PARM_2 + 6)
	lda	*___SDCC_hc08_ret2
	sta	(__modulonglong_PARM_2 + 5)
	lda	*___SDCC_hc08_ret3
	sta	(__modulonglong_PARM_2 + 4)
	lda	*___SDCC_hc08_ret4
	sta	(__modulonglong_PARM_2 + 3)
	lda	*___SDCC_hc08_ret5
	sta	(__modulonglong_PARM_2 + 2)
	lda	*___SDCC_hc08_ret6
	sta	(__modulonglong_PARM_2 + 1)
	lda	*___SDCC_hc08_ret7
	sta	__modulonglong_PARM_2
	pulh
;../_modulonglong.c:54: break;
	bra	00117$
00102$:
;../_modulonglong.c:56: count++;
	aix	#1
	pshx
	pulh
	jmp	00103$
;../_modulonglong.c:58: do
00117$:
	pshh
	pulx
00108$:
;../_modulonglong.c:60: if (a >= b)
	lda	(__modulonglong_PARM_1 + 7)
	sub	(__modulonglong_PARM_2 + 7)
	lda	(__modulonglong_PARM_1 + 6)
	sbc	(__modulonglong_PARM_2 + 6)
	lda	(__modulonglong_PARM_1 + 5)
	sbc	(__modulonglong_PARM_2 + 5)
	lda	(__modulonglong_PARM_1 + 4)
	sbc	(__modulonglong_PARM_2 + 4)
	lda	(__modulonglong_PARM_1 + 3)
	sbc	(__modulonglong_PARM_2 + 3)
	lda	(__modulonglong_PARM_1 + 2)
	sbc	(__modulonglong_PARM_2 + 2)
	lda	(__modulonglong_PARM_1 + 1)
	sbc	(__modulonglong_PARM_2 + 1)
	lda	__modulonglong_PARM_1
	sbc	__modulonglong_PARM_2
	bcs	00107$
;../_modulonglong.c:61: a -= b;
	lda	(__modulonglong_PARM_1 + 7)
	sub	(__modulonglong_PARM_2 + 7)
	sta	(__modulonglong_PARM_1 + 7)
	lda	(__modulonglong_PARM_1 + 6)
	sbc	(__modulonglong_PARM_2 + 6)
	sta	(__modulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_1 + 5)
	sbc	(__modulonglong_PARM_2 + 5)
	sta	(__modulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_1 + 4)
	sbc	(__modulonglong_PARM_2 + 4)
	sta	(__modulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_1 + 3)
	sbc	(__modulonglong_PARM_2 + 3)
	sta	(__modulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_1 + 2)
	sbc	(__modulonglong_PARM_2 + 2)
	sta	(__modulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_1 + 1)
	sbc	(__modulonglong_PARM_2 + 1)
	sta	(__modulonglong_PARM_1 + 1)
	lda	__modulonglong_PARM_1
	sbc	__modulonglong_PARM_2
	sta	__modulonglong_PARM_1
00107$:
;../_modulonglong.c:62: b >>= 1;
	lda	__modulonglong_PARM_2
	sta	__rrulonglong_PARM_1
	lda	(__modulonglong_PARM_2 + 1)
	sta	(__rrulonglong_PARM_1 + 1)
	lda	(__modulonglong_PARM_2 + 2)
	sta	(__rrulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_2 + 3)
	sta	(__rrulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_2 + 4)
	sta	(__rrulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_2 + 5)
	sta	(__rrulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_2 + 6)
	sta	(__rrulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_2 + 7)
	sta	(__rrulonglong_PARM_1 + 7)
	lda	#0x01
	sta	__rrulonglong_PARM_2
	pshx
	jsr	__rrulonglong
	sta	(__modulonglong_PARM_2 + 7)
	stx	(__modulonglong_PARM_2 + 6)
	lda	*___SDCC_hc08_ret2
	sta	(__modulonglong_PARM_2 + 5)
	lda	*___SDCC_hc08_ret3
	sta	(__modulonglong_PARM_2 + 4)
	lda	*___SDCC_hc08_ret4
	sta	(__modulonglong_PARM_2 + 3)
	lda	*___SDCC_hc08_ret5
	sta	(__modulonglong_PARM_2 + 2)
	lda	*___SDCC_hc08_ret6
	sta	(__modulonglong_PARM_2 + 1)
	lda	*___SDCC_hc08_ret7
	sta	__modulonglong_PARM_2
	pulx
;../_modulonglong.c:64: while (count--);
	txa
	decx
	tsta
	beq	00147$
	jmp	00108$
00147$:
;../_modulonglong.c:66: return a;
	lda	__modulonglong_PARM_1
	sta	*___SDCC_hc08_ret7
	lda	(__modulonglong_PARM_1 + 1)
	sta	*___SDCC_hc08_ret6
	lda	(__modulonglong_PARM_1 + 2)
	sta	*___SDCC_hc08_ret5
	lda	(__modulonglong_PARM_1 + 3)
	sta	*___SDCC_hc08_ret4
	lda	(__modulonglong_PARM_1 + 4)
	sta	*___SDCC_hc08_ret3
	lda	(__modulonglong_PARM_1 + 5)
	sta	*___SDCC_hc08_ret2
	ldx	(__modulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_1 + 7)
;../_modulonglong.c:67: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
