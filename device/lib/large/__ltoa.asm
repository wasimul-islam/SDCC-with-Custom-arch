;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __ltoa
	.optsdcc -mmcs51 --model-large
	
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
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___ultoa_PARM_2:
	.ds 3
___ultoa_PARM_3:
	.ds 1
___ultoa_value_65536_39:
	.ds 4
___ultoa_buffer_65536_40:
	.ds 32
___ultoa_c_131072_41:
	.ds 1
___ltoa_PARM_2:
	.ds 3
___ltoa_PARM_3:
	.ds 1
___ltoa_value_65536_43:
	.ds 4
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
;string                    Allocated with name '___ultoa_PARM_2'
;radix                     Allocated with name '___ultoa_PARM_3'
;value                     Allocated with name '___ultoa_value_65536_39'
;buffer                    Allocated with name '___ultoa_buffer_65536_40'
;index                     Allocated with name '___ultoa_index_65536_40'
;c                         Allocated with name '___ultoa_c_131072_41'
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
	mov	dptr,#___ultoa_value_65536_39
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	__ltoa.c:63: do {
	mov	dptr,#___ultoa_PARM_3
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x20
00103$:
;	__ltoa.c:64: unsigned char c = '0' + (value % radix);
	mov	dptr,#___ultoa_value_65536_39
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	___ultoa_sloc0_1_0,r7
	mov	(___ultoa_sloc0_1_0 + 1),#0x00
	mov	(___ultoa_sloc0_1_0 + 2),#0x00
	mov	(___ultoa_sloc0_1_0 + 3),#0x00
	mov	dptr,#__modulong_PARM_2
	mov	a,___ultoa_sloc0_1_0
	movx	@dptr,a
	mov	a,(___ultoa_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ultoa_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ultoa_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar7
	push	ar6
	lcall	__modulong
	mov	r2,dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r2
	mov	r5,a
	mov	dptr,#___ultoa_c_131072_41
	movx	@dptr,a
;	__ltoa.c:65: if (c > (unsigned char)'9')
	mov	ar4,r5
	mov	a,r4
	add	a,#0xff - 0x39
	jnc	00102$
;	__ltoa.c:66: c += 'A' - '9' - 1;
	mov	dptr,#___ultoa_c_131072_41
	mov	a,#0x07
	add	a,r5
	movx	@dptr,a
00102$:
;	__ltoa.c:67: buffer[--index] = c;
	dec	r6
	mov	a,r6
	add	a,#___ultoa_buffer_65536_40
	mov	r4,a
	clr	a
	addc	a,#(___ultoa_buffer_65536_40 >> 8)
	mov	r5,a
	mov	dptr,#___ultoa_c_131072_41
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	__ltoa.c:68: value /= radix;
	mov	dptr,#___ultoa_value_65536_39
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__divulong_PARM_2
	mov	a,___ultoa_sloc0_1_0
	movx	@dptr,a
	mov	a,(___ultoa_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ultoa_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(___ultoa_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar7
	push	ar6
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	pop	ar7
	mov	dptr,#___ultoa_value_65536_39
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	__ltoa.c:69: } while (value);
	mov	dptr,#___ultoa_value_65536_39
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00133$
	ljmp	00103$
00133$:
;	__ltoa.c:71: do {
	mov	dptr,#___ultoa_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00106$:
;	__ltoa.c:72: *string++ = buffer[index];
	mov	a,r6
	add	a,#___ultoa_buffer_65536_40
	mov	dpl,a
	clr	a
	addc	a,#(___ultoa_buffer_65536_40 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
;	__ltoa.c:73: } while ( ++index != NUMBER_OF_DIGITS );
	inc	r6
	cjne	r6,#0x20,00106$
;	__ltoa.c:75: *string = 0;  /* string terminator */
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	clr	a
;	__ltoa.c:76: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function '__ltoa'
;------------------------------------------------------------
;string                    Allocated with name '___ltoa_PARM_2'
;radix                     Allocated with name '___ltoa_PARM_3'
;value                     Allocated with name '___ltoa_value_65536_43'
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
	mov	dptr,#___ltoa_value_65536_43
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	__ltoa.c:80: if (value < 0 && radix == 10) {
	mov	dptr,#___ltoa_value_65536_43
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
	jnb	acc.7,00102$
	mov	dptr,#___ltoa_PARM_3
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x0a,00102$
;	__ltoa.c:81: *string++ = '-';
	mov	dptr,#___ltoa_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x2d
	lcall	__gptrput
	mov	dptr,#___ltoa_PARM_2
	mov	a,#0x01
	add	a,r1
	movx	@dptr,a
	clr	a
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	__ltoa.c:82: value = -value;
	mov	dptr,#___ltoa_value_65536_43
	clr	c
	clr	a
	subb	a,r4
	movx	@dptr,a
	clr	a
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	__ltoa.c:84: __ultoa(value, string, radix);
	mov	dptr,#___ltoa_value_65536_43
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
	mov	dptr,#___ltoa_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___ltoa_PARM_3
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#___ultoa_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___ultoa_PARM_3
	mov	a,r0
	movx	@dptr,a
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
