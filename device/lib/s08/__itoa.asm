;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module __itoa
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
	.globl ___itoa_PARM_3
	.globl ___itoa_PARM_2
	.globl ___uitoa_PARM_3
	.globl ___uitoa_PARM_2
	.globl ___uitoa
	.globl ___itoa
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___uitoa_sloc0_1_0:
	.ds 1
___uitoa_sloc1_1_0:
	.ds 2
___uitoa_sloc2_1_0:
	.ds 2
___uitoa_sloc3_1_0:
	.ds 2
___uitoa_sloc4_1_0:
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
___uitoa_PARM_2:
	.ds 2
___uitoa_PARM_3:
	.ds 1
___uitoa_value_65536_36:
	.ds 2
___uitoa_tmp_131072_39:
	.ds 1
___itoa_PARM_2:
	.ds 2
___itoa_PARM_3:
	.ds 1
___itoa_value_65536_40:
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
;Allocation info for local variables in function '__uitoa'
;------------------------------------------------------------
;sloc0                     Allocated with name '___uitoa_sloc0_1_0'
;sloc1                     Allocated with name '___uitoa_sloc1_1_0'
;sloc2                     Allocated with name '___uitoa_sloc2_1_0'
;sloc3                     Allocated with name '___uitoa_sloc3_1_0'
;sloc4                     Allocated with name '___uitoa_sloc4_1_0'
;string                    Allocated with name '___uitoa_PARM_2'
;radix                     Allocated with name '___uitoa_PARM_3'
;value                     Allocated with name '___uitoa_value_65536_36'
;index                     Allocated to registers 
;i                         Allocated to registers 
;tmp                       Allocated with name '___uitoa_tmp_131072_39'
;------------------------------------------------------------
;../__itoa.c:42: void __uitoa(unsigned int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __uitoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___uitoa:
	sta	(___uitoa_value_65536_36 + 1)
	stx	___uitoa_value_65536_36
;../__itoa.c:47: do {
	mov	#0x00,*___uitoa_sloc0_1_0
00103$:
;../__itoa.c:48: string[index] = '0' + (value % radix);
	lda	*___uitoa_sloc0_1_0
	psha
	rola	
	clra	
	sbc	#0x00
	tax
	pula
	add	(___uitoa_PARM_2 + 1)
	sta	*(___uitoa_sloc1_1_0 + 1)
	txa
	adc	___uitoa_PARM_2
	sta	*___uitoa_sloc1_1_0
	lda	___uitoa_PARM_3
	sta	*(___uitoa_sloc2_1_0 + 1)
	mov	#0x00,*___uitoa_sloc2_1_0
	lda	*___uitoa_sloc2_1_0
	sta	__moduint_PARM_2
	lda	*(___uitoa_sloc2_1_0 + 1)
	sta	(__moduint_PARM_2 + 1)
	lda	(___uitoa_value_65536_36 + 1)
	ldx	___uitoa_value_65536_36
	jsr	__moduint
	add	#0x30
	ldhx	*___uitoa_sloc1_1_0
	sta	,x
;../__itoa.c:49: if (string[index] > '9')
	ldhx	*___uitoa_sloc1_1_0
	lda	,x
	cmp	#0x39
	bls	00102$
;../__itoa.c:50: string[index] += 'A' - '9' - 1;
	add	#0x07
	ldhx	*___uitoa_sloc1_1_0
	sta	,x
00102$:
;../__itoa.c:51: value /= radix;
	lda	*___uitoa_sloc2_1_0
	sta	__divuint_PARM_2
	lda	*(___uitoa_sloc2_1_0 + 1)
	sta	(__divuint_PARM_2 + 1)
	lda	(___uitoa_value_65536_36 + 1)
	ldx	___uitoa_value_65536_36
	jsr	__divuint
	sta	(___uitoa_value_65536_36 + 1)
	stx	___uitoa_value_65536_36
;../__itoa.c:52: ++index;
	inc	*___uitoa_sloc0_1_0
;../__itoa.c:53: } while (value != 0);
	lda	___uitoa_value_65536_36
	ora	(___uitoa_value_65536_36 + 1)
	bne	00103$
;../__itoa.c:56: string[index--] = '\0';
	lda	*___uitoa_sloc0_1_0
	sub	#0x01
	sta	*___uitoa_sloc2_1_0
	lda	*___uitoa_sloc0_1_0
	psha
	rola	
	clra	
	sbc	#0x00
	tax
	pula
	add	(___uitoa_PARM_2 + 1)
	sta	*(___uitoa_sloc1_1_0 + 1)
	txa
	adc	___uitoa_PARM_2
	sta	*___uitoa_sloc1_1_0
	ldhx	*___uitoa_sloc1_1_0
	clra
	sta	,x
;../__itoa.c:59: while (index > i) {
	sta	*___uitoa_sloc1_1_0
00106$:
	lda	*___uitoa_sloc2_1_0
	cmp	*___uitoa_sloc1_1_0
	ble	00109$
;../__itoa.c:60: char tmp = string[i];
	lda	*___uitoa_sloc1_1_0
	psha
	rola	
	clra	
	sbc	#0x00
	tax
	pula
	add	(___uitoa_PARM_2 + 1)
	sta	*(___uitoa_sloc3_1_0 + 1)
	txa
	adc	___uitoa_PARM_2
	sta	*___uitoa_sloc3_1_0
	ldhx	*___uitoa_sloc3_1_0
	lda	,x
	sta	___uitoa_tmp_131072_39
;../__itoa.c:61: string[i] = string[index];
	lda	*___uitoa_sloc2_1_0
	psha
	rola	
	clra	
	sbc	#0x00
	tax
	pula
	add	(___uitoa_PARM_2 + 1)
	sta	*(___uitoa_sloc4_1_0 + 1)
	txa
	adc	___uitoa_PARM_2
	sta	*___uitoa_sloc4_1_0
	ldhx	*___uitoa_sloc4_1_0
	lda	,x
	ldhx	*___uitoa_sloc3_1_0
	sta	,x
;../__itoa.c:62: string[index] = tmp;
	ldhx	*___uitoa_sloc4_1_0
	lda	___uitoa_tmp_131072_39
	sta	,x
;../__itoa.c:63: ++i;
	inc	*___uitoa_sloc1_1_0
;../__itoa.c:64: --index;
	dec	*___uitoa_sloc2_1_0
	bra	00106$
00109$:
;../__itoa.c:66: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__itoa'
;------------------------------------------------------------
;string                    Allocated with name '___itoa_PARM_2'
;radix                     Allocated with name '___itoa_PARM_3'
;value                     Allocated with name '___itoa_value_65536_40'
;------------------------------------------------------------
;../__itoa.c:68: void __itoa(int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __itoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___itoa:
	sta	(___itoa_value_65536_40 + 1)
	stx	___itoa_value_65536_40
;../__itoa.c:70: if (value < 0 && radix == 10) {
	lda	___itoa_value_65536_40
	sub	#0x00
	bge	00102$
	lda	___itoa_PARM_3
	cmp	#0x0a
	bne	00102$
;../__itoa.c:71: *string++ = '-';
	ldhx	___itoa_PARM_2
	pshx
	pshh
	lda	#0x2d
	sta	,x
	pulh
	pulx
	aix	#1
	sthx	___itoa_PARM_2
;../__itoa.c:72: value = -value;
	clra
	sub	(___itoa_value_65536_40 + 1)
	sta	(___itoa_value_65536_40 + 1)
	clra
	sbc	___itoa_value_65536_40
	sta	___itoa_value_65536_40
00102$:
;../__itoa.c:74: __uitoa(value, string, radix);
	ldhx	___itoa_PARM_2
	sthx	___uitoa_PARM_2
	lda	___itoa_PARM_3
	sta	___uitoa_PARM_3
	lda	(___itoa_value_65536_40 + 1)
	ldx	___itoa_value_65536_40
;../__itoa.c:75: }
	jmp	___uitoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
