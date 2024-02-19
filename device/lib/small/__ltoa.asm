;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __ltoa
	.optsdcc -mmcs51 --model-small
	
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
___ultoa_PARM_2:
	.ds 3
___ultoa_PARM_3:
	.ds 1
___ultoa_value_65536_39:
	.ds 4
___ltoa_PARM_2:
	.ds 3
___ltoa_PARM_3:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
___ultoa_buffer_65536_40:
	.ds 32
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
;Allocation info for local variables in function '__ultoa'
;------------------------------------------------------------
;string                    Allocated with name '___ultoa_PARM_2'
;radix                     Allocated with name '___ultoa_PARM_3'
;value                     Allocated with name '___ultoa_value_65536_39'
;index                     Allocated to registers 
;c                         Allocated to registers r7 
;buffer                    Allocated with name '___ultoa_buffer_65536_40'
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
	mov	___ultoa_value_65536_39,dpl
	mov	(___ultoa_value_65536_39 + 1),dph
	mov	(___ultoa_value_65536_39 + 2),b
	mov	(___ultoa_value_65536_39 + 3),a
;	__ltoa.c:61: unsigned char index = NUMBER_OF_DIGITS;
	mov	r3,#0x20
;	__ltoa.c:63: do {
00103$:
;	__ltoa.c:64: unsigned char c = '0' + (value % radix);
	mov	__modulong_PARM_2,___ultoa_PARM_3
	mov	(__modulong_PARM_2 + 1),#0x00
	mov	(__modulong_PARM_2 + 2),#0x00
	mov	(__modulong_PARM_2 + 3),#0x00
	mov	dpl,___ultoa_value_65536_39
	mov	dph,(___ultoa_value_65536_39 + 1)
	mov	b,(___ultoa_value_65536_39 + 2)
	mov	a,(___ultoa_value_65536_39 + 3)
	push	ar3
	lcall	__modulong
	mov	r2,dpl
	mov	r7,a
	pop	ar3
	mov	a,#0x30
	add	a,r2
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
	mov	@r0,ar7
;	__ltoa.c:68: value /= radix;
	mov	__divulong_PARM_2,___ultoa_PARM_3
	mov	(__divulong_PARM_2 + 1),#0x00
	mov	(__divulong_PARM_2 + 2),#0x00
	mov	(__divulong_PARM_2 + 3),#0x00
	mov	dpl,___ultoa_value_65536_39
	mov	dph,(___ultoa_value_65536_39 + 1)
	mov	b,(___ultoa_value_65536_39 + 2)
	mov	a,(___ultoa_value_65536_39 + 3)
	push	ar3
	lcall	__divulong
	mov	___ultoa_value_65536_39,dpl
	mov	(___ultoa_value_65536_39 + 1),dph
	mov	(___ultoa_value_65536_39 + 2),b
	mov	(___ultoa_value_65536_39 + 3),a
	pop	ar3
;	__ltoa.c:69: } while (value);
	mov	a,___ultoa_value_65536_39
	orl	a,(___ultoa_value_65536_39 + 1)
	orl	a,(___ultoa_value_65536_39 + 2)
	orl	a,(___ultoa_value_65536_39 + 3)
	jnz	00103$
;	__ltoa.c:71: do {
	mov	ar7,r3
	mov	r4,___ultoa_PARM_2
	mov	r5,(___ultoa_PARM_2 + 1)
	mov	r6,(___ultoa_PARM_2 + 2)
00106$:
;	__ltoa.c:72: *string++ = buffer[index];
	mov	a,r7
	add	a,#___ultoa_buffer_65536_40
	mov	r1,a
	mov	ar3,@r1
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
;	__ltoa.c:73: } while ( ++index != NUMBER_OF_DIGITS );
	inc	r7
	cjne	r7,#0x20,00106$
;	__ltoa.c:75: *string = 0;  /* string terminator */
	mov	___ultoa_PARM_2,r4
	mov	(___ultoa_PARM_2 + 1),r5
	mov	(___ultoa_PARM_2 + 2),r6
	mov	r5,___ultoa_PARM_2
	mov	r6,(___ultoa_PARM_2 + 1)
	mov	r7,(___ultoa_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	__ltoa.c:76: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function '__ltoa'
;------------------------------------------------------------
;string                    Allocated with name '___ltoa_PARM_2'
;radix                     Allocated with name '___ltoa_PARM_3'
;value                     Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	__ltoa.c:78: void __ltoa(long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __ltoa
;	-----------------------------------------
___ltoa:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
;	__ltoa.c:80: if (value < 0 && radix == 10) {
	mov	r7,a
	jnb	acc.7,00102$
	mov	a,#0x0a
	cjne	a,___ltoa_PARM_3,00102$
;	__ltoa.c:81: *string++ = '-';
	mov	r1,___ltoa_PARM_2
	mov	r2,(___ltoa_PARM_2 + 1)
	mov	r3,(___ltoa_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x2d
	lcall	__gptrput
	mov	a,#0x01
	add	a,r1
	mov	___ltoa_PARM_2,a
	clr	a
	addc	a,r2
	mov	(___ltoa_PARM_2 + 1),a
	mov	(___ltoa_PARM_2 + 2),r3
;	__ltoa.c:82: value = -value;
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
00102$:
;	__ltoa.c:84: __ultoa(value, string, radix);
	mov	___ultoa_PARM_2,___ltoa_PARM_2
	mov	(___ultoa_PARM_2 + 1),(___ltoa_PARM_2 + 1)
	mov	(___ultoa_PARM_2 + 2),(___ltoa_PARM_2 + 2)
	mov	___ultoa_PARM_3,___ltoa_PARM_3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	__ltoa.c:85: }
	ljmp	___ultoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
