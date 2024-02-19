;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atoi
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
	.globl _atoi
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_atoi_sloc0_1_0:
	.ds 1
_atoi_sloc1_1_0:
	.ds 2
_atoi_sloc2_1_0:
	.ds 2
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
_atoi_ret_65536_57:
	.ds 2
_atoi_neg_65536_57:
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atoi_sloc0_1_0'
;sloc1                     Allocated with name '_atoi_sloc1_1_0'
;sloc2                     Allocated with name '_atoi_sloc2_1_0'
;nptr                      Allocated to registers x h 
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ret                       Allocated with name '_atoi_ret_65536_57'
;neg                       Allocated with name '_atoi_neg_65536_57'
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;------------------------------------------------------------
;../atoi.c:34: int atoi(const char *nptr)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atoi:
	pshx
	tax
	pulh
;../atoi.c:36: int ret = 0;
	clra
	sta	_atoi_ret_65536_57
	sta	(_atoi_ret_65536_57 + 1)
;../atoi.c:39: while (isblank (*nptr))
00101$:
	lda	,x
	sta	*_atoi_sloc0_1_0
	lda	*_atoi_sloc0_1_0
;./../../include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cbeqa	#0x20,00115$
	cmp	#0x09
	bne	00131$
00115$:
;../atoi.c:40: nptr++;
	aix	#1
	bra	00101$
00131$:
;../atoi.c:42: neg = (*nptr == '-');
	lda	*_atoi_sloc0_1_0
	cbeqa	#0x2d,00164$
	clra
	bra	00163$
00164$:
	lda	#0x01
00163$:
	sta	_atoi_neg_65536_57
;../atoi.c:44: if (*nptr == '-' || *nptr == '+')
	tsta
	bne	00104$
	lda	*_atoi_sloc0_1_0
	cmp	#0x2b
	bne	00129$
00104$:
;../atoi.c:45: nptr++;
	aix	#1
;../atoi.c:47: while (isdigit (*nptr))
00129$:
	sthx	*_atoi_sloc1_1_0
00107$:
	ldhx	*_atoi_sloc1_1_0
	ldx	,x
	txa
;./../../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cmp	#0x30
	bcs	00109$
	cmp	#0x39
	bhi	00109$
;../atoi.c:48: ret = ret * 10 + (*(nptr++) - '0');
	lda	_atoi_ret_65536_57
	sta	__mulint_PARM_2
	lda	(_atoi_ret_65536_57 + 1)
	sta	(__mulint_PARM_2 + 1)
	pshx
	lda	#0x0a
	clrx
	jsr	__mulint
	sta	*(_atoi_sloc2_1_0 + 1)
	stx	*_atoi_sloc2_1_0
	pulx
	pshx
	ldhx	*_atoi_sloc1_1_0
	aix	#1
	sthx	*_atoi_sloc1_1_0
	pulx
	clrh
	aix	#-48
	txa
	add	*(_atoi_sloc2_1_0 + 1)
	sta	(_atoi_ret_65536_57 + 1)
	pshh
	pula
	adc	*_atoi_sloc2_1_0
	sta	_atoi_ret_65536_57
	bra	00107$
00109$:
;../atoi.c:50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	lda	_atoi_neg_65536_57
	beq	00120$
	clra
	sub	(_atoi_ret_65536_57 + 1)
	psha
	clra
	sbc	_atoi_ret_65536_57
	tax
	pula
	rts
00120$:
	ldx	_atoi_ret_65536_57
	lda	(_atoi_ret_65536_57 + 1)
;../atoi.c:51: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
