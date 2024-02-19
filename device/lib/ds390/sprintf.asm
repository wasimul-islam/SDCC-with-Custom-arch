;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sprintf
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
	.globl __print_format
	.globl _vsprintf_PARM_3
	.globl _vsprintf_PARM_2
	.globl _vsprintf
	.globl _sprintf
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
_vsprintf_PARM_2:
	.ds 4
_vsprintf_PARM_3:
	.ds 4
_vsprintf_buf_65536_13:
	.ds 4
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
;Allocation info for local variables in function 'put_char_to_string'
;------------------------------------------------------------
;p                         Allocated to stack - _bp -8
;c                         Allocated to stack - _bp +1
;buf                       Allocated to registers 
;------------------------------------------------------------
;	sprintf.c:34: put_char_to_string (char c, void* p) _REENTRANT
;	-----------------------------------------
;	 function put_char_to_string
;	-----------------------------------------
_put_char_to_string:
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
	mov	dpx1,#0x40
	mov	dph1,_bpx+1
	mov	dpl1,_bpx
	mov	dps,#1
	inc	dptr
	mov	dps, #1
	mov	a,dpl
	movx	@dptr,a
	mov	dps,#0
;	sprintf.c:36: char **buf = (char **)p;
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
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
;	sprintf.c:37: *(*buf)++ = c;
	lcall	__gptrgetWord
	mov	r3,a
	mov	r4,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r5,a
	mov	r6,acc1
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	mov	a,#0x01
	add	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	mov	ar2,r6
	mov	acc1, r7
	mov	a,r0
	lcall	__gptrputWord
	inc	dptr
	mov	acc1, r1
	mov	a,r2
	lcall	__gptrputWord
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	mov	dpx1,#0x40
	mov	dph1,_bpx+1
	mov	dpl1,_bpx
	mov	dps,#1
	inc	dptr
	mov	dps, #1
	movx	a,@dptr
	dec	dps
	lcall	__gptrput
00101$:
;	sprintf.c:38: }
	mov	sp,_bpx
	mov	esp,_bpx+1
	pop	_bpx+1
	pop	_bpx
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vsprintf'
;------------------------------------------------------------
;format                    Allocated with name '_vsprintf_PARM_2'
;ap                        Allocated with name '_vsprintf_PARM_3'
;buf                       Allocated with name '_vsprintf_buf_65536_13'
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	sprintf.c:41: vsprintf (char *buf, const char *format, va_list ap)
;	-----------------------------------------
;	 function vsprintf
;	-----------------------------------------
_vsprintf:
	mov     dps, #1
	mov     dptr, #_vsprintf_buf_65536_13
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
;	sprintf.c:44: i = _print_format (put_char_to_string, &buf, format, ap);
	mov	dptr,#_vsprintf_PARM_2
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
	mov	dptr,#_vsprintf_PARM_3
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
	mov	dptr,#__print_format_PARM_2
	mov	a,#_vsprintf_buf_65536_13
	movx	@dptr,a
	inc	dptr
	mov	a,#(_vsprintf_buf_65536_13 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(_vsprintf_buf_65536_13 >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_3
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
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
	mov dptr,#_put_char_to_string
	lcall	__print_format
	mov	r2,dpl
	mov	r3,dph
;	genAssign: resultIsFar = TRUE
	mov	dpl1,r2
	mov	dph1,r3
;	sprintf.c:45: *buf = 0;
	mov	dptr,#_vsprintf_buf_65536_13
;	genAssign: resultIsFar = FALSE
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
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	sprintf.c:46: return i;
	mov	dpl,dpl1
	mov	dph,dph1
00101$:
;	sprintf.c:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sprintf'
;------------------------------------------------------------
;buf                       Allocated to stack - _bp -8
;format                    Allocated to stack - _bp -12
;arg                       Allocated to stack - _bp +1
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	sprintf.c:50: sprintf (char *buf, const char *format, ...)
;	-----------------------------------------
;	 function sprintf
;	-----------------------------------------
_sprintf:
	push	_bpx
	push	_bpx+1
	mov	_bpx,sp
	mov	_bpx+1,esp
	anl	_bpx+1,#3
	push	acc
	push	acc
	push	acc
	push	acc
;	sprintf.c:55: va_start (arg, format);
	mov	a,_bpx
	add	a,#0xf4
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
;	sprintf.c:56: i = _print_format (put_char_to_string, &buf, format, arg);
	mov	a,_bpx
	add	a,#0xf8
	mov	b,a
	mov	a,_bpx+1
	addc	a,#0xff
	mov	r6,b
	mov	r7,a
	mov	r0,#0x40
	mov	r1,#0x00
	mov	a,_bpx
	clr	c
	subb	a,#0x0c
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
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_2
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
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_3
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dpx,#0x40
	mov	dph,_bpx+1
	mov	dpl,_bpx
	inc	dptr
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__print_format_PARM_4
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
	mov dptr,#_put_char_to_string
	lcall	__print_format
	mov	r2,dpl
	mov	r3,dph
;	genAssign: resultIsFar = TRUE
	mov	dpl1,r2
	mov	dph1,r3
;	sprintf.c:57: *buf = 0;
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
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	sprintf.c:60: return i;
	mov	dpl,dpl1
	mov	dph,dph1
00101$:
;	sprintf.c:61: }
	mov	sp,_bpx
	mov	esp,_bpx+1
	pop	_bpx+1
	pop	_bpx
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
