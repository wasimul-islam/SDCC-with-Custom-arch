;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module __ltoa
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
	.globl ___ltoa_PARM_3
	.globl ___ltoa_PARM_2
	.globl ___ltoa_PARM_1
	.globl ___ultoa_PARM_3
	.globl ___ultoa_PARM_2
	.globl ___ultoa_PARM_1
	.globl ___ultoa
	.globl ___ltoa
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___ultoa_sloc0_1_0:
	.ds 1
___ultoa_sloc1_1_0:
	.ds 4
___ultoa_sloc2_1_0:
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
___ultoa_PARM_1:
	.ds 4
___ultoa_PARM_2:
	.ds 2
___ultoa_PARM_3:
	.ds 1
___ultoa_buffer_65536_37:
	.ds 32
___ltoa_PARM_1:
	.ds 4
___ltoa_PARM_2:
	.ds 2
___ltoa_PARM_3:
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
;Allocation info for local variables in function '__ultoa'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ultoa_sloc0_1_0'
;sloc1                     Allocated with name '___ultoa_sloc1_1_0'
;sloc2                     Allocated with name '___ultoa_sloc2_1_0'
;value                     Allocated with name '___ultoa_PARM_1'
;string                    Allocated with name '___ultoa_PARM_2'
;radix                     Allocated with name '___ultoa_PARM_3'
;buffer                    Allocated with name '___ultoa_buffer_65536_37'
;index                     Allocated to registers 
;c                         Allocated to registers a 
;------------------------------------------------------------
;../__ltoa.c:58: void __ultoa(unsigned long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __ultoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ultoa:
;../__ltoa.c:63: do {
	mov	#0x20,*___ultoa_sloc0_1_0
00103$:
;../__ltoa.c:64: unsigned char c = '0' + (value % radix);
	lda	___ultoa_PARM_3
	sta	*(___ultoa_sloc1_1_0 + 3)
	mov	#0x00,*(___ultoa_sloc1_1_0 + 2)
	mov	#0x00,*(___ultoa_sloc1_1_0 + 1)
	mov	#0x00,*___ultoa_sloc1_1_0
	ldhx	___ultoa_PARM_1
	sthx	__modulong_PARM_1
	ldhx	(___ultoa_PARM_1 + 2)
	sthx	(__modulong_PARM_1 + 2)
	lda	*___ultoa_sloc1_1_0
	sta	__modulong_PARM_2
	lda	*(___ultoa_sloc1_1_0 + 1)
	sta	(__modulong_PARM_2 + 1)
	lda	*(___ultoa_sloc1_1_0 + 2)
	sta	(__modulong_PARM_2 + 2)
	lda	*(___ultoa_sloc1_1_0 + 3)
	sta	(__modulong_PARM_2 + 3)
	jsr	__modulong
	sta	*(___ultoa_sloc2_1_0 + 3)
	stx	*(___ultoa_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___ultoa_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___ultoa_sloc2_1_0
	lda	*(___ultoa_sloc2_1_0 + 3)
	add	#0x30
;../__ltoa.c:65: if (c > (unsigned char)'9')
	cmp	#0x39
	bls	00102$
;../__ltoa.c:66: c += 'A' - '9' - 1;
	add	#0x07
00102$:
;../__ltoa.c:67: buffer[--index] = c;
	dec	*___ultoa_sloc0_1_0
	ldx	*___ultoa_sloc0_1_0
	clrh
	sta	(___ultoa_buffer_65536_37),x
;../__ltoa.c:68: value /= radix;
	ldhx	___ultoa_PARM_1
	sthx	__divulong_PARM_1
	ldhx	(___ultoa_PARM_1 + 2)
	sthx	(__divulong_PARM_1 + 2)
	lda	*___ultoa_sloc1_1_0
	sta	__divulong_PARM_2
	lda	*(___ultoa_sloc1_1_0 + 1)
	sta	(__divulong_PARM_2 + 1)
	lda	*(___ultoa_sloc1_1_0 + 2)
	sta	(__divulong_PARM_2 + 2)
	lda	*(___ultoa_sloc1_1_0 + 3)
	sta	(__divulong_PARM_2 + 3)
	jsr	__divulong
	sta	(___ultoa_PARM_1 + 3)
	stx	(___ultoa_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___ultoa_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___ultoa_PARM_1
;../__ltoa.c:69: } while (value);
	lda	___ultoa_PARM_1
	ora	(___ultoa_PARM_1 + 1)
	ora	(___ultoa_PARM_1 + 2)
	ora	(___ultoa_PARM_1 + 3)
	beq	00138$
	jmp	00103$
00138$:
;../__ltoa.c:71: do {
	ldhx	___ultoa_PARM_2
	sthx	*___ultoa_sloc2_1_0
	lda	*___ultoa_sloc0_1_0
00106$:
;../__ltoa.c:72: *string++ = buffer[index];
	tax
	clrh
	ldx	(___ultoa_buffer_65536_37),x
	psha
	txa
	ldhx	*___ultoa_sloc2_1_0
	sta	,x
	aix	#1
	sthx	*___ultoa_sloc2_1_0
	pula
;../__ltoa.c:73: } while ( ++index != NUMBER_OF_DIGITS );
	inca
	cmp	#0x20
	bne	00106$
;../__ltoa.c:75: *string = 0;  /* string terminator */
	ldhx	*___ultoa_sloc2_1_0
	clra
	sta	,x
;../__ltoa.c:76: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '__ltoa'
;------------------------------------------------------------
;value                     Allocated with name '___ltoa_PARM_1'
;string                    Allocated with name '___ltoa_PARM_2'
;radix                     Allocated with name '___ltoa_PARM_3'
;------------------------------------------------------------
;../__ltoa.c:78: void __ltoa(long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __ltoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ltoa:
;../__ltoa.c:80: if (value < 0 && radix == 10) {
	lda	___ltoa_PARM_1
	sub	#0x00
	bge	00102$
	lda	___ltoa_PARM_3
	cmp	#0x0a
	bne	00102$
;../__ltoa.c:81: *string++ = '-';
	ldhx	___ltoa_PARM_2
	pshx
	pshh
	lda	#0x2d
	sta	,x
	pulh
	pulx
	aix	#1
	sthx	___ltoa_PARM_2
;../__ltoa.c:82: value = -value;
	clra
	sub	(___ltoa_PARM_1 + 3)
	sta	(___ltoa_PARM_1 + 3)
	clra
	sbc	(___ltoa_PARM_1 + 2)
	sta	(___ltoa_PARM_1 + 2)
	clra
	sbc	(___ltoa_PARM_1 + 1)
	sta	(___ltoa_PARM_1 + 1)
	clra
	sbc	___ltoa_PARM_1
	sta	___ltoa_PARM_1
00102$:
;../__ltoa.c:84: __ultoa(value, string, radix);
	ldhx	___ltoa_PARM_1
	sthx	___ultoa_PARM_1
	ldhx	(___ltoa_PARM_1 + 2)
	sthx	(___ultoa_PARM_1 + 2)
	ldhx	___ltoa_PARM_2
	sthx	___ultoa_PARM_2
	lda	___ltoa_PARM_3
	sta	___ultoa_PARM_3
;../__ltoa.c:85: }
	jmp	___ultoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
