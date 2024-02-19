;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _atof
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
	.globl _toupper
	.globl _isspace
	.globl _atof
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_atof_sloc0_1_0:
	.ds 2
_atof_sloc1_1_0:
	.ds 1
_atof_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_atof_value_65536_57:
	.ds 4
_atof_fraction_65536_57:
	.ds 4
_atof_iexp_65536_57:
	.ds 1
_atof_sign_65536_57:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'atof'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atof_sloc0_1_0'
;sloc1                     Allocated with name '_atof_sloc1_1_0'
;sloc2                     Allocated with name '_atof_sloc2_1_0'
;s                         Allocated to registers 
;__1310720004              Allocated to registers 
;value                     Allocated with name '_atof_value_65536_57'
;fraction                  Allocated with name '_atof_fraction_65536_57'
;iexp                      Allocated with name '_atof_iexp_65536_57'
;sign                      Allocated with name '_atof_sign_65536_57'
;__1966080005              Allocated to registers 
;c                         Allocated to registers 
;__1966080007              Allocated to registers 
;__2621440008              Allocated to registers 
;c                         Allocated to registers 
;------------------------------------------------------------
;	../_atof.c: 33: float atof(const char * s)
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atof:
	sta	*_atof_sloc0_1_0
	stx	*(_atof_sloc0_1_0 + 1)
;	../_atof.c: 40: while (isspace(*s)) s++;
00101$:
	ldy	#0x00
	lda	[*_atof_sloc0_1_0],y
	ldx	#0x00
	jsr	_isspace
	cmp	#0x00
	bne	00220$
	cpx	#0x00
00220$:
	beq	00155$
	inc	*_atof_sloc0_1_0
	bne	00101$
	inc	*(_atof_sloc0_1_0 + 1)
	jmp	00101$
00155$:
	lda	*_atof_sloc0_1_0
	ldx	*(_atof_sloc0_1_0 + 1)
;	../_atof.c: 43: if (*s == '-')
	sta	*(__TEMP+0)
	ldy	#0x00
	lda	[*_atof_sloc0_1_0],y
	tay
	lda	*(__TEMP+0)
	cpy	#0x2d
	bne	00107$
;	../_atof.c: 45: sign=1;
	ldx	#0x01
	stx	_atof_sign_65536_57
;	../_atof.c: 46: s++;
	lda	*_atof_sloc0_1_0
	ldx	*(_atof_sloc0_1_0 + 1)
	clc
	adc	#0x01
	bcc	00108$
	inx
	jmp	00108$
00107$:
;	../_atof.c: 50: sign=0;
	pha
	lda	#0x00
	sta	_atof_sign_65536_57
	pla
;	../_atof.c: 51: if (*s == '+') s++;
	cpy	#0x2b
	bne	00108$
	lda	*_atof_sloc0_1_0
	ldx	*(_atof_sloc0_1_0 + 1)
	clc
	adc	#0x01
	bcc	00226$
	inx
00226$:
00108$:
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
	ldy	#0x00
	sty	_atof_value_65536_57
	sty	(_atof_value_65536_57 + 1)
	sty	(_atof_value_65536_57 + 2)
	sty	(_atof_value_65536_57 + 3)
	sta	*_atof_sloc0_1_0
	stx	*(_atof_sloc0_1_0 + 1)
00126$:
	ldy	#0x00
	lda	[*_atof_sloc0_1_0],y
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cmp	#0x30
	bcs	00227$
	jmp	00156$
00227$:
	cmp	#0x39
	beq	00228$
	bcc	00228$
	jmp	00156$
00228$:
;	../_atof.c: 57: value=10.0*value+(*s-'0');
	sty	___fsmul_PARM_1
	sty	(___fsmul_PARM_1 + 1)
	ldx	#0x20
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x41
	stx	(___fsmul_PARM_1 + 3)
	lda	_atof_value_65536_57
	sta	___fsmul_PARM_2
	lda	(_atof_value_65536_57 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_atof_value_65536_57 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_value_65536_57 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	*_atof_sloc2_1_0
	stx	*(_atof_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atof_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atof_sloc2_1_0 + 3)
	ldy	#0x00
	lda	[*_atof_sloc0_1_0],y
	ldx	#0x00
	sec
	sbc	#0x30
	bcs	00230$
	dex
00230$:
	jsr	___sint2fs
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
	lda	*_atof_sloc2_1_0
	sta	___fsadd_PARM_1
	lda	*(_atof_sloc2_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_atof_sloc2_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_atof_sloc2_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	_atof_value_65536_57
	stx	(_atof_value_65536_57 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atof_value_65536_57 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atof_value_65536_57 + 3)
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
	inc	*_atof_sloc0_1_0
	bne	00231$
	inc	*(_atof_sloc0_1_0 + 1)
00231$:
	jmp	00126$
00156$:
	lda	*_atof_sloc0_1_0
	sta	*_atof_sloc2_1_0
	lda	*(_atof_sloc0_1_0 + 1)
	sta	*(_atof_sloc2_1_0 + 1)
;	../_atof.c: 61: if (*s == '.')
	ldy	#0x00
	lda	[*_atof_sloc0_1_0],y
	cmp	#0x2e
	beq	00232$
	jmp	00112$
00232$:
;	../_atof.c: 63: s++;
	inc	*_atof_sloc0_1_0
	bne	00233$
	inc	*(_atof_sloc0_1_0 + 1)
00233$:
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
	ldx	#0xcd
	stx	_atof_fraction_65536_57
	dex
	stx	(_atof_fraction_65536_57 + 1)
	stx	(_atof_fraction_65536_57 + 2)
	ldx	#0x3d
	stx	(_atof_fraction_65536_57 + 3)
00129$:
	ldy	#0x00
	lda	[*_atof_sloc0_1_0],y
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cmp	#0x30
	bcs	00234$
	jmp	00157$
00234$:
	cmp	#0x39
	beq	00235$
	bcc	00235$
	jmp	00157$
00235$:
;	../_atof.c: 66: value+=(*s-'0')*fraction;
	lda	[*_atof_sloc0_1_0],y
	ldx	#0x00
	sec
	sbc	#0x30
	bcs	00237$
	dex
00237$:
	jsr	___sint2fs
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
	lda	_atof_fraction_65536_57
	sta	___fsmul_PARM_2
	lda	(_atof_fraction_65536_57 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_atof_fraction_65536_57 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_fraction_65536_57 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
	lda	_atof_value_65536_57
	sta	___fsadd_PARM_1
	lda	(_atof_value_65536_57 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	(_atof_value_65536_57 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(_atof_value_65536_57 + 3)
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	_atof_value_65536_57
	stx	(_atof_value_65536_57 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atof_value_65536_57 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atof_value_65536_57 + 3)
;	../_atof.c: 67: fraction*=0.1;
	ldx	#0xcd
	stx	___fsmul_PARM_1
	dex
	stx	(___fsmul_PARM_1 + 1)
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3d
	stx	(___fsmul_PARM_1 + 3)
	lda	_atof_fraction_65536_57
	sta	___fsmul_PARM_2
	lda	(_atof_fraction_65536_57 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_atof_fraction_65536_57 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_fraction_65536_57 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	_atof_fraction_65536_57
	stx	(_atof_fraction_65536_57 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atof_fraction_65536_57 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atof_fraction_65536_57 + 3)
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
	inc	*_atof_sloc0_1_0
	bne	00238$
	inc	*(_atof_sloc0_1_0 + 1)
00238$:
	jmp	00129$
00157$:
	lda	*_atof_sloc0_1_0
	sta	*_atof_sloc2_1_0
	lda	*(_atof_sloc0_1_0 + 1)
	sta	*(_atof_sloc2_1_0 + 1)
00112$:
;	../_atof.c: 72: if (toupper(*s)=='E')
	ldy	#0x00
	lda	[*_atof_sloc2_1_0],y
	ldx	#0x00
	jsr	_toupper
	cmp	#0x45
	bne	00240$
	cpx	#0x00
	beq	00241$
00240$:
	jmp	00120$
00241$:
;	../_atof.c: 74: s++;
	lda	*_atof_sloc2_1_0
	ldx	*(_atof_sloc2_1_0 + 1)
	clc
	adc	#0x01
	bcc	00242$
	inx
00242$:
;	../_atof.c: 75: iexp=(signed char)atoi(s);
	jsr	_atoi
	sta	_atof_iexp_65536_57
;	../_atof.c: 77: while(iexp!=0)
00116$:
	lda	_atof_iexp_65536_57
	bne	00243$
	jmp	00120$
00243$:
;	../_atof.c: 79: if(iexp<0)
	lda	_atof_iexp_65536_57
	sec
	sbc	#0x00
	bvc	00245$
	bpl	00244$
	bmi	00114$
00245$:
	bpl	00114$
00244$:
;	../_atof.c: 81: value*=0.1;
	ldx	#0xcd
	stx	___fsmul_PARM_1
	dex
	stx	(___fsmul_PARM_1 + 1)
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3d
	stx	(___fsmul_PARM_1 + 3)
	lda	_atof_value_65536_57
	sta	___fsmul_PARM_2
	lda	(_atof_value_65536_57 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_atof_value_65536_57 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_value_65536_57 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	_atof_value_65536_57
	stx	(_atof_value_65536_57 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atof_value_65536_57 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atof_value_65536_57 + 3)
;	../_atof.c: 82: iexp++;
	inc	_atof_iexp_65536_57
	jmp	00116$
00114$:
;	../_atof.c: 86: value*=10.0;
	ldx	#0x00
	stx	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x20
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x41
	stx	(___fsmul_PARM_1 + 3)
	lda	_atof_value_65536_57
	sta	___fsmul_PARM_2
	lda	(_atof_value_65536_57 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_atof_value_65536_57 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_value_65536_57 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	_atof_value_65536_57
	stx	(_atof_value_65536_57 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atof_value_65536_57 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atof_value_65536_57 + 3)
;	../_atof.c: 87: iexp--;
	dec	_atof_iexp_65536_57
	jmp	00116$
00120$:
;	../_atof.c: 93: if(sign) value*=-1.0;
	lda	_atof_sign_65536_57
	beq	00122$
	lda	(_atof_value_65536_57 + 3)
	eor	#0x80
	sta	(_atof_value_65536_57 + 3)
00122$:
;	../_atof.c: 94: return (value);
	lda	(_atof_value_65536_57 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_atof_value_65536_57 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_atof_value_65536_57 + 1)
	lda	_atof_value_65536_57
;	../_atof.c: 95: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
