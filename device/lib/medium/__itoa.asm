;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __itoa
	.optsdcc -mmcs51 --model-medium
	
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
	.ds 2
___uitoa_sloc1_1_0:
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
___uitoa_PARM_2:
	.ds 3
___uitoa_PARM_3:
	.ds 1
___uitoa_value_65536_39:
	.ds 2
___uitoa_i_65536_40:
	.ds 1
___itoa_PARM_2:
	.ds 3
___itoa_PARM_3:
	.ds 1
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
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
	mov	r0,#___uitoa_value_65536_39
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	__itoa.c:47: do {
	mov	r6,#0x00
00103$:
;	__itoa.c:48: string[index] = '0' + (value % radix);
	mov	a,r6
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r0,#___uitoa_PARM_2
	movx	a,@r0
	add	a,r3
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,r4
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	r0,#___uitoa_PARM_3
	movx	a,@r0
	mov	___uitoa_sloc0_1_0,a
	mov	(___uitoa_sloc0_1_0 + 1),#0x00
	mov	r0,#__moduint_PARM_2
	mov	a,___uitoa_sloc0_1_0
	movx	@r0,a
	mov	a,(___uitoa_sloc0_1_0 + 1)
	inc	r0
	movx	@r0,a
	mov	r0,#___uitoa_value_65536_39
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	lcall	__moduint
	mov	r5,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	mov	a,#0x30
	add	a,r5
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	__gptrput
;	__itoa.c:49: if (string[index] > '9')
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	add	a,#0xff - 0x39
	jnc	00102$
;	__itoa.c:50: string[index] += 'A' - '9' - 1;
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	add	a,#0x07
	mov	r7,a
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	__gptrput
00102$:
;	__itoa.c:51: value /= radix;
	mov	r0,#__divuint_PARM_2
	mov	a,___uitoa_sloc0_1_0
	movx	@r0,a
	mov	a,(___uitoa_sloc0_1_0 + 1)
	inc	r0
	movx	@r0,a
	mov	r0,#___uitoa_value_65536_39
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	push	ar6
	lcall	__divuint
	mov	r0,#___uitoa_value_65536_39
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	pop	ar6
;	__itoa.c:52: ++index;
	inc	r6
;	__itoa.c:53: } while (value != 0);
	mov	r0,#___uitoa_value_65536_39
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00134$
	ljmp	00103$
00134$:
;	__itoa.c:56: string[index--] = '\0';
	mov	a,r6
	dec	a
	mov	r7,a
	mov	a,r6
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r0,#___uitoa_PARM_2
	movx	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	movx	a,@r0
	addc	a,r6
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	clr	a
	lcall	__gptrput
;	__itoa.c:59: while (index > i) {
	mov	r0,#___uitoa_i_65536_40
	movx	@r0,a
00106$:
	mov	r0,#___uitoa_i_65536_40
	clr	c
	movx	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	__itoa.c:60: char tmp = string[i];
	mov	r0,#___uitoa_i_65536_40
	movx	a,@r0
	mov	r4,a
	movx	a,@r0
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r0,#___uitoa_PARM_2
	movx	a,@r0
	add	a,r4
	mov	___uitoa_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	addc	a,r5
	mov	(___uitoa_sloc1_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(___uitoa_sloc1_1_0 + 2),a
	mov	dpl,___uitoa_sloc1_1_0
	mov	dph,(___uitoa_sloc1_1_0 + 1)
	mov	b,(___uitoa_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
;	__itoa.c:61: string[i] = string[index];
	mov	a,r7
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r0,#___uitoa_PARM_2
	movx	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,r6
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	dpl,___uitoa_sloc1_1_0
	mov	dph,(___uitoa_sloc1_1_0 + 1)
	mov	b,(___uitoa_sloc1_1_0 + 2)
	lcall	__gptrput
;	__itoa.c:62: string[index] = tmp;
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	__itoa.c:63: ++i;
	mov	r0,#___uitoa_i_65536_40
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
;	__itoa.c:64: --index;
	dec	r7
	sjmp	00106$
00109$:
;	__itoa.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__itoa'
;------------------------------------------------------------
;	__itoa.c:68: void __itoa(int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __itoa
;	-----------------------------------------
___itoa:
	mov	r6,dpl
;	__itoa.c:70: if (value < 0 && radix == 10) {
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00102$
	mov	r0,#___itoa_PARM_3
	movx	a,@r0
	cjne	a,#0x0a,00102$
;	__itoa.c:71: *string++ = '-';
	mov	r0,#___itoa_PARM_2
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x2d
	lcall	__gptrput
	mov	r0,#___itoa_PARM_2
	mov	a,#0x01
	add	a,r3
	movx	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
;	__itoa.c:72: value = -value;
	clr	c
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
00102$:
;	__itoa.c:74: __uitoa(value, string, radix);
	mov	r0,#___itoa_PARM_2
	mov	r1,#___uitoa_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	r0,#___itoa_PARM_3
	mov	r1,#___uitoa_PARM_3
	movx	a,@r0
	movx	@r1,a
	mov	dpl,r6
	mov	dph,r7
;	__itoa.c:75: }
	ljmp	___uitoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
