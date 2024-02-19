;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module strtol
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
	.globl _strtoul
	.globl _strtol_PARM_3
	.globl _strtol_PARM_2
	.globl _strtol
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_strtol_sloc0_1_0:
	.ds 1
_strtol_sloc1_1_0:
	.ds 2
_strtol_sloc2_1_0:
	.ds 4
_strtol_sloc3_1_0:
	.ds 4
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
_strtol_PARM_2:
	.ds 2
_strtol_PARM_3:
	.ds 2
_strtol_nptr_65536_56:
	.ds 2
_strtol_ptr_65536_57:
	.ds 2
_strtol_rptr_65536_57:
	.ds 2
_strtol_neg_65536_57:
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
;Allocation info for local variables in function 'strtol'
;------------------------------------------------------------
;sloc0                     Allocated with name '_strtol_sloc0_1_0'
;sloc1                     Allocated with name '_strtol_sloc1_1_0'
;sloc2                     Allocated with name '_strtol_sloc2_1_0'
;sloc3                     Allocated with name '_strtol_sloc3_1_0'
;endptr                    Allocated with name '_strtol_PARM_2'
;base                      Allocated with name '_strtol_PARM_3'
;nptr                      Allocated with name '_strtol_nptr_65536_56'
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ptr                       Allocated with name '_strtol_ptr_65536_57'
;rptr                      Allocated with name '_strtol_rptr_65536_57'
;u                         Allocated with name '_strtol_u_65536_57'
;neg                       Allocated with name '_strtol_neg_65536_57'
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;------------------------------------------------------------
;../strtol.c:38: long int strtol(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtol
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_strtol:
	sta	(_strtol_nptr_65536_56 + 1)
	stx	_strtol_nptr_65536_56
;../strtol.c:45: while (isblank (*ptr))
	ldhx	_strtol_nptr_65536_56
00101$:
	lda	,x
	sta	*_strtol_sloc0_1_0
	lda	*_strtol_sloc0_1_0
;../strtol.c:46: ptr++;
	pshx
	pshh
	aix	#1
	sthx	*_strtol_sloc1_1_0
	pulh
	pulx
;./../../include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cbeqa	#0x20,00132$
	cmp	#0x09
	bne	00158$
00132$:
;../strtol.c:46: ptr++;
	ldhx	*_strtol_sloc1_1_0
	bra	00101$
00158$:
	sthx	_strtol_ptr_65536_57
;../strtol.c:50: if (*ptr == '-')
	lda	*_strtol_sloc0_1_0
	cmp	#0x2d
	bne	00105$
;../strtol.c:52: neg = true;
	lda	#0x01
	sta	_strtol_neg_65536_57
;../strtol.c:53: ptr++;
	lda	*_strtol_sloc1_1_0
	sta	_strtol_ptr_65536_57
	lda	*(_strtol_sloc1_1_0 + 1)
	sta	(_strtol_ptr_65536_57 + 1)
	bra	00106$
00105$:
;../strtol.c:56: neg = false;
	clra
	sta	_strtol_neg_65536_57
00106$:
;../strtol.c:62: *endptr = nptr;
	ldhx	_strtol_PARM_2
	sthx	*_strtol_sloc1_1_0
;../strtol.c:59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	lda	_strtol_neg_65536_57
	beq	00110$
	ldhx	_strtol_ptr_65536_57
	lda	,x
	tax
;./../../include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cpx	#0x20
	beq	00109$
	cpx	#0x09
	beq	00109$
;../strtol.c:59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	cbeqa	#0x2d,00109$
	cmp	#0x2b
	bne	00110$
00109$:
;../strtol.c:61: if (endptr)
	lda	_strtol_PARM_2
	ora	(_strtol_PARM_2 + 1)
	beq	00108$
;../strtol.c:62: *endptr = nptr;
	ldhx	*_strtol_sloc1_1_0
	lda	_strtol_nptr_65536_56
	sta	,x
	lda	(_strtol_nptr_65536_56 + 1)
	sta	1,x
00108$:
;../strtol.c:63: return (0);
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00110$:
;../strtol.c:66: u = strtoul(ptr, &rptr, base);
	ldhx	#_strtol_rptr_65536_57
	sthx	_strtoul_PARM_2
	ldhx	_strtol_PARM_3
	sthx	_strtoul_PARM_3
	lda	(_strtol_ptr_65536_57 + 1)
	ldx	_strtol_ptr_65536_57
	jsr	_strtoul
	sta	*(_strtol_sloc2_1_0 + 3)
	stx	*(_strtol_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_strtol_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_strtol_sloc2_1_0
;../strtol.c:69: if (rptr == ptr)
	lda	(_strtol_rptr_65536_57 + 1)
	cmp	(_strtol_ptr_65536_57 + 1)
	bne	00234$
	lda	_strtol_rptr_65536_57
	cmp	_strtol_ptr_65536_57
	beq	00235$
00234$:
	bra	00117$
00235$:
;../strtol.c:71: if (endptr)
	lda	_strtol_PARM_2
	ora	(_strtol_PARM_2 + 1)
	beq	00115$
;../strtol.c:72: *endptr = nptr;
	ldhx	*_strtol_sloc1_1_0
	lda	_strtol_nptr_65536_56
	sta	,x
	lda	(_strtol_nptr_65536_56 + 1)
	sta	1,x
00115$:
;../strtol.c:73: return (0);
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00117$:
;../strtol.c:76: if (endptr)
	lda	_strtol_PARM_2
	ora	(_strtol_PARM_2 + 1)
	beq	00119$
;../strtol.c:77: *endptr = rptr;
	ldhx	*_strtol_sloc1_1_0
	lda	_strtol_rptr_65536_57
	sta	,x
	lda	(_strtol_rptr_65536_57 + 1)
	sta	1,x
00119$:
;../strtol.c:80: if (!neg && u > LONG_MAX)
	lda	_strtol_neg_65536_57
	bne	00124$
	lda	#0xff
	sub	*(_strtol_sloc2_1_0 + 3)
	lda	#0xff
	sbc	*(_strtol_sloc2_1_0 + 2)
	lda	#0xff
	sbc	*(_strtol_sloc2_1_0 + 1)
	lda	#0x7f
	sbc	*_strtol_sloc2_1_0
	bcc	00124$
;../strtol.c:82: errno = ERANGE;
	ldhx	#0x0022
	sthx	_errno
;../strtol.c:83: return (LONG_MAX);
	lda	#0xff
	tax
	sta	*___SDCC_hc08_ret2
	mov	#0x7f,*___SDCC_hc08_ret3
	rts
00124$:
;../strtol.c:85: else if (neg && u > -LONG_MIN)
	lda	_strtol_neg_65536_57
	beq	00125$
	clra
	sub	*(_strtol_sloc2_1_0 + 3)
	clra
	sbc	*(_strtol_sloc2_1_0 + 2)
	clra
	sbc	*(_strtol_sloc2_1_0 + 1)
	lda	#0x80
	sbc	*_strtol_sloc2_1_0
	bcc	00125$
;../strtol.c:87: errno = ERANGE;
	ldhx	#0x0022
	sthx	_errno
;../strtol.c:88: return (LONG_MIN);
	clra
	tax
	sta	*___SDCC_hc08_ret2
	mov	#0x80,*___SDCC_hc08_ret3
	rts
00125$:
;../strtol.c:91: return (neg ? -u : u);
	lda	_strtol_neg_65536_57
	beq	00137$
	clra
	sub	*(_strtol_sloc2_1_0 + 3)
	sta	*(_strtol_sloc3_1_0 + 3)
	clra
	sbc	*(_strtol_sloc2_1_0 + 2)
	sta	*(_strtol_sloc3_1_0 + 2)
	clra
	sbc	*(_strtol_sloc2_1_0 + 1)
	sta	*(_strtol_sloc3_1_0 + 1)
	clra
	sbc	*_strtol_sloc2_1_0
	sta	*_strtol_sloc3_1_0
	bra	00138$
00137$:
	mov	*_strtol_sloc2_1_0,*_strtol_sloc3_1_0
	mov	*(_strtol_sloc2_1_0 + 1),*(_strtol_sloc3_1_0 + 1)
	mov	*(_strtol_sloc2_1_0 + 2),*(_strtol_sloc3_1_0 + 2)
	mov	*(_strtol_sloc2_1_0 + 3),*(_strtol_sloc3_1_0 + 3)
00138$:
	mov	*_strtol_sloc3_1_0,*___SDCC_hc08_ret3
	mov	*(_strtol_sloc3_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_strtol_sloc3_1_0 + 2)
	lda	*(_strtol_sloc3_1_0 + 3)
;../strtol.c:92: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
