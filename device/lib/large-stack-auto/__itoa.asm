;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __itoa
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;string                    Allocated to stack - _bp -5
;radix                     Allocated to stack - _bp -6
;value                     Allocated to stack - _bp +1
;index                     Allocated to registers 
;i                         Allocated to stack - _bp +8
;tmp                       Allocated to registers r3 
;sloc0                     Allocated to stack - _bp +3
;sloc1                     Allocated to stack - _bp +5
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
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	__itoa.c:47: do {
	mov	r6,#0x00
00103$:
;	__itoa.c:48: string[index] = '0' + (value % radix);
	mov	a,r6
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r2,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__moduint
	mov	r5,dpl
	dec	sp
	dec	sp
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
	push	ar6
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__divuint
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar6
;	__itoa.c:52: ++index;
	inc	r6
;	__itoa.c:53: } while (value != 0);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
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
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	clr	a
	lcall	__gptrput
;	__itoa.c:59: while (index > i) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x00
00106$:
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	__itoa.c:60: char tmp = string[i];
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,r4
	add	a,@r0
	mov	@r1,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
;	__itoa.c:61: string[i] = string[index];
	mov	a,r7
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	__itoa.c:62: string[index] = tmp;
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	__itoa.c:63: ++i;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	inc	@r0
;	__itoa.c:64: --index;
	dec	r7
	ljmp	00106$
00109$:
;	__itoa.c:66: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__itoa'
;------------------------------------------------------------
;string                    Allocated to stack - _bp -5
;radix                     Allocated to stack - _bp -6
;value                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	__itoa.c:68: void __itoa(int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __itoa
;	-----------------------------------------
___itoa:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
;	__itoa.c:70: if (value < 0 && radix == 10) {
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00102$
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	cjne	@r0,#0x0a,00102$
;	__itoa.c:71: *string++ = '-';
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x2d
	lcall	__gptrput
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
	clr	a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
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
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	___uitoa
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	__itoa.c:75: }
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
