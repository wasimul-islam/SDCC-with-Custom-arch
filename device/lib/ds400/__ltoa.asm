;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __ltoa
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
	.globl ___ltoa_PARM_3
	.globl ___ltoa_PARM_2
	.globl ___ultoa_PARM_3
	.globl ___ultoa_PARM_2
	.globl ___ultoa
	.globl ___ltoa
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
___ultoa_PARM_2:
	.ds 4
___ultoa_PARM_3:
	.ds 1
___ultoa_buffer_65536_37:
	.ds 32
___ultoa_sloc0_1_0:
	.ds 4
___ultoa_sloc1_1_0:
	.ds 1
___ltoa_PARM_2:
	.ds 4
___ltoa_PARM_3:
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
;Allocation info for local variables in function '__ultoa'
;------------------------------------------------------------
;string                    Allocated with name '___ultoa_PARM_2'
;radix                     Allocated with name '___ultoa_PARM_3'
;value                     Allocated to registers r2 r3 r4 r5 
;buffer                    Allocated with name '___ultoa_buffer_65536_37'
;index                     Allocated to registers 
;c                         Allocated to registers r6 
;sloc0                     Allocated with name '___ultoa_sloc0_1_0'
;sloc1                     Allocated with name '___ultoa_sloc1_1_0'
;------------------------------------------------------------
;	__ltoa.c:58: void __ultoa(unsigned long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __ultoa
;	-----------------------------------------
___ultoa:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	__ltoa.c:63: do {
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ultoa_sloc1_1_0
	mov	a,#0x20
	movx	@dptr,a
00103$:
;	__ltoa.c:64: unsigned char c = '0' + (value % radix);
	mov	dptr,#___ultoa_PARM_3
	mov	dps, #1
	mov	dptr, #___ultoa_sloc0_1_0
	dec	dps
	movx	a,@dptr
	inc	dps
	movx	@dptr,a
	mov     dps, #1
	inc	dptr
	clr	a
	movx	@dptr,a
	mov     dps, #1
	inc	dptr
	clr	a
	movx	@dptr,a
	mov     dps, #1
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#___ultoa_sloc0_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__modulong_PARM_2
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__modulong
	mov	r7,dpl
	mov	r0,dph
	mov	r1,dpx
	mov	r6,b
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,#0x30
	add	a,r7
	mov	r6,a
;	__ltoa.c:65: if (c > (unsigned char)'9')
	clr	c
	mov	a,#0x39
	subb	a,r6
	jnc  00102$
00132$:
;	__ltoa.c:66: c += 'A' - '9' - 1;
	mov	ar7,r6
	mov	a,#0x07
	add	a,r7
	mov	r6,a
00102$:
;	__ltoa.c:67: buffer[--index] = c;
	mov	dptr,#___ultoa_sloc1_1_0
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	mov	dptr,#___ultoa_sloc1_1_0
	movx	a,@dptr
	add	a,#___ultoa_buffer_65536_37
	mov	r7,a
	clr	a
	addc	a,#(___ultoa_buffer_65536_37 >> 8)
	mov	r0,a
	clr	a
	addc	a,#(___ultoa_buffer_65536_37 >> 16)
	mov	r1,a
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r1
	mov	a,r6
	movx	@dptr,a
;	__ltoa.c:68: value /= radix;
	mov	dptr,#___ultoa_sloc0_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__divulong_PARM_2
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
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__divulong
	mov	r7,dpl
	mov	r0,dph
	mov	r1,dpx
	mov	r6,b
;	genAssign: resultIsFar = TRUE
	mov	ar2,r7
	mov	ar3,r0
	mov	ar4,r1
	mov	ar5,r6
;	__ltoa.c:69: } while (value);
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jz	00133$
	ljmp	00103$
00133$:
;	__ltoa.c:71: do {
	mov	dptr,#___ultoa_PARM_2
;	genAssign: resultIsFar = FALSE
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
	mov	dptr,#___ultoa_sloc1_1_0
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
00106$:
;	__ltoa.c:72: *string++ = buffer[index];
	mov	a,r6
	add	a,#___ultoa_buffer_65536_37
	mov	dpl1,a
	clr	a
	addc	a,#(___ultoa_buffer_65536_37 >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(___ultoa_buffer_65536_37 >> 16)
	mov	dpx1,a
	inc	dps
	movx	a,@dptr
	mov	r7,a
	mov	dps,#0
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	__ltoa.c:73: } while ( ++index != NUMBER_OF_DIGITS );
	inc	r6
	cjne r6,#0x20,00106$
00135$:
;	__ltoa.c:75: *string = 0;  /* string terminator */
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
00109$:
;	__ltoa.c:76: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__ltoa'
;------------------------------------------------------------
;string                    Allocated with name '___ltoa_PARM_2'
;radix                     Allocated with name '___ltoa_PARM_3'
;value                     Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	__ltoa.c:78: void __ltoa(long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function __ltoa
;	-----------------------------------------
___ltoa:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	__ltoa.c:80: if (value < 0 && radix == 10) {
	mov	a,r5
	jnb  acc[7],00102$
00114$:
	mov	dptr,#___ltoa_PARM_3
	movx	a,@dptr
	cjne a,#0x0a,00102$
00116$:
;	__ltoa.c:81: *string++ = '-';
	mov	dptr,#___ltoa_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	mov	a,#0x2d
	lcall	__gptrput
	mov	dptr,#___ltoa_PARM_2
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r0
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	__ltoa.c:82: value = -value;
	clr	c
	clr	a
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
00102$:
;	__ltoa.c:84: __ultoa(value, string, radix);
	mov	dptr,#___ltoa_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ultoa_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#___ltoa_PARM_3
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#___ultoa_PARM_3
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___ultoa
00104$:
;	__ltoa.c:85: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
