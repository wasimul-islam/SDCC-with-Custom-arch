;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtoc16
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
	.globl _mbrtowc
	.globl _mbrtoc16_PARM_4
	.globl _mbrtoc16_PARM_3
	.globl _mbrtoc16_PARM_2
	.globl _mbrtoc16
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
_mbrtoc16_PARM_2:
	.ds 4
_mbrtoc16_PARM_3:
	.ds 2
_mbrtoc16_PARM_4:
	.ds 4
_mbrtoc16_pc16_65536_15:
	.ds 4
_mbrtoc16_codepoint_65536_16:
	.ds 4
_mbrtoc16_ret_65536_16:
	.ds 2
_mbrtoc16_sps_65536_16:
	.ds 3
_mbrtoc16_sloc0_1_0:
	.ds 4
_mbrtoc16_sloc1_1_0:
	.ds 2
_mbrtoc16_sloc2_1_0:
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
;Allocation info for local variables in function 'mbrtoc16'
;------------------------------------------------------------
;s                         Allocated with name '_mbrtoc16_PARM_2'
;n                         Allocated with name '_mbrtoc16_PARM_3'
;ps                        Allocated with name '_mbrtoc16_PARM_4'
;pc16                      Allocated with name '_mbrtoc16_pc16_65536_15'
;codepoint                 Allocated with name '_mbrtoc16_codepoint_65536_16'
;ret                       Allocated with name '_mbrtoc16_ret_65536_16'
;sps                       Allocated with name '_mbrtoc16_sps_65536_16'
;low_surrogate             Allocated to registers r4 r3 
;sloc0                     Allocated with name '_mbrtoc16_sloc0_1_0'
;sloc1                     Allocated with name '_mbrtoc16_sloc1_1_0'
;sloc2                     Allocated with name '_mbrtoc16_sloc2_1_0'
;------------------------------------------------------------
;	mbrtoc16.c:34: size_t mbrtoc16(char16_t *restrict pc16, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc16
;	-----------------------------------------
_mbrtoc16:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_mbrtoc16_pc16_65536_15
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
;	mbrtoc16.c:41: if(!s)
	mov	dptr,#_mbrtoc16_PARM_2
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
	mov	dptr,#_mbrtoc16_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00102$
00157$:
;	mbrtoc16.c:42: return(mbrtoc16(0, "", 1, ps));
	mov	dptr,#_mbrtoc16_PARM_4
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
	mov	dptr,#_mbrtoc16_PARM_2
	mov	a,#___str_0
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_0 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_0 >> 16)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbrtoc16_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbrtoc16_PARM_4
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
	mov  dptr,#0x0000
	mov	b,#0x00
	lcall	_mbrtoc16
	ljmp	00119$
00102$:
;	mbrtoc16.c:44: if(!ps)
	mov	dptr,#_mbrtoc16_PARM_4
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00104$
00158$:
;	mbrtoc16.c:45: ps = &sps;
	mov	dptr,#_mbrtoc16_PARM_4
	mov	a,#_mbrtoc16_sps_65536_16
	movx	@dptr,a
	inc	dptr
	mov	a,#(_mbrtoc16_sps_65536_16 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(_mbrtoc16_sps_65536_16 >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
00104$:
;	mbrtoc16.c:47: if(!ps->c[0] && (ps->c[1] || ps->c[2]))
	mov	dptr,#_mbrtoc16_PARM_4
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_mbrtoc16_sloc0_1_0
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
	mov	dptr,#_mbrtoc16_sloc0_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrget
	mov  r2,a
	jz	00159$
	ljmp	00108$
00159$:
	mov	dptr,#_mbrtoc16_sloc0_1_0
	movx	a,@dptr
	add	a,#0x01
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov  r2,a
	jnz  00107$
00160$:
	mov	dptr,#_mbrtoc16_sloc0_1_0
	movx	a,@dptr
	add	a,#0x02
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov  r2,a
	jnz	00161$
	ljmp	00108$
00161$:
00107$:
;	mbrtoc16.c:49: if(pc16)
	mov	dptr,#_mbrtoc16_pc16_65536_15
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz   00106$
00162$:
;	mbrtoc16.c:50: *pc16 = ps->c[1] + (ps->c[2] << 8);
	mov	dptr,#_mbrtoc16_PARM_4
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
	mov	a,#0x01
	add	a,r6
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	clr	a
	addc	a,r0
	mov	r4,a
	mov	ar5,r1
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov  r2,a
	mov  dptr,#_mbrtoc16_sloc1_1_0
	movx @dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	a,#0x02
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	clr	a
	addc	a,r0
	mov	r2,a
	mov	ar3,r1
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r2
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	mov	ar2,r4
	mov	r4,#0x00
	mov	dptr,#_mbrtoc16_sloc1_1_0
	movx	a,@dptr
	add	a,r4
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	addc	a,r2
	mov	r2,a
	mov	dptr,#_mbrtoc16_pc16_65536_15
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r4
	mov	a,r2
	lcall	__gptrputWord
00106$:
;	mbrtoc16.c:51: ps->c[1] = ps->c[2] = 0;
	mov	dptr,#_mbrtoc16_PARM_4
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
	mov	a,#0x01
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	clr	a
	addc	a,r4
	mov	r0,a
	mov	ar1,r5
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	clr	a
	lcall	__gptrput
;	mbrtoc16.c:52: return(-3);
	mov  dptr,#0xfffd
	ljmp	00119$
00108$:
;	mbrtoc16.c:55: ret = mbrtowc(&codepoint, s, n, ps);
	mov	dptr,#_mbrtoc16_PARM_4
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
	mov	dptr,#_mbrtowc_PARM_2
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
	mov	dptr,#_mbrtoc16_PARM_3
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_mbrtowc_PARM_3
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbrtowc_PARM_4
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
	mov dptr,#_mbrtoc16_codepoint_65536_16
	mov	b,#0x00
	lcall	_mbrtowc
	mov	r2,dpl
	mov	r3,dph
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbrtoc16_ret_65536_16
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	mbrtoc16.c:57: if(ret > MB_LEN_MAX)
	mov	dptr,#_mbrtoc16_ret_65536_16
	clr	c
	mov	a,#0x04
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	clr	a
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc  00112$
00163$:
;	mbrtoc16.c:58: return(ret);
	mov     dps, #1
	mov     dptr, #_mbrtoc16_ret_65536_16
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
	ljmp	00119$
00112$:
;	mbrtoc16.c:60: if (codepoint <= 0xffff) // Basic multilingual plane
	mov	dptr,#_mbrtoc16_codepoint_65536_16
	clr	c
	mov	a,#0xff
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,#0xff
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	clr	a
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	clr	a
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc   00116$
00164$:
;	mbrtoc16.c:62: if(pc16)
	mov	dptr,#_mbrtoc16_pc16_65536_15
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz  00114$
00165$:
;	mbrtoc16.c:63: *pc16 = codepoint;
	mov	dptr,#_mbrtoc16_codepoint_65536_16
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_mbrtoc16_pc16_65536_15
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r4
	mov	a,r5
	lcall	__gptrputWord
00114$:
;	mbrtoc16.c:64: return(ret);
	mov     dps, #1
	mov     dptr, #_mbrtoc16_ret_65536_16
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
	ljmp	00119$
00116$:
;	mbrtoc16.c:67: codepoint -= 0x100000;
	mov	dptr,#_mbrtoc16_codepoint_65536_16
	movx	a,@dptr
	add	a,#0x00
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xf0
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbrtoc16_codepoint_65536_16
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	mbrtoc16.c:68: if(pc16)
	mov	dptr,#_mbrtoc16_pc16_65536_15
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz  00118$
00166$:
;	mbrtoc16.c:69: *pc16 = ((codepoint >> 10) & 0x3ff) + 0xd800;
	mov	dptr,#_mbrtoc16_codepoint_65536_16
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r5
	mov	r5,a
	movx	a,@dptr
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
	mov	r7,#0x00
	anl	ar5,#0x03
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,#0xd8
	addc	a,r5
	mov	r5,a
	mov	dptr,#_mbrtoc16_pc16_65536_15
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r4
	mov	a,r5
	lcall	__gptrputWord
00118$:
;	mbrtoc16.c:70: low_surrogate = (codepoint & 0x3ff) + 0xdc00;
	mov	dptr,#_mbrtoc16_codepoint_65536_16
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x03
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,#0xdc
	addc	a,r5
	mov	r3,a
;	mbrtoc16.c:71: ps->c[0] = 0;
	mov	dptr,#_mbrtoc16_PARM_4
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
	clr	a
	lcall	__gptrput
;	mbrtoc16.c:72: ps->c[1] = low_surrogate & 0xff;
	mov	dptr,#_mbrtoc16_sloc2_1_0
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
	mov	ar2,r4
	mov	dptr,#_mbrtoc16_sloc2_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	a,r2
	lcall	__gptrput
;	mbrtoc16.c:73: ps->c[2] = low_surrogate >> 8;
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	clr	a
	addc	a,r0
	mov	r0,a
	mov	ar2,r3
	mov	r3,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	mov	a,r2
	lcall	__gptrput
;	mbrtoc16.c:75: return(ret);
	mov     dps, #1
	mov     dptr, #_mbrtoc16_ret_65536_16
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
00119$:
;	mbrtoc16.c:76: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
