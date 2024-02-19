;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __itoa
	.optsdcc -mmcs51 --model-small
	
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
___uitoa_PARM_2:
	.ds 3
___uitoa_PARM_3:
	.ds 1
___uitoa_value_65536_39:
	.ds 2
___uitoa_index_65536_40:
	.ds 1
___uitoa_i_65536_40:
	.ds 1
___uitoa_tmp_131072_42:
	.ds 1
___itoa_PARM_2:
	.ds 3
___itoa_PARM_3:
	.ds 1
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
	mov	___uitoa_value_65536_39,dpl
	mov	(___uitoa_value_65536_39 + 1),dph
;	__itoa.c:47: do {
	mov	___uitoa_index_65536_40,#0x00
00103$:
;	__itoa.c:48: string[index] = '0' + (value % radix);
	mov	a,___uitoa_index_65536_40
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r3
	add	a,___uitoa_PARM_2
	mov	r3,a
	mov	a,r4
	addc	a,(___uitoa_PARM_2 + 1)
	mov	r2,a
	mov	r4,(___uitoa_PARM_2 + 2)
	mov	r0,___uitoa_PARM_3
	mov	r1,#0x00
	mov	__moduint_PARM_2,r0
	mov	(__moduint_PARM_2 + 1),r1
	mov	dpl,___uitoa_value_65536_39
	mov	dph,(___uitoa_value_65536_39 + 1)
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__moduint
	mov	r5,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
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
	mov	__divuint_PARM_2,r0
	mov	(__divuint_PARM_2 + 1),r1
	mov	dpl,___uitoa_value_65536_39
	mov	dph,(___uitoa_value_65536_39 + 1)
	lcall	__divuint
	mov	___uitoa_value_65536_39,dpl
	mov	(___uitoa_value_65536_39 + 1),dph
;	__itoa.c:52: ++index;
	inc	___uitoa_index_65536_40
;	__itoa.c:53: } while (value != 0);
	mov	a,___uitoa_value_65536_39
	orl	a,(___uitoa_value_65536_39 + 1)
	jz	00134$
	ljmp	00103$
00134$:
;	__itoa.c:56: string[index--] = '\0';
	mov	a,___uitoa_index_65536_40
	dec	a
	mov	r7,a
	mov	a,___uitoa_index_65536_40
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	add	a,___uitoa_PARM_2
	mov	r5,a
	mov	a,r6
	addc	a,(___uitoa_PARM_2 + 1)
	mov	r6,a
	mov	r4,(___uitoa_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	clr	a
	lcall	__gptrput
;	__itoa.c:59: while (index > i) {
	mov	___uitoa_i_65536_40,a
00106$:
	clr	c
	mov	a,___uitoa_i_65536_40
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	__itoa.c:60: char tmp = string[i];
	mov	a,___uitoa_i_65536_40
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r4
	add	a,___uitoa_PARM_2
	mov	r4,a
	mov	a,r5
	addc	a,(___uitoa_PARM_2 + 1)
	mov	r5,a
	mov	r3,(___uitoa_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	__gptrget
	mov	___uitoa_tmp_131072_42,a
;	__itoa.c:61: string[i] = string[index];
	mov	a,r7
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	a,r0
	add	a,___uitoa_PARM_2
	mov	r0,a
	mov	a,r1
	addc	a,(___uitoa_PARM_2 + 1)
	mov	r1,a
	mov	r2,(___uitoa_PARM_2 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	__gptrput
;	__itoa.c:62: string[index] = tmp;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,___uitoa_tmp_131072_42
	lcall	__gptrput
;	__itoa.c:63: ++i;
	inc	___uitoa_i_65536_40
;	__itoa.c:64: --index;
	dec	r7
	sjmp	00106$
00109$:
;	__itoa.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__itoa'
;------------------------------------------------------------
;string                    Allocated with name '___itoa_PARM_2'
;radix                     Allocated with name '___itoa_PARM_3'
;value                     Allocated to registers r6 r7 
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
	mov	a,#0x0a
	cjne	a,___itoa_PARM_3,00102$
;	__itoa.c:71: *string++ = '-';
	mov	r3,___itoa_PARM_2
	mov	r4,(___itoa_PARM_2 + 1)
	mov	r5,(___itoa_PARM_2 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x2d
	lcall	__gptrput
	mov	a,#0x01
	add	a,r3
	mov	___itoa_PARM_2,a
	clr	a
	addc	a,r4
	mov	(___itoa_PARM_2 + 1),a
	mov	(___itoa_PARM_2 + 2),r5
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
	mov	___uitoa_PARM_2,___itoa_PARM_2
	mov	(___uitoa_PARM_2 + 1),(___itoa_PARM_2 + 1)
	mov	(___uitoa_PARM_2 + 2),(___itoa_PARM_2 + 2)
	mov	___uitoa_PARM_3,___itoa_PARM_3
	mov	dpl,r6
	mov	dph,r7
;	__itoa.c:75: }
	ljmp	___uitoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
