;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memmove
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
	.globl _memmove_PARM_3
	.globl _memmove_PARM_2
	.globl _memmove
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memmove_sloc0_1_0:
	.ds 2
_memmove_sloc1_1_0:
	.ds 2
_memmove_sloc2_1_0:
	.ds 2
_memmove_sloc3_1_0:
	.ds 2
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
_memmove_PARM_2:
	.ds 2
_memmove_PARM_3:
	.ds 2
_memmove_dst_65536_26:
	.ds 2
_memmove_c_65536_27:
	.ds 2
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
;Allocation info for local variables in function 'memmove'
;------------------------------------------------------------
;src                       Allocated with name '_memmove_PARM_2'
;size                      Allocated with name '_memmove_PARM_3'
;dst                       Allocated with name '_memmove_dst_65536_26'
;c                         Allocated with name '_memmove_c_65536_27'
;d                         Allocated to registers 
;s                         Allocated to registers 
;sloc0                     Allocated with name '_memmove_sloc0_1_0'
;sloc1                     Allocated with name '_memmove_sloc1_1_0'
;sloc2                     Allocated with name '_memmove_sloc2_1_0'
;sloc3                     Allocated with name '_memmove_sloc3_1_0'
;------------------------------------------------------------
;../_memmove.c:35: void *memmove (void *dst, const void *src, size_t size)
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memmove:
	sta	(_memmove_dst_65536_26 + 1)
	stx	_memmove_dst_65536_26
;../_memmove.c:37: size_t c = size;
	lda	_memmove_PARM_3
	sta	_memmove_c_65536_27
	lda	(_memmove_PARM_3 + 1)
	sta	(_memmove_c_65536_27 + 1)
;../_memmove.c:38: if (c == 0 || dst == src)
	lda	_memmove_c_65536_27
	ora	(_memmove_c_65536_27 + 1)
	beq	00101$
	lda	(_memmove_dst_65536_26 + 1)
	cmp	(_memmove_PARM_2 + 1)
	bne	00143$
	lda	_memmove_dst_65536_26
	cmp	_memmove_PARM_2
	beq	00144$
00143$:
	bra	00102$
00144$:
00101$:
;../_memmove.c:39: return dst;
	ldx	_memmove_dst_65536_26
	lda	(_memmove_dst_65536_26 + 1)
	rts
00102$:
;../_memmove.c:41: char *d = dst;
	lda	_memmove_dst_65536_26
	psha
	pulh
	ldx	(_memmove_dst_65536_26 + 1)
;../_memmove.c:42: const char *s = src;
	lda	(_memmove_PARM_2 + 1)
	sta	*(_memmove_sloc0_1_0 + 1)
	lda	_memmove_PARM_2
	sta	*_memmove_sloc0_1_0
;../_memmove.c:43: if (s < d) {
	cphx	*_memmove_sloc0_1_0
	bls	00119$
;../_memmove.c:50: s += c;
	lda	*(_memmove_sloc0_1_0 + 1)
	add	(_memmove_c_65536_27 + 1)
	sta	*(_memmove_sloc1_1_0 + 1)
	lda	*_memmove_sloc0_1_0
	adc	_memmove_c_65536_27
	sta	*_memmove_sloc1_1_0
;../_memmove.c:51: d += c;
	txa
	add	(_memmove_c_65536_27 + 1)
	sta	*(_memmove_sloc2_1_0 + 1)
	pshh
	pula
	adc	_memmove_c_65536_27
	sta	*_memmove_sloc2_1_0
;../_memmove.c:52: do {
	lda	_memmove_c_65536_27
	sta	*_memmove_sloc3_1_0
	lda	(_memmove_c_65536_27 + 1)
	sta	*(_memmove_sloc3_1_0 + 1)
00104$:
;../_memmove.c:53: *--d = *--s;
	ldhx	*_memmove_sloc2_1_0
	aix	#-1
	sthx	*_memmove_sloc2_1_0
	ldhx	*_memmove_sloc1_1_0
	aix	#-1
	sthx	*_memmove_sloc1_1_0
	ldhx	*_memmove_sloc1_1_0
	lda	,x
	ldhx	*_memmove_sloc2_1_0
	sta	,x
;../_memmove.c:54: } while (--c);
	ldhx	*_memmove_sloc3_1_0
	aix	#-1
	sthx	*_memmove_sloc3_1_0
	lda	*(_memmove_sloc3_1_0 + 1)
	ora	*_memmove_sloc3_1_0
	bne	00104$
	bra	00112$
;../_memmove.c:59: do {
00119$:
	mov	*_memmove_sloc0_1_0,*_memmove_sloc3_1_0
	mov	*(_memmove_sloc0_1_0 + 1),*(_memmove_sloc3_1_0 + 1)
	sthx	*_memmove_sloc2_1_0
	lda	_memmove_c_65536_27
	psha
	pulh
	ldx	(_memmove_c_65536_27 + 1)
00107$:
;../_memmove.c:60: *d++ = *s++;
	pshx
	pshh
	ldhx	*_memmove_sloc3_1_0
	lda	,x
	sta	*_memmove_sloc1_1_0
	aix	#1
	sthx	*_memmove_sloc3_1_0
	pulh
	pulx
	pshx
	pshh
	ldhx	*_memmove_sloc2_1_0
	lda	*_memmove_sloc1_1_0
	sta	,x
	aix	#1
	sthx	*_memmove_sloc2_1_0
	pulh
	pulx
;../_memmove.c:61: } while (--c);
	aix	#-1
	cphx	#0x00
	bne	00107$
00112$:
;../_memmove.c:65: return dst;
	ldx	_memmove_dst_65536_26
	lda	(_memmove_dst_65536_26 + 1)
;../_memmove.c:66: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
