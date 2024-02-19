;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __itoa
	.optsdcc -mds400 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
	.DS80C390
	.amode	2	; 24 bit flat addressing
dpl	=	0x82
dph	=	0x83
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
acc1	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
acon	=	0x9D
mcon	=	0xC6
F1	=	0xD1	; user flag
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
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___uitoa_PARM_2:
	.ds 4
___uitoa_PARM_3:
	.ds 1
___uitoa_sloc0_1_0:
	.ds 1
___uitoa_sloc1_1_0:
	.ds 2
___uitoa_sloc2_1_0:
	.ds 4
___uitoa_sloc3_1_0:
	.ds 4
___itoa_PARM_2:
	.ds 4
___itoa_PARM_3:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;string                    Allocated with name '___uitoa_PARM_2'
;radix                     Allocated with name '___uitoa_PARM_3'
;value                     Allocated to registers r6 r7 
;index                     Allocated to registers 
;i                         Allocated to registers 
;tmp                       Allocated to registers 
;sloc0                     Allocated with name '___uitoa_sloc0_1_0'
;sloc1                     Allocated with name '___uitoa_sloc1_1_0'
;sloc2                     Allocated with name '___uitoa_sloc2_1_0'
;sloc3                     Allocated with name '___uitoa_sloc3_1_0'
;------------------------------------------------------------
;	__itoa.c:42: void __uitoa(unsigned int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __uitoa
;	-----------------------------------------
___uitoa:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r6,dpl
	mov	r7,dph
;	__itoa.c:47: do {
	mov	dptr,#___uitoa_PARM_2
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___uitoa_sloc2_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___uitoa_sloc0_1_0
	clr	a
	movx	@dptr,a
00103$:
;	__itoa.c:48: string[index] = '0' + (value % radix);
	mov	dptr,#___uitoa_sloc0_1_0
	movx	a,@dptr
	mov	r1,a
	movx	a,@dptr
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	r0,a
	mov	dptr,#___uitoa_sloc2_1_0
	movx	a,@dptr
	add	a,r1
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	addc	a,r2
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,r3
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#___uitoa_PARM_3
	mov	dps, #1
	mov	dptr, #___uitoa_sloc1_1_0
	dec	dps
	movx	a,@dptr
	inc	dps
	movx	@dptr,a
	mov     dps, #1
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#___uitoa_sloc1_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__moduint_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r4,dpl
	mov	r5,dph
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
	mov	a,#0x30
	add	a,r4
	mov	r4,a
	mov	dpl,r1
	mov	dph,r2
	mov	dpx,r3
	mov	b,r0
	mov	a,r4
	lcall	__gptrput
;	__itoa.c:49: if (string[index] > '9')
	mov	dpl,r1
	mov	dph,r2
	mov	dpx,r3
	mov	b,r0
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,#0x39
	subb	a,r4
	jnc  00102$
00133$:
;	__itoa.c:50: string[index] += 'A' - '9' - 1;
	mov	dpl,r1
	mov	dph,r2
	mov	dpx,r3
	mov	b,r0
	lcall	__gptrget
	add  a,#0x07
	mov  r4,a
	mov	dpl,r1
	mov	dph,r2
	mov	dpx,r3
	mov	b,r0
	mov	a,r4
	lcall	__gptrput
00102$:
;	__itoa.c:51: value /= radix;
	mov	dptr,#___uitoa_sloc1_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__divuint_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
;	genAssign: resultIsFar = FALSE
	mov	ar6,r2
	mov	ar7,r3
;	__itoa.c:52: ++index;
	mov	dptr,#___uitoa_sloc0_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	__itoa.c:53: } while (value != 0);
	mov	a,r6
	orl	a,r7
	jz	00134$
	ljmp	00103$
00134$:
;	__itoa.c:56: string[index--] = '\0';
	mov	dptr,#___uitoa_sloc0_1_0
	movx	a,@dptr
	dec	a
	mov	r2,a
	mov	dptr,#___uitoa_sloc0_1_0
	movx	a,@dptr
	mov	r3,a
	movx	a,@dptr
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	dptr,#___uitoa_sloc2_1_0
	movx	a,@dptr
	add	a,r3
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,r4
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	addc	a,r5
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
;	__itoa.c:59: while (index > i) {
;	genAssign: resultIsFar = FALSE
	mov	r3,#0x00
00106$:
	clr	c
	mov	a,r3
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00135$
	ljmp	00109$
00135$:
;	__itoa.c:60: char tmp = string[i];
	mov	ar4,r3
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	dptr,#___uitoa_sloc2_1_0
	mov	dps, #1
	mov	dptr, #___uitoa_sloc3_1_0
	dec	dps
	movx	a,@dptr
	add	a,r4
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,r5
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,r6
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	inc	dptr
	movx	a,@dptr
	mov	dps,#1
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#___uitoa_sloc3_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrget
	mov	r7,a
;	__itoa.c:61: string[i] = string[index];
	mov	ar1,r2
	mov	a,r2
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r4,a
	mov	r5,a
	mov	dptr,#___uitoa_sloc2_1_0
	movx	a,@dptr
	add	a,r1
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	addc	a,r0
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	addc	a,r4
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r1
	mov	dph,r0
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#___uitoa_sloc3_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	a,r6
	lcall	__gptrput
;	__itoa.c:62: string[index] = tmp;
	mov	dpl,r1
	mov	dph,r0
	mov	dpx,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
;	__itoa.c:63: ++i;
	inc	r3
;	__itoa.c:64: --index;
	dec	r2
	ljmp	00106$
00109$:
;	__itoa.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__itoa'
;------------------------------------------------------------
;string                    Allocated with name '___itoa_PARM_2'
;radix                     Allocated with name '___itoa_PARM_3'
;value                     Allocated to registers r2 r3 
;------------------------------------------------------------
;	__itoa.c:68: void __itoa(int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __itoa
;	-----------------------------------------
___itoa:
	mov	r2,dpl
	mov	r3,dph
;	__itoa.c:70: if (value < 0 && radix == 10) {
	mov	a,r3
	jnb  acc[7],00102$
00114$:
	mov	dptr,#___itoa_PARM_3
	movx	a,@dptr
	cjne a,#0x0a,00102$
00116$:
;	__itoa.c:71: *string++ = '-';
	mov	dptr,#___itoa_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r6
	mov	b,r7
	mov	a,#0x2d
	lcall	__gptrput
	mov	dptr,#___itoa_PARM_2
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	__itoa.c:72: value = -value;
	clr	c
	clr	a
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
00102$:
;	__itoa.c:74: __uitoa(value, string, radix);
	mov	dptr,#___itoa_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___uitoa_PARM_2
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#___itoa_PARM_3
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#___uitoa_PARM_3
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	lcall	___uitoa
00104$:
;	__itoa.c:75: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
