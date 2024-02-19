;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtoc16
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
	.globl _mbrtoc16
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
_mbrtoc16_sps_65536_16:
	.ds 3
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
;Allocation info for local variables in function 'mbrtoc16'
;------------------------------------------------------------
;s                         Allocated to stack - _bp -5
;n                         Allocated to stack - _bp -7
;ps                        Allocated to stack - _bp -10
;pc16                      Allocated to stack - _bp +1
;codepoint                 Allocated to stack - _bp +7
;ret                       Allocated to stack - _bp +11
;low_surrogate             Allocated to registers r4 r6 
;sloc0                     Allocated to stack - _bp +4
;sps                       Allocated with name '_mbrtoc16_sps_65536_16'
;------------------------------------------------------------
;	mbrtoc16.c:34: size_t mbrtoc16(char16_t *restrict pc16, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc16
;	-----------------------------------------
_mbrtoc16:
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
	push	b
	mov	a,sp
	add	a,#0x09
	mov	sp,a
;	mbrtoc16.c:41: if(!s)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	mbrtoc16.c:42: return(mbrtoc16(0, "", 1, ps));
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x00
	lcall	_mbrtoc16
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	mov	dpl,r3
	mov	dph,r4
	ljmp	00119$
00102$:
;	mbrtoc16.c:44: if(!ps)
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00104$
;	mbrtoc16.c:45: ps = &sps;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	@r0,#_mbrtoc16_sps_65536_16
	inc	r0
	mov	@r0,#(_mbrtoc16_sps_65536_16 >> 8)
	inc	r0
	mov	@r0,#0x00
00104$:
;	mbrtoc16.c:47: if(!ps->c[0] && (ps->c[1] || ps->c[2]))
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00159$
	ljmp	00108$
00159$:
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00107$
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00161$
	ljmp	00108$
00161$:
00107$:
;	mbrtoc16.c:49: if(pc16)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00106$
;	mbrtoc16.c:50: *pc16 = ps->c[1] + (ps->c[2] << 8);
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	clr	a
	mov	r2,a
	add	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r7
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00106$:
;	mbrtoc16.c:51: ps->c[1] = ps->c[2] = 0;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	mbrtoc16.c:52: return(-3);
	mov	dptr,#0xfffd
	ljmp	00119$
00108$:
;	mbrtoc16.c:55: ret = mbrtowc(&codepoint, s, n, ps);
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
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
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_mbrtowc
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	mbrtoc16.c:57: if(ret > MB_LEN_MAX)
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	clr	c
	mov	a,#0x04
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jnc	00112$
;	mbrtoc16.c:58: return(ret);
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	ljmp	00119$
00112$:
;	mbrtoc16.c:60: if (codepoint <= 0xffff) // Basic multilingual plane
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	clr	c
	mov	a,#0xff
	subb	a,@r0
	mov	a,#0xff
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jc	00116$
;	mbrtoc16.c:62: if(pc16)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00114$
;	mbrtoc16.c:63: *pc16 = codepoint;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00114$:
;	mbrtoc16.c:64: return(ret);
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	ljmp	00119$
00116$:
;	mbrtoc16.c:67: codepoint -= 0x100000;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	inc	r0
	inc	r0
	mov	a,@r0
	add	a,#0xf0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	@r0,a
;	mbrtoc16.c:68: if(pc16)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00118$
;	mbrtoc16.c:69: *pc16 = ((codepoint >> 10) & 0x3ff) + 0xd800;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	inc	r0
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r3
	mov	r3,a
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r4,a
	mov	r5,#0x00
	anl	ar3,#0x03
	mov	a,#0xd8
	add	a,r3
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
00118$:
;	mbrtoc16.c:70: low_surrogate = (codepoint & 0x3ff) + 0xdc00;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	anl	ar5,#0x03
	mov	a,#0xdc
	add	a,r5
	mov	r6,a
;	mbrtoc16.c:71: ps->c[0] = 0;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	clr	a
	lcall	__gptrput
;	mbrtoc16.c:72: ps->c[1] = low_surrogate & 0xff;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	ar7,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	mbrtoc16.c:73: ps->c[2] = low_surrogate >> 8;
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
;	mbrtoc16.c:75: return(ret);
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
00119$:
;	mbrtoc16.c:76: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
