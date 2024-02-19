;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtoul
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
	.globl _strtoul
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
;Allocation info for local variables in function '_isdigit'
;------------------------------------------------------------
;base                      Allocated to stack - _bp -3
;c                         Allocated to registers r7 
;v                         Allocated to registers r6 
;------------------------------------------------------------
;	strtoul.c:40: static signed char _isdigit(const char c, unsigned char base)
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
__isdigit:
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
	mov	r7,dpl
;	strtoul.c:44: if (c >= '0' && c <= '9')
	cjne	r7,#0x30,00145$
00145$:
	jc	00110$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00110$
;	strtoul.c:45: v = c - '0';
	mov	ar6,r7
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	sjmp	00111$
00110$:
;	strtoul.c:46: else if (c >= 'a' && c <='z')
	cjne	r7,#0x61,00148$
00148$:
	jc	00106$
	mov	a,r7
	add	a,#0xff - 0x7a
	jc	00106$
;	strtoul.c:47: v = c - 'a' + 10;
	mov	ar5,r7
	mov	a,#0xa9
	add	a,r5
	mov	r6,a
	sjmp	00111$
00106$:
;	strtoul.c:48: else if (c >= 'A' && c <='Z')
	cjne	r7,#0x41,00151$
00151$:
	jc	00102$
	mov	a,r7
	add	a,#0xff - 0x5a
	jc	00102$
;	strtoul.c:49: v = c - 'A' + 10;
	mov	a,#0xc9
	add	a,r7
	mov	r6,a
	sjmp	00111$
00102$:
;	strtoul.c:51: return (-1);
	mov	dpl,#0xff
	sjmp	00115$
00111$:
;	strtoul.c:53: if (v >= base)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r6
	subb	a,@r0
	jc	00114$
;	strtoul.c:54: return (-1);
	mov	dpl,#0xff
	sjmp	00115$
00114$:
;	strtoul.c:56: return (v);
	mov	dpl,r6
00115$:
;	strtoul.c:57: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'strtoul'
;------------------------------------------------------------
;endptr                    Allocated to stack - _bp -5
;base                      Allocated to stack - _bp -7
;nptr                      Allocated to stack - _bp +1
;__1310720004              Allocated to registers 
;ptr                       Allocated to registers r5 r6 r7 
;ret                       Allocated to stack - _bp +15
;range_error               Allocated to registers b0 
;neg                       Allocated to registers b1 
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__2621440017              Allocated to stack - _bp +19
;__2621440012              Allocated to registers b2 
;__2621440007              Allocated to stack - _bp +21
;oldret                    Allocated to registers 
;digit                     Allocated to registers r3 
;__2621440008              Allocated to stack - _bp +27
;__2621440009              Allocated to stack - _bp +30
;__2621440010              Allocated to stack - _bp +38
;r                         Allocated to stack - _bp +46
;a                         Allocated to stack - _bp +49
;b                         Allocated to stack - _bp +57
;result                    Allocated to stack - _bp +65
;__2621440013              Allocated to stack - _bp +19
;__2621440014              Allocated to stack - _bp +22
;__2621440015              Allocated to stack - _bp +30
;r                         Allocated to registers 
;a                         Allocated to registers 
;b                         Allocated to registers 
;result                    Allocated to stack - _bp +38
;__2621440018              Allocated to stack - _bp +119
;__2621440019              Allocated to stack - _bp +122
;__2621440020              Allocated to stack - _bp +130
;r                         Allocated to stack - _bp +138
;a                         Allocated to stack - _bp +141
;b                         Allocated to stack - _bp +149
;result                    Allocated to stack - _bp +157
;sloc0                     Allocated to stack - _bp +165
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	strtoul.c:59: unsigned long int strtoul(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtoul
;	-----------------------------------------
_strtoul:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x2a
	mov	sp,a
;	strtoul.c:63: bool range_error = false;
;	assignBit
	clr	b0
;	strtoul.c:64: bool neg = false;
;	assignBit
	clr	b1
;	strtoul.c:66: while (isblank (*ptr))
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r7,#0x20,00214$
	sjmp	00141$
00214$:
	cjne	r7,#0x09,00163$
00141$:
;	strtoul.c:67: ptr++;
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00163$:
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	strtoul.c:70: switch(*ptr)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2b,00218$
	sjmp	00105$
00218$:
	cjne	r4,#0x2d,00106$
;	strtoul.c:73: neg = true;
;	assignBit
	setb	b1
;	strtoul.c:74: case '+':
00105$:
;	strtoul.c:75: ptr++;
	inc	r5
	cjne	r5,#0x00,00221$
	inc	r6
00221$:
;	strtoul.c:76: }
00106$:
;	strtoul.c:79: if (!base)
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00222$
	ljmp	00119$
00222$:
;	strtoul.c:81: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
	push	ar7
	push	ar6
	push	ar5
	push	bits
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jz	00110$
	push	ar7
	push	ar6
	push	ar5
	push	bits
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jnz	00111$
00110$:
;	strtoul.c:83: base = 16;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,#0x10
	inc	r0
	mov	@r0,#0x00
;	strtoul.c:84: ptr += 2;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	ljmp	00120$
00111$:
;	strtoul.c:86: else if (*ptr == '0')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x30,00108$
;	strtoul.c:88: base = 8;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,#0x08
	inc	r0
	mov	@r0,#0x00
;	strtoul.c:89: ptr++;
	inc	r5
	cjne	r5,#0x00,00227$
	inc	r6
00227$:
	ljmp	00120$
00108$:
;	strtoul.c:92: base = 10;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,#0x0a
	inc	r0
	mov	@r0,#0x00
	ljmp	00120$
00119$:
;	strtoul.c:95: else if (base == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	cjne	@r0,#0x10,00228$
	inc	r0
	cjne	@r0,#0x00,00228$
	sjmp	00229$
00228$:
	sjmp	00120$
00229$:
	push	ar7
	push	ar6
	push	ar5
	push	bits
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jz	00114$
	push	ar7
	push	ar6
	push	ar5
	push	bits
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strncmp
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	orl	a,r4
	jnz	00120$
00114$:
;	strtoul.c:96: ptr += 2;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
00120$:
;	strtoul.c:100: if (_isdigit (*ptr, base) < 0)
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar4,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	bits
	push	ar4
	mov	dpl,r3
	lcall	__isdigit
	mov	r3,dpl
	dec	sp
	pop	bits
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	jnb	acc.7,00124$
;	strtoul.c:102: if (endptr)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00122$
;	strtoul.c:103: *endptr = (char*)nptr;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00122$:
;	strtoul.c:104: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ljmp	00138$
00124$:
;	strtoul.c:107: for (ret = 0;; ptr++)
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00136$:
;	strtoul.c:110: signed char digit = _isdigit (*ptr, base);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	push	ar4
	push	bits
	push	ar4
	mov	dpl,r3
	lcall	__isdigit
	mov	r3,dpl
	dec	sp
	pop	bits
	pop	ar4
;	strtoul.c:112: if (digit < 0)
	mov	a,r3
	jnb	acc.7,00234$
	ljmp	00127$
00234$:
;	strtoul.c:117: range_error |= ckd_mul(&ret, ret, base);
	push	ar4
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,@r0
	rlc	a
	subb	a,acc
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,_bp
	add	a,#0x16
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	mov	a,_bp
	add	a,#0x0f
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
;	../../device/include/stdckdint.h:76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
	push	ar4
	push	ar3
	push	bits
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	lcall	__mullonglong
	xch	a,r0
	mov	a,_bp
	add	a,#0x26
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	bits
	pop	ar3
	pop	ar4
	mov	a,_bp
	add	a,#0x26
	mov	a,_bp
	add	a,#0x26
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,_bp
	add	a,#0x26
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00235$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00235$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00235$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00235$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00235$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00235$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00235$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00235$
	setb	c
	sjmp	00236$
00235$:
	clr	c
00236$:
	cpl	c
;	strtoul.c:117: range_error |= ckd_mul(&ret, ret, base);
	mov	b2,c
	orl	c,b0
	mov	b0,c
;	strtoul.c:125: ret += (unsigned char)digit;
	clr	a
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	strtoul.c:107: for (ret = 0;; ptr++)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00237$
	inc	r0
	inc	@r0
00237$:
	pop	ar4
	ljmp	00136$
00127$:
;	strtoul.c:128: if (endptr)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00129$
;	strtoul.c:129: *endptr = (char*)ptr;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00129$:
;	strtoul.c:131: if (range_error)
	jnb	b0,00131$
;	strtoul.c:133: errno = ERANGE;
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	strtoul.c:134: return (ULONG_MAX);
	mov	dptr,#0xffff
	mov	a,#0xff
	mov	b,a
	sjmp	00138$
00131$:
;	strtoul.c:137: return (neg ? -ret : ret);
	jnb	b1,00143$
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	clr	c
	clr	a
	subb	a,@r0
	mov	r4,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r5,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r6,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r7,a
	sjmp	00144$
00143$:
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00144$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
00138$:
;	strtoul.c:138: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "0X"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
