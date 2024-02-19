;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __itoa
	.optsdcc -mmcs51 --model-large
	
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
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
___uitoa_sloc0_1_0:
	.ds 1
___uitoa_sloc1_1_0:
	.ds 2
___uitoa_sloc2_1_0:
	.ds 3
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
	.ds 3
___uitoa_PARM_3:
	.ds 1
___uitoa_value_65536_39:
	.ds 2
___itoa_PARM_2:
	.ds 3
___itoa_PARM_3:
	.ds 1
___itoa_value_65536_43:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
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
;string                    Allocated with name '___uitoa_PARM_2'
;radix                     Allocated with name '___uitoa_PARM_3'
;value                     Allocated with name '___uitoa_value_65536_39'
;index                     Allocated with name '___uitoa_index_65536_40'
;i                         Allocated with name '___uitoa_i_65536_40'
;tmp                       Allocated with name '___uitoa_tmp_131072_42'
;------------------------------------------------------------
;	__itoa.c:42: void __uitoa(unsigned int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __uitoa
;	-----------------------------------------
___uitoa:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#___uitoa_value_65536_39
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	__itoa.c:47: do {
	mov	dptr,#___uitoa_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#___uitoa_PARM_3
	movx	a,@dptr
	mov	___uitoa_sloc0_1_0,a
	mov	r3,#0x00
00103$:
;	__itoa.c:48: string[index] = '0' + (value % radix);
	mov	a,r3
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r1
	add	a,r5
	mov	r1,a
	mov	a,r2
	addc	a,r6
	mov	r0,a
	mov	ar2,r7
	push	ar3
	mov	dptr,#___uitoa_value_65536_39
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	___uitoa_sloc1_1_0,___uitoa_sloc0_1_0
	mov	(___uitoa_sloc1_1_0 + 1),#0x00
	mov	dptr,#__moduint_PARM_2
	mov	a,___uitoa_sloc1_1_0
	movx	@dptr,a
	mov	a,(___uitoa_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	push	ar0
	lcall	__moduint
	mov	r3,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r3
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
	lcall	__gptrput
;	__itoa.c:49: if (string[index] > '9')
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,#0x39
	subb	a,r4
	pop	ar3
	jnc	00102$
;	__itoa.c:50: string[index] += 'A' - '9' - 1;
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
	lcall	__gptrget
	add	a,#0x07
	mov	r4,a
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
	lcall	__gptrput
00102$:
;	__itoa.c:51: value /= radix;
	mov	dptr,#___uitoa_value_65536_39
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#__divuint_PARM_2
	mov	a,___uitoa_sloc1_1_0
	movx	@dptr,a
	mov	a,(___uitoa_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#___uitoa_value_65536_39
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	__itoa.c:52: ++index;
	inc	r3
;	__itoa.c:53: } while (value != 0);
	mov	dptr,#___uitoa_value_65536_39
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00134$
	ljmp	00103$
00134$:
;	__itoa.c:56: string[index--] = '\0';
	mov	a,r3
	dec	a
	mov	r4,a
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r3
	add	a,r5
	mov	r1,a
	mov	a,r2
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	clr	a
	lcall	__gptrput
;	__itoa.c:59: while (index > i) {
	mov	r3,a
00106$:
	clr	c
	mov	a,r3
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	__itoa.c:60: char tmp = string[i];
	mov	a,r3
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r1
	add	a,r5
	mov	___uitoa_sloc2_1_0,a
	mov	a,r2
	addc	a,r6
	mov	(___uitoa_sloc2_1_0 + 1),a
	mov	(___uitoa_sloc2_1_0 + 2),r7
	mov	dpl,___uitoa_sloc2_1_0
	mov	dph,(___uitoa_sloc2_1_0 + 1)
	mov	b,(___uitoa_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	___uitoa_sloc1_1_0,a
;	__itoa.c:61: string[i] = string[index];
	mov	a,r4
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	a,r0
	add	a,r5
	mov	r0,a
	mov	a,r1
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,___uitoa_sloc2_1_0
	mov	dph,(___uitoa_sloc2_1_0 + 1)
	mov	b,(___uitoa_sloc2_1_0 + 2)
	lcall	__gptrput
;	__itoa.c:62: string[index] = tmp;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,___uitoa_sloc1_1_0
	lcall	__gptrput
;	__itoa.c:63: ++i;
	inc	r3
;	__itoa.c:64: --index;
	dec	r4
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00106$
00109$:
;	__itoa.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__itoa'
;------------------------------------------------------------
;string                    Allocated with name '___itoa_PARM_2'
;radix                     Allocated with name '___itoa_PARM_3'
;value                     Allocated with name '___itoa_value_65536_43'
;------------------------------------------------------------
;	__itoa.c:68: void __itoa(int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __itoa
;	-----------------------------------------
___itoa:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#___itoa_value_65536_43
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	__itoa.c:70: if (value < 0 && radix == 10) {
	mov	dptr,#___itoa_value_65536_43
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00102$
	mov	dptr,#___itoa_PARM_3
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x0a,00102$
;	__itoa.c:71: *string++ = '-';
	mov	dptr,#___itoa_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x2d
	lcall	__gptrput
	mov	dptr,#___itoa_PARM_2
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	__itoa.c:72: value = -value;
	mov	dptr,#___itoa_value_65536_43
	clr	c
	clr	a
	subb	a,r6
	movx	@dptr,a
	clr	a
	subb	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	__itoa.c:74: __uitoa(value, string, radix);
	mov	dptr,#___itoa_value_65536_43
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#___itoa_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#___itoa_PARM_3
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#___uitoa_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___uitoa_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
;	__itoa.c:75: }
	ljmp	___uitoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
