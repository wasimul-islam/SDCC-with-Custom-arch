;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module printfl
	.optsdcc -mds390 --model-flat24
	
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
	.globl ___ltoa
	.globl _putchar
	.globl _printf_small
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
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_radix:
	.ds 1
_str:
	.ds 4
_val:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_printf_small_buffer_327680_55:
	.ds 12
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_long_flag:
	.ds 1
_string_flag:
	.ds 1
_char_flag:
	.ds 1
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
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	printfl.c:50: static __bit  long_flag = 0;
;	genAssign: resultIsFar = FALSE
	clr	_long_flag
;	printfl.c:51: static __bit  string_flag =0;
;	genAssign: resultIsFar = FALSE
	clr	_string_flag
;	printfl.c:52: static __bit  char_flag = 0;
;	genAssign: resultIsFar = FALSE
	clr	_char_flag
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
;Allocation info for local variables in function 'printf_small'
;------------------------------------------------------------
;fmt                       Allocated to stack - _bp -8
;ap                        Allocated to stack - _bp +1
;stri                      Allocated to registers 
;buffer                    Allocated with name '_printf_small_buffer_327680_55'
;------------------------------------------------------------
;	printfl.c:124: void printf_small (char * fmt, ... ) __reentrant
;	-----------------------------------------
;	 function printf_small
;	-----------------------------------------
_printf_small:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bpx
	push	_bpx+1
	mov	_bpx,sp
	mov	_bpx+1,esp
	anl	_bpx+1,#3
	push	acc
	push	acc
	push	acc
	push	acc
;	printfl.c:128: va_start(ap,fmt);
	mov	a,_bpx
	add	a,#0xf8
	mov	b,a
	mov	a,_bpx+1
	addc	a,#0xff
	mov	r2,b
	mov	r3,a
	mov	r4,#0x40
	mov	dpx,#0x40
	mov	dph,_bpx+1
	mov	dpl,_bpx
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
00133$:
;	printfl.c:130: for (; *fmt ; fmt++ ) {
	mov	a,_bpx
	clr	c
	subb	a,#0x08
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0x00
	mov	dph,a
	mov	dpx,#0x40
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r2
	mov	b,r3
	lcall	__gptrget
	mov  r4,a
	jnz	00209$
	ljmp	00134$
00209$:
;	printfl.c:131: if (*fmt == '%') {
	cjne	r4,#0x25,00210$
	sjmp	00211$
00210$:
	ljmp	00128$
00211$:
;	printfl.c:132: long_flag = string_flag = char_flag = 0;
;	genAssign: resultIsFar = FALSE
	clr	_char_flag
;	genAssign: resultIsFar = FALSE
	clr	_string_flag
;	genAssign: resultIsFar = FALSE
	clr	_long_flag
;	printfl.c:133: fmt++ ;
	mov	a,_bpx
	clr	c
	subb	a,#0x08
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0x00
	mov	dph,a
	mov	dpx,#0x40
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	printfl.c:134: switch (*fmt) {
	mov	a,_bpx
	clr	c
	subb	a,#0x08
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0x00
	mov	dph,a
	mov	dpx,#0x40
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x68,00212$
	sjmp 00102$
00212$:
	cjne r7,#0x6c,00103$
00214$:
;	printfl.c:136: long_flag = 1;
;	genAssign: resultIsFar = FALSE
	setb	_long_flag
;	printfl.c:137: fmt++;
	mov	a,_bpx
	clr	c
	subb	a,#0x08
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0x00
	mov	dph,a
	mov	dpx,#0x40
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	printfl.c:138: break;
;	printfl.c:139: case 'h':
	sjmp 00103$
00102$:
;	printfl.c:140: char_flag = 1;
;	genAssign: resultIsFar = FALSE
	setb	_char_flag
;	printfl.c:141: fmt++;
	mov	a,_bpx
	clr	c
	subb	a,#0x08
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0x00
	mov	dph,a
	mov	dpx,#0x40
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	printfl.c:142: }
00103$:
;	printfl.c:144: switch (*fmt) {
	mov	a,_bpx
	clr	c
	subb	a,#0x08
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0x00
	mov	dph,a
	mov	dpx,#0x40
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x63,00215$
	sjmp 00107$
00215$:
	cjne	r2,#0x64,00216$
	sjmp 00105$
00216$:
	cjne	r2,#0x6f,00217$
	sjmp 00108$
00217$:
	cjne	r2,#0x73,00218$
	sjmp 00104$
00218$:
;	printfl.c:145: case 's':
	cjne r2,#0x78,00109$
	sjmp 00106$
00104$:
;	printfl.c:146: string_flag = 1;
;	genAssign: resultIsFar = FALSE
	setb	_string_flag
;	printfl.c:147: break;
;	printfl.c:148: case 'd':
	sjmp 00109$
00105$:
;	printfl.c:149: radix = 10;
;	genAssign: resultIsFar = FALSE
	mov	_radix,#0x0a
;	printfl.c:150: break;
;	printfl.c:151: case 'x':
	sjmp 00109$
00106$:
;	printfl.c:152: radix = 16;
;	genAssign: resultIsFar = FALSE
	mov	_radix,#0x10
;	printfl.c:153: break;
;	printfl.c:154: case 'c':
	sjmp 00109$
00107$:
;	printfl.c:155: radix = 0;
;	genAssign: resultIsFar = FALSE
	mov	_radix,#0x00
;	printfl.c:156: break;
;	printfl.c:157: case 'o':
	sjmp 00109$
00108$:
;	printfl.c:158: radix = 8;
;	genAssign: resultIsFar = FALSE
	mov	_radix,#0x08
;	printfl.c:160: }
00109$:
;	printfl.c:162: if (string_flag) {
	jb	_string_flag,00220$
	ljmp	00114$
00220$:
;	printfl.c:163: str = va_arg(ap, char *);
	mov	dpx,#0x40
	mov	dph,_bpx+1
	mov	dpl,_bpx
	inc	dptr
	movx	a,@dptr
	add	a,#0xfc
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	dpx,#0x40
	mov	dph,_bpx+1
	mov	dpl,_bpx
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r5
	mov	b,r6
	lcall	__gptrgetWord
	mov	_str,a
	mov	(_str + 1),acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	(_str + 2),a
	mov	(_str + 3),acc1
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
;	printfl.c:164: while (*str) putchar(*str++);
00110$:
;	genAssign: resultIsFar = FALSE
	mov	dpl,_str
	mov	dph,(_str + 1)
	mov	dpx,(_str + 2)
	mov	b,(_str + 3)
	lcall	__gptrget
	mov  r2,a
	jnz	00221$
	ljmp	00130$
00221$:
;	genAssign: resultIsFar = FALSE
	mov	dpl,_str
	mov	dph,(_str + 1)
	mov	dpx,(_str + 2)
	mov	b,(_str + 3)
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x01
	add	a,_str
	mov	_str,a
	clr	a
	addc	a,(_str + 1)
	mov	(_str + 1),a
	clr	a
	addc	a,(_str + 2)
	mov	(_str + 2),a
	mov	dpl1,r2
	mov	dph1,#0x00
	mov	dpl,dpl1
	mov	dph,dph1
	lcall	_putchar
;	printfl.c:165: continue ;
	sjmp 00110$
00114$:
;	printfl.c:168: if (long_flag)
	jnb  _long_flag,00119$
00222$:
;	printfl.c:169: val = va_arg(ap,long);
	mov	dpx,#0x40
	mov	dph,_bpx+1
	mov	dpl,_bpx
	inc	dptr
	movx	a,@dptr
	add	a,#0xfc
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	dpx,#0x40
	mov	dph,_bpx+1
	mov	dpl,_bpx
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r5
	mov	b,r6
	lcall	__gptrgetWord
	mov	_val,a
	mov	(_val + 1),acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	(_val + 2),a
	mov	(_val + 3),acc1
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	ljmp	00120$
00119$:
;	printfl.c:171: if (char_flag)
	jnb  _char_flag,00116$
00223$:
;	printfl.c:172: val = va_arg(ap,char);
	mov	dpx,#0x40
	mov	dph,_bpx+1
	mov	dpl,_bpx
	inc	dptr
	movx	a,@dptr
	add	a,#0xff
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	dpx,#0x40
	mov	dph,_bpx+1
	mov	dpl,_bpx
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	mov	_val,r2
	mov	(_val + 1),#0x00
	mov	(_val + 2),#0x00
	mov	(_val + 3),#0x00
	sjmp 00120$
00116$:
;	printfl.c:174: val = va_arg(ap,int);
	mov	dpx,#0x40
	mov	dph,_bpx+1
	mov	dpl,_bpx
	inc	dptr
	movx	a,@dptr
	add	a,#0xfe
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	dpx,#0x40
	mov	dph,_bpx+1
	mov	dpl,_bpx
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r5
	mov	b,r6
	lcall	__gptrgetWord
	mov	r2,a
	mov	r3,acc1
	lcall	__decdptr
	mov	_val,r2
	mov	(_val + 1),r3
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	(_val + 2),a
	mov	(_val + 3),a
00120$:
;	printfl.c:179: if (radix)
	mov	a,_radix
	jz  00125$
00224$:
;	printfl.c:184: __ltoa (val, buffer, radix);
	mov	dptr,#___ltoa_PARM_2
	mov	a,#_printf_small_buffer_327680_55
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x40
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___ltoa_PARM_3
	mov	a,_radix
	movx	@dptr,a
	mov	dpl,_val
	mov	dph,(_val + 1)
	mov	dpx,(_val + 2)
	mov	b,(_val + 3)
	lcall	___ltoa
;	printfl.c:185: stri = buffer;
;	genAssign: resultIsFar = FALSE
	mov	r0,#_printf_small_buffer_327680_55
;	printfl.c:186: while (*stri)
00121$:
	mov	ar2,@r0
	mov	a,r2
	jz  00130$
00225$:
;	printfl.c:188: putchar (*stri);
	mov	dpl1,r2
	mov	dph1,#0x00
	push	ar0
	mov	dpl,dpl1
	mov	dph,dph1
	lcall	_putchar
	pop	ar0
;	printfl.c:189: stri++;
	inc	r0
	sjmp 00121$
00125$:
;	printfl.c:194: putchar((char)val);
	mov	r2,_val
	mov	dpl1,r2
	mov	dph1,#0x00
	mov	dpl,dpl1
	mov	dph,dph1
	lcall	_putchar
	sjmp 00130$
00128$:
;	printfl.c:197: putchar(*fmt);
	mov	dpl1,r4
	mov	dph1,#0x00
	mov	dpl,dpl1
	mov	dph,dph1
	lcall	_putchar
00130$:
;	printfl.c:130: for (; *fmt ; fmt++ ) {
	mov	a,_bpx
	clr	c
	subb	a,#0x08
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0x00
	mov	dph,a
	mov	dpx,#0x40
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	ljmp	00133$
00134$:
;	printfl.c:199: }
	mov	sp,_bpx
	mov	esp,_bpx+1
	pop	_bpx+1
	pop	_bpx
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
