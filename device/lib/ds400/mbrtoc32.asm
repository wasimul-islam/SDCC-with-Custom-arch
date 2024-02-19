;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtoc32
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
	.globl _mbrtoc32_PARM_4
	.globl _mbrtoc32_PARM_3
	.globl _mbrtoc32_PARM_2
	.globl _mbrtoc32
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
_mbrtoc32_PARM_2:
	.ds 4
_mbrtoc32_PARM_3:
	.ds 2
_mbrtoc32_PARM_4:
	.ds 4
_mbrtoc32_wc_65536_16:
	.ds 4
_mbrtoc32_sps_65536_16:
	.ds 3
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
;Allocation info for local variables in function 'mbrtoc32'
;------------------------------------------------------------
;s                         Allocated with name '_mbrtoc32_PARM_2'
;n                         Allocated with name '_mbrtoc32_PARM_3'
;ps                        Allocated with name '_mbrtoc32_PARM_4'
;pc32                      Allocated to registers r2 r3 r4 r5 
;wc                        Allocated with name '_mbrtoc32_wc_65536_16'
;ret                       Allocated to registers r6 r7 
;sps                       Allocated with name '_mbrtoc32_sps_65536_16'
;sloc0                     Allocated with name '_mbrtoc32_sloc0_1_0'
;------------------------------------------------------------
;	mbrtoc32.c:34: size_t mbrtoc32(char32_t *restrict pc32, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc32
;	-----------------------------------------
_mbrtoc32:
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
;	mbrtoc32.c:40: if(!ps)
	mov	dptr,#_mbrtoc32_PARM_4
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00102$
00121$:
;	mbrtoc32.c:41: ps = &sps;
	mov	dptr,#_mbrtoc32_PARM_4
	mov	a,#_mbrtoc32_sps_65536_16
	movx	@dptr,a
	inc	dptr
	mov	a,#(_mbrtoc32_sps_65536_16 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(_mbrtoc32_sps_65536_16 >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
00102$:
;	mbrtoc32.c:43: if(!pc32)
	mov	a,r2
	orl	a,r3
	orl	a,r4
	jnz  00104$
00122$:
;	mbrtoc32.c:44: return(mbrtowc(0, s, n, ps));
	mov	dptr,#_mbrtoc32_PARM_2
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
	mov	dptr,#_mbrtoc32_PARM_4
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
	mov	dptr,#_mbrtowc_PARM_2
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
	mov	dptr,#_mbrtoc32_PARM_3
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
	mov  dptr,#0x0000
	mov	b,#0x00
	lcall	_mbrtowc
	ljmp	00107$
00104$:
;	mbrtoc32.c:46: ret = mbrtowc(&wc, s, n, ps);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#_mbrtoc32_PARM_2
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
	mov	dptr,#_mbrtoc32_PARM_4
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
	mov	dptr,#_mbrtoc32_PARM_3
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
	push	ar4
	push	ar5
	mov dptr,#_mbrtoc32_wc_65536_16
	mov	b,#0x00
	lcall	_mbrtowc
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar4
;	genAssign: resultIsFar = FALSE
	mov	ar6,r2
	mov	ar7,r3
;	mbrtoc32.c:48: if(ret <= MB_LEN_MAX)
	clr	c
	mov	a,#0x04
	subb	a,r6
	clr	a
	subb	a,r7
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	jc   00106$
00123$:
;	mbrtoc32.c:49: *pc32 = wc;
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov     dps, #1
	mov     dptr, #_mbrtoc32_wc_65536_16
	movx	a,@dptr
	mov	acc1, a
	inc	dptr
	movx	a,@dptr
	dec	dps
	lcall	__gptrputWord
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	mov	acc1, a
	inc	dptr
	movx	a,@dptr
	dec	dps
	lcall	__gptrputWord
00106$:
;	mbrtoc32.c:51: return(ret);
	mov	dpl,r6
	mov	dph,r7
00107$:
;	mbrtoc32.c:52: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
