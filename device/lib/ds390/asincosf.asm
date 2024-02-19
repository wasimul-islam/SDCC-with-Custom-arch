;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module asincosf
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
	.globl _asincosf
	.globl _ldexpf
	.globl _fabsf
	.globl _sqrtf
	.globl _asincosf_PARM_2
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
_asincosf_PARM_2:
	.ds 1
_asincosf_x_65536_25:
	.ds 4
_asincosf_g_65536_26:
	.ds 4
_asincosf_quartPI_65536_26:
	.ds 1
_asincosf_sloc0_1_0:
	.ds 4
_asincosf_sloc1_1_0:
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
;Allocation info for local variables in function 'asincosf'
;------------------------------------------------------------
;isacos                    Allocated with name '_asincosf_PARM_2'
;x                         Allocated with name '_asincosf_x_65536_25'
;y                         Allocated to registers r2 r3 r4 r5 
;g                         Allocated with name '_asincosf_g_65536_26'
;r                         Allocated to registers r3 r4 r5 r6 
;i                         Allocated to registers r2 
;quartPI                   Allocated with name '_asincosf_quartPI_65536_26'
;sloc0                     Allocated with name '_asincosf_sloc0_1_0'
;sloc1                     Allocated with name '_asincosf_sloc1_1_0'
;sloc2                     Allocated with name '_asincosf_sloc2_1_0'
;------------------------------------------------------------
;	asincosf.c:47: float asincosf(float x, bool isacos)
;	-----------------------------------------
;	 function asincosf
;	-----------------------------------------
_asincosf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_asincosf_x_65536_25
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
;	asincosf.c:51: bool quartPI = isacos;
	mov	dptr,#_asincosf_PARM_2
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#_asincosf_quartPI_65536_26
	movx	@dptr,a
;	asincosf.c:56: y = fabsf(x);
	inc	dps
	mov	dptr,#_asincosf_x_65536_25
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	_fabsf
	mov	r7,dpl
	mov	r0,dph
	mov	r1,dpx
	mov	r6,b
;	genAssign: resultIsFar = FALSE
;	asincosf.c:57: if (y < EPS)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x39
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r1
	mov	b,r6
	lcall	___fslt
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,dpl
	jz  00107$
00149$:
;	asincosf.c:59: r = y;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_asincosf_sloc0_1_0
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	ljmp	00108$
00107$:
;	asincosf.c:63: if (y > 0.5)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov  dptr,#0x0000
	mov	b,#0x3f
	lcall	___fslt
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,dpl
	jnz	00150$
	ljmp	00104$
00150$:
;	asincosf.c:65: quartPI = !isacos;
	mov	dptr,#_asincosf_quartPI_65536_26
	mov	dps, #1
	mov	dptr, #_asincosf_quartPI_65536_26
	dec	dps
	movx	a,@dptr
	cjne	a,#0x01,00151$
00151$:
	clr	a
	rlc	a
	mov	dps,#1
	movx	@dptr,a
	mov	dps,#0
;	asincosf.c:66: if (y > 1.0)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov  dptr,#0x0000
	mov	dpx,#0x80
	mov	b,#0x3f
	lcall	___fslt
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,dpl
	jz  00102$
00152$:
;	asincosf.c:68: errno = EDOM;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_errno
	mov	a,#0x21
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	asincosf.c:69: return 0.0;
	mov  dptr,#0x0000
	mov	b,#0x00
	ljmp	00117$
00102$:
;	asincosf.c:71: g = (0.5 - y) + 0.5;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fssub_PARM_2
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov  dptr,#0x0000
	mov	dpx,#0x80
	mov	b,#0x3f
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	asincosf.c:72: g = ldexpf(g, -1);
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_ldexpf_PARM_2
	mov  a,#0xff
	movx @dptr,a
	inc  dptr
	movx @dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	_ldexpf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_asincosf_g_65536_26
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
;	asincosf.c:73: y = sqrtf(g);
	inc	dps
	mov	dptr,#_asincosf_g_65536_26
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	_sqrtf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
;	asincosf.c:74: y = -(y + y);
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
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
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	mov	ar7,r2
	mov	ar0,r3
	mov	ar1,r4
	mov	a,r5
	cpl	acc[7]
	mov	r6,a
	sjmp 00105$
00104$:
;	asincosf.c:78: g = y * y;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsmul_PARM_2
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r1
	mov	b,r6
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_asincosf_g_65536_26
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
00105$:
;	asincosf.c:80: r = y + y * ((P(g) * g) / Q(g));
	mov	dptr,#_asincosf_g_65536_26
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsmul_PARM_2
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
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x012065
	mov	b,#0xbf
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0x6b
	movx	@dptr,a
	inc	dptr
	mov	a,#0x16
	movx	@dptr,a
	inc	dptr
	mov	a,#0x6f
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3f
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	dptr,#_asincosf_g_65536_26
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsmul_PARM_2
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
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsmul
	mov     dps, #1
	mov     dptr, #_asincosf_sloc1_1_0
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
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0x0b
	movx	@dptr,a
	inc	dptr
	mov	a,#0x8d
	movx	@dptr,a
	inc	dptr
	mov	a,#0xb1
	movx	@dptr,a
	inc	dptr
	mov	a,#0xc0
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	inc	dps
	mov	dptr,#_asincosf_g_65536_26
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	dptr,#_asincosf_g_65536_26
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsmul_PARM_2
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
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xf0
	movx	@dptr,a
	inc	dptr
	mov	a,#0x50
	movx	@dptr,a
	inc	dptr
	mov	a,#0xb3
	movx	@dptr,a
	inc	dptr
	mov	a,#0x40
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_PARM_2
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
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	inc	dps
	mov	dptr,#_asincosf_sloc1_1_0
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsmul_PARM_2
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
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r1
	mov	b,r6
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
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
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r1
	mov	b,r6
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_asincosf_sloc0_1_0
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
00108$:
;	asincosf.c:82: i = quartPI;
	mov	dptr,#_asincosf_quartPI_65536_26
	movx	a,@dptr
	mov	r2,a
;	asincosf.c:83: if (isacos)
	mov	dptr,#_asincosf_PARM_2
	movx	a,@dptr
	jnz	00153$
	ljmp	00115$
00153$:
;	asincosf.c:85: if (x < 0.0)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar2
	inc	dps
	mov	dptr,#_asincosf_x_65536_25
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fslt
	pop	ar2
	mov	a,dpl
	jnz	00154$
	ljmp	00110$
00154$:
;	asincosf.c:86: r = (b[i] + r) + b[i];
	mov	b,#0x04
	mov	a,r2
	mul	ab
	mov	r3,a
	mov	r4,b
	add	a,#_asincosf_b_65536_26
	mov	dpl1,a
	mov	a,r4
	addc	a,#(_asincosf_b_65536_26 >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(_asincosf_b_65536_26 >> 16)
	mov	dpx1,a
	inc	dps
	clr	a
	movc	a,@a+dptr
	inc	dptr
	mov	r2,a
	clr	a
	movc	a,@a+dptr
	inc	dptr
	mov	r4,a
	clr	a
	movc	a,@a+dptr
	inc	dptr
	mov	r5,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dps,#0
	mov	dptr,#_asincosf_sloc0_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsadd_PARM_2
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
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r2
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	lcall	___fsadd
	mov	r7,dpl
	mov	r0,dph
	mov	r1,dpx
	mov	r3,b
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r1
	mov	b,r3
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,dpx
	mov	r6,b
;	genAssign: resultIsFar = TRUE
	ljmp	00116$
00110$:
;	asincosf.c:88: r = (a[i] - r) + a[i];
	mov	b,#0x04
	mov	a,r2
	mul	ab
	mov	r7,a
	mov	r0,b
	add	a,#_asincosf_a_65536_26
	mov	dpl1,a
	mov	a,r0
	addc	a,#(_asincosf_a_65536_26 >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(_asincosf_a_65536_26 >> 16)
	mov	dpx1,a
	inc	dps
	clr	a
	movc	a,@a+dptr
	inc	dptr
	mov	r2,a
	clr	a
	movc	a,@a+dptr
	inc	dptr
	mov	r3,a
	clr	a
	movc	a,@a+dptr
	inc	dptr
	mov	r4,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	dps,#0
	mov	dptr,#_asincosf_sloc0_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fssub_PARM_2
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
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
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
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsadd
	mov	r2,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	ar3,r2
	mov	ar4,r7
	mov	ar5,r0
	mov	ar6,r1
	ljmp	00116$
00115$:
;	asincosf.c:92: r = (a[i] + r) + a[i];
	mov	b,#0x04
	mov	a,r2
	mul	ab
	mov	r2,a
	mov	r7,b
	add	a,#_asincosf_a_65536_26
	mov	dpl1,a
	mov	a,r7
	addc	a,#(_asincosf_a_65536_26 >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(_asincosf_a_65536_26 >> 16)
	mov	dpx1,a
	inc	dps
	clr	a
	movc	a,@a+dptr
	inc	dptr
	mov	r3,a
	clr	a
	movc	a,@a+dptr
	inc	dptr
	mov	r4,a
	clr	a
	movc	a,@a+dptr
	inc	dptr
	mov	r5,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dps,#0
	mov	dptr,#_asincosf_sloc0_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsadd_PARM_2
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
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	lcall	___fsadd
	mov	r2,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsadd
	mov	r2,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	ar3,r2
	mov	ar4,r7
	mov	ar5,r0
	mov	ar6,r1
;	asincosf.c:93: if (x < 0.0)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	inc	dps
	mov	dptr,#_asincosf_x_65536_25
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fslt
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,dpl
	jz  00116$
00155$:
;	asincosf.c:94: r = -r;
	mov	a,r6
	cpl	acc[7]
	mov	r6,a
00116$:
;	asincosf.c:96: return r;
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
00117$:
;	asincosf.c:97: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_asincosf_a_65536_26:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0xdb, #0x0f, #0x49, #0x3f	;  7.853982e-01
_asincosf_b_65536_26:
	.byte #0xdb, #0x0f, #0xc9, #0x3f	;  1.570796e+00
	.byte #0xdb, #0x0f, #0x49, #0x3f	;  7.853982e-01
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
