;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _atof
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
	.globl _toupper
	.globl _isspace
	.globl _atof
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_atof_sloc0_1_0:
	.ds 2
_atof_sloc1_1_0:
	.ds 2
_atof_sloc2_1_0:
	.ds 1
_atof_sloc3_1_0:
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
_atof_value_65536_57:
	.ds 4
_atof_fraction_65536_57:
	.ds 4
_atof_sign_65536_57:
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
;Allocation info for local variables in function 'atof'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atof_sloc0_1_0'
;sloc1                     Allocated with name '_atof_sloc1_1_0'
;sloc2                     Allocated with name '_atof_sloc2_1_0'
;sloc3                     Allocated with name '_atof_sloc3_1_0'
;s                         Allocated to registers 
;__1310720004              Allocated to registers 
;value                     Allocated with name '_atof_value_65536_57'
;fraction                  Allocated with name '_atof_fraction_65536_57'
;iexp                      Allocated to registers x 
;sign                      Allocated with name '_atof_sign_65536_57'
;__1966080005              Allocated to registers 
;c                         Allocated to registers 
;__1966080007              Allocated to registers 
;__2621440008              Allocated to registers 
;c                         Allocated to registers 
;------------------------------------------------------------
;../_atof.c:33: float atof(const char * s)
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atof:
	sta	*(_atof_sloc0_1_0 + 1)
	stx	*_atof_sloc0_1_0
;../_atof.c:40: while (isspace(*s)) s++;
00101$:
	ldhx	*_atof_sloc0_1_0
	lda	,x
	clrx
	jsr	_isspace
	pshx
	ldhx	*_atof_sloc0_1_0
	aix	#1
	sthx	*_atof_sloc1_1_0
	pulx
	tsta
	bne	00218$
	tstx
00218$:
	beq	00155$
	mov	*_atof_sloc1_1_0,*_atof_sloc0_1_0
	mov	*(_atof_sloc1_1_0 + 1),*(_atof_sloc0_1_0 + 1)
	bra	00101$
00155$:
	ldhx	*_atof_sloc0_1_0
;../_atof.c:43: if (*s == '-')
	pshx
	pshh
	ldhx	*_atof_sloc0_1_0
	lda	,x
	pulh
	pulx
	cmp	#0x2d
	bne	00107$
;../_atof.c:45: sign=1;
	lda	#0x01
	sta	_atof_sign_65536_57
;../_atof.c:46: s++;
	ldhx	*_atof_sloc1_1_0
	bra	00108$
00107$:
;../_atof.c:50: sign=0;
	psha
	clra
	sta	_atof_sign_65536_57
	pula
;../_atof.c:51: if (*s == '+') s++;
	cmp	#0x2b
	bne	00108$
	ldhx	*_atof_sloc1_1_0
00108$:
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	clra
	sta	_atof_value_65536_57
	sta	(_atof_value_65536_57 + 1)
	sta	(_atof_value_65536_57 + 2)
	sta	(_atof_value_65536_57 + 3)
00126$:
	lda	,x
	sta	*_atof_sloc1_1_0
	lda	*_atof_sloc1_1_0
	pshx
	pshh
	aix	#1
	sthx	*_atof_sloc0_1_0
	pulh
	pulx
;./../../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cmp	#0x30
	bcs	00156$
	cmp	#0x39
	bhi	00156$
;../_atof.c:57: value=10.0*value+(*s-'0');
	ldhx	#___fsmul_PARM_1
	lda	#0x41
	sta	,x
	lda	#0x20
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	ldhx	#___fsmul_PARM_2
	lda	_atof_value_65536_57
	sta	,x
	lda	(_atof_value_65536_57 + 1)
	sta	1,x
	lda	(_atof_value_65536_57 + 2)
	sta	2,x
	lda	(_atof_value_65536_57 + 3)
	sta	3,x
	jsr	___fsmul
	sta	*(_atof_sloc3_1_0 + 3)
	stx	*(_atof_sloc3_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_atof_sloc3_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_atof_sloc3_1_0
	ldx	*_atof_sloc1_1_0
	clrh
	aix	#-48
	txa
	pshh
	pulx
	jsr	___sint2fs
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	ldhx	#___fsadd_PARM_1
	mov	*_atof_sloc3_1_0,x+
	mov	*(_atof_sloc3_1_0 + 1),x+
	mov	*(_atof_sloc3_1_0 + 2),x+
	mov	*(_atof_sloc3_1_0 + 3),x+
	jsr	___fsadd
	sta	(_atof_value_65536_57 + 3)
	stx	(_atof_value_65536_57 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_value_65536_57 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_value_65536_57
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	ldhx	*_atof_sloc0_1_0
	jmp	00126$
00156$:
	sthx	*_atof_sloc3_1_0
;../_atof.c:61: if (*s == '.')
	lda	*_atof_sloc1_1_0
	cbeqa	#0x2e,00224$
	jmp	00112$
00224$:
;../_atof.c:63: s++;
	ldhx	*_atof_sloc0_1_0
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	lda	#0x3d
	sta	_atof_fraction_65536_57
	lda	#0xcc
	sta	(_atof_fraction_65536_57 + 1)
	sta	(_atof_fraction_65536_57 + 2)
	inca
	sta	(_atof_fraction_65536_57 + 3)
00129$:
	lda	,x
	sta	*_atof_sloc2_1_0
	lda	*_atof_sloc2_1_0
;./../../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cmp	#0x30
	bcc	00225$
	jmp	00157$
00225$:
	cmp	#0x39
	bls	00226$
	jmp	00157$
00226$:
;../_atof.c:66: value+=(*s-'0')*fraction;
	mov	*_atof_sloc2_1_0,*(_atof_sloc1_1_0 + 1)
	mov	#0x00,*_atof_sloc1_1_0
	pshx
	pshh
	ldhx	*_atof_sloc1_1_0
	aix	#-48
	sthx	*_atof_sloc1_1_0
	pulh
	pulx
	pshx
	pshh
	lda	*(_atof_sloc1_1_0 + 1)
	ldx	*_atof_sloc1_1_0
	jsr	___sint2fs
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	pulh
	pulx
	lda	_atof_fraction_65536_57
	sta	___fsmul_PARM_2
	lda	(_atof_fraction_65536_57 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_atof_fraction_65536_57 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_fraction_65536_57 + 3)
	sta	(___fsmul_PARM_2 + 3)
	pshx
	pshh
	jsr	___fsmul
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	pulh
	pulx
	lda	_atof_value_65536_57
	sta	___fsadd_PARM_1
	lda	(_atof_value_65536_57 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	(_atof_value_65536_57 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(_atof_value_65536_57 + 3)
	sta	(___fsadd_PARM_1 + 3)
	pshx
	pshh
	jsr	___fsadd
	sta	(_atof_value_65536_57 + 3)
	stx	(_atof_value_65536_57 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_value_65536_57 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_value_65536_57
	pulh
	pulx
;../_atof.c:67: fraction*=0.1;
	lda	#0x3d
	sta	___fsmul_PARM_1
	lda	#0xcc
	sta	(___fsmul_PARM_1 + 1)
	sta	(___fsmul_PARM_1 + 2)
	inca
	sta	(___fsmul_PARM_1 + 3)
	lda	_atof_fraction_65536_57
	sta	___fsmul_PARM_2
	lda	(_atof_fraction_65536_57 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_atof_fraction_65536_57 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_fraction_65536_57 + 3)
	sta	(___fsmul_PARM_2 + 3)
	pshx
	pshh
	jsr	___fsmul
	sta	(_atof_fraction_65536_57 + 3)
	stx	(_atof_fraction_65536_57 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_fraction_65536_57 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_fraction_65536_57
	pulh
	pulx
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	aix	#1
	jmp	00129$
00157$:
	sthx	*_atof_sloc3_1_0
00112$:
;../_atof.c:72: if (toupper(*s)=='E')
	ldhx	*_atof_sloc3_1_0
	lda	,x
	clrx
	jsr	_toupper
	cmp	#0x45
	bne	00227$
	cpx	#0x00
	beq	00228$
00227$:
	jmp	00120$
00228$:
;../_atof.c:74: s++;
	ldhx	*_atof_sloc3_1_0
	aix	#1
;../_atof.c:75: iexp=(signed char)atoi(s);
	txa
	pshh
	pulx
	jsr	_atoi
	psha
	pshx
	pulh
	pulx
;../_atof.c:77: while(iexp!=0)
00116$:
	tstx
	bne	00229$
	jmp	00120$
00229$:
;../_atof.c:79: if(iexp<0)
	cpx	#0x00
	bge	00114$
;../_atof.c:81: value*=0.1;
	lda	#0x3d
	sta	___fsmul_PARM_1
	lda	#0xcc
	sta	(___fsmul_PARM_1 + 1)
	sta	(___fsmul_PARM_1 + 2)
	inca
	sta	(___fsmul_PARM_1 + 3)
	lda	_atof_value_65536_57
	sta	___fsmul_PARM_2
	lda	(_atof_value_65536_57 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_atof_value_65536_57 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_value_65536_57 + 3)
	sta	(___fsmul_PARM_2 + 3)
	pshx
	jsr	___fsmul
	sta	(_atof_value_65536_57 + 3)
	stx	(_atof_value_65536_57 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_value_65536_57 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_value_65536_57
	pulx
;../_atof.c:82: iexp++;
	aix	#1
	bra	00116$
00114$:
;../_atof.c:86: value*=10.0;
	lda	#0x41
	sta	___fsmul_PARM_1
	lda	#0x20
	sta	(___fsmul_PARM_1 + 1)
	clra
	sta	(___fsmul_PARM_1 + 2)
	sta	(___fsmul_PARM_1 + 3)
	lda	_atof_value_65536_57
	sta	___fsmul_PARM_2
	lda	(_atof_value_65536_57 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_atof_value_65536_57 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_value_65536_57 + 3)
	sta	(___fsmul_PARM_2 + 3)
	pshx
	jsr	___fsmul
	sta	(_atof_value_65536_57 + 3)
	stx	(_atof_value_65536_57 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_value_65536_57 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_value_65536_57
	pulx
;../_atof.c:87: iexp--;
	decx
	jmp	00116$
00120$:
;../_atof.c:93: if(sign) value*=-1.0;
	lda	_atof_sign_65536_57
	beq	00122$
	lda	_atof_value_65536_57
	eor	#0x80
	sta	_atof_value_65536_57
00122$:
;../_atof.c:94: return (value);
	lda	_atof_value_65536_57
	sta	*___SDCC_hc08_ret3
	lda	(_atof_value_65536_57 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(_atof_value_65536_57 + 2)
	lda	(_atof_value_65536_57 + 3)
;../_atof.c:95: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
