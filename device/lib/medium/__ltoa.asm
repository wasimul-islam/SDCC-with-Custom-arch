;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __ltoa
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ltoa_PARM_3
	.globl ___ltoa_PARM_2
	.globl ___ultoa_PARM_3
	.globl ___ultoa_PARM_2
	.globl ___ultoa
	.globl ___ltoa
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
___ultoa_sloc0_1_0:
	.ds 4
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
___ultoa_PARM_2:
	.ds 3
___ultoa_PARM_3:
	.ds 1
___ultoa_value_65536_39:
	.ds 4
___ultoa_buffer_65536_40:
	.ds 32
___ltoa_PARM_2:
	.ds 3
___ltoa_PARM_3:
	.ds 1
___ltoa_value_65536_43:
	.ds 4
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
;Allocation info for local variables in function '__ultoa'
;------------------------------------------------------------
;sloc0                     Allocated with name '___ultoa_sloc0_1_0'
;------------------------------------------------------------
;	__ltoa.c:58: void __ultoa(unsigned long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __ultoa
;	-----------------------------------------
___ultoa:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	r0,#___ultoa_value_65536_39
	mov	a,r7
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
;	__ltoa.c:63: do {
	mov	r3,#0x20
00103$:
;	__ltoa.c:64: unsigned char c = '0' + (value % radix);
	mov	r0,#___ultoa_PARM_3
	movx	a,@r0
	mov	___ultoa_sloc0_1_0,a
	mov	(___ultoa_sloc0_1_0 + 1),#0x00
	mov	(___ultoa_sloc0_1_0 + 2),#0x00
	mov	(___ultoa_sloc0_1_0 + 3),#0x00
	mov	r0,#__modulong_PARM_2
	mov	a,___ultoa_sloc0_1_0
	movx	@r0,a
	mov	a,(___ultoa_sloc0_1_0 + 1)
	inc	r0
	movx	@r0,a
	mov	a,(___ultoa_sloc0_1_0 + 2)
	inc	r0
	movx	@r0,a
	mov	a,(___ultoa_sloc0_1_0 + 3)
	inc	r0
	movx	@r0,a
	mov	r0,#___ultoa_value_65536_39
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	ar3
	lcall	__modulong
	mov	r4,dpl
	mov	r7,a
	pop	ar3
	mov	a,#0x30
	add	a,r4
;	__ltoa.c:65: if (c > (unsigned char)'9')
	mov  r7,a
	add	a,#0xff - 0x39
	jnc	00102$
;	__ltoa.c:66: c += 'A' - '9' - 1;
	mov	ar6,r7
	mov	a,#0x07
	add	a,r6
	mov	r7,a
00102$:
;	__ltoa.c:67: buffer[--index] = c;
	dec	r3
	mov	a,r3
	add	a,#___ultoa_buffer_65536_40
	mov	r0,a
	mov	a,r7
	movx	@r0,a
;	__ltoa.c:68: value /= radix;
	mov	r0,#__divulong_PARM_2
	mov	a,___ultoa_sloc0_1_0
	movx	@r0,a
	mov	a,(___ultoa_sloc0_1_0 + 1)
	inc	r0
	movx	@r0,a
	mov	a,(___ultoa_sloc0_1_0 + 2)
	inc	r0
	movx	@r0,a
	mov	a,(___ultoa_sloc0_1_0 + 3)
	inc	r0
	movx	@r0,a
	mov	r0,#___ultoa_value_65536_39
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	ar3
	lcall	__divulong
	mov	r0,#___ultoa_value_65536_39
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	ar3
;	__ltoa.c:69: } while (value);
	mov	r0,#___ultoa_value_65536_39
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	b,a
	inc	r0
	movx	a,@r0
	orl	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00133$
	ljmp	00103$
00133$:
;	__ltoa.c:71: do {
	mov	r0,#___ultoa_PARM_2
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	ar4,r3
00106$:
;	__ltoa.c:72: *string++ = buffer[index];
	mov	a,r4
	add	a,#___ultoa_buffer_65536_40
	mov	r1,a
	movx	a,@r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	__ltoa.c:73: } while ( ++index != NUMBER_OF_DIGITS );
	inc	r4
	cjne	r4,#0x20,00106$
;	__ltoa.c:75: *string = 0;  /* string terminator */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	__ltoa.c:76: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function '__ltoa'
;------------------------------------------------------------
;	__ltoa.c:78: void __ltoa(long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __ltoa
;	-----------------------------------------
___ltoa:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	r0,#___ltoa_value_65536_43
	mov	a,r7
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
;	__ltoa.c:80: if (value < 0 && radix == 10) {
	mov	r0,#(___ltoa_value_65536_43 + 3)
	movx	a,@r0
	jnb	acc.7,00102$
	mov	r0,#___ltoa_PARM_3
	movx	a,@r0
	cjne	a,#0x0a,00102$
;	__ltoa.c:81: *string++ = '-';
	mov	r0,#___ltoa_PARM_2
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,#0x2d
	lcall	__gptrput
	mov	r0,#___ltoa_PARM_2
	mov	a,#0x01
	add	a,r2
	movx	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	__ltoa.c:82: value = -value;
	mov	r0,#___ltoa_value_65536_43
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	movx	@r0,a
00102$:
;	__ltoa.c:84: __ultoa(value, string, radix);
	mov	r0,#___ltoa_PARM_2
	mov	r1,#___ultoa_PARM_2
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
	mov	r0,#___ltoa_PARM_3
	mov	r1,#___ultoa_PARM_3
	movx	a,@r0
	movx	@r1,a
	mov	r0,#___ltoa_value_65536_43
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
;	__ltoa.c:85: }
	ljmp	___ultoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
