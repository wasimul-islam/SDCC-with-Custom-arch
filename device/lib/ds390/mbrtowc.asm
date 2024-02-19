;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtowc
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
	.globl _mbrtowc_PARM_4
	.globl _mbrtowc_PARM_3
	.globl _mbrtowc_PARM_2
	.globl _mbrtowc
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
_mbrtowc_PARM_2:
	.ds 4
_mbrtowc_PARM_3:
	.ds 2
_mbrtowc_PARM_4:
	.ds 4
_mbrtowc_pwc_65536_9:
	.ds 4
_mbrtowc_first_byte_65536_10:
	.ds 1
_mbrtowc_mbseq_65536_10:
	.ds 4
_mbrtowc_codepoint_65536_10:
	.ds 4
_mbrtowc_sps_65536_10:
	.ds 3
_mbrtowc_sloc0_1_0:
	.ds 4
_mbrtowc_sloc1_1_0:
	.ds 1
_mbrtowc_sloc3_1_0:
	.ds 4
_mbrtowc_sloc4_1_0:
	.ds 4
_mbrtowc_sloc6_1_0:
	.ds 2
_mbrtowc_sloc7_1_0:
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
;Allocation info for local variables in function 'mbrtowc'
;------------------------------------------------------------
;s                         Allocated with name '_mbrtowc_PARM_2'
;n                         Allocated with name '_mbrtowc_PARM_3'
;ps                        Allocated with name '_mbrtowc_PARM_4'
;pwc                       Allocated with name '_mbrtowc_pwc_65536_9'
;first_byte                Allocated with name '_mbrtowc_first_byte_65536_10'
;seqlen                    Allocated to registers 
;mbseq                     Allocated with name '_mbrtowc_mbseq_65536_10'
;codepoint                 Allocated with name '_mbrtowc_codepoint_65536_10'
;i                         Allocated to registers r2 
;j                         Allocated to registers 
;sps                       Allocated with name '_mbrtowc_sps_65536_10'
;sloc0                     Allocated with name '_mbrtowc_sloc0_1_0'
;sloc1                     Allocated with name '_mbrtowc_sloc1_1_0'
;sloc2                     Allocated with name '_mbrtowc_sloc2_1_0'
;sloc3                     Allocated with name '_mbrtowc_sloc3_1_0'
;sloc4                     Allocated with name '_mbrtowc_sloc4_1_0'
;sloc5                     Allocated with name '_mbrtowc_sloc5_1_0'
;sloc6                     Allocated with name '_mbrtowc_sloc6_1_0'
;sloc7                     Allocated with name '_mbrtowc_sloc7_1_0'
;------------------------------------------------------------
;	mbrtowc.c:32: size_t mbrtowc(wchar_t *restrict pwc, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtowc
;	-----------------------------------------
_mbrtowc:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_mbrtowc_pwc_65536_9
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
;	mbrtowc.c:41: if(!s)
	mov	dptr,#_mbrtowc_PARM_2
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
	mov	dptr,#_mbrtowc_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00102$
00279$:
;	mbrtowc.c:42: return(mbrtowc(0, "", 1, ps));
	mov	dptr,#_mbrtowc_PARM_4
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
	mov	dptr,#_mbrtowc_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
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
	mov  dptr,#0x0000
	mov	b,#0x00
	lcall	_mbrtowc
	ljmp	00145$
00102$:
;	mbrtowc.c:43: if(!n)
	mov	dptr,#_mbrtowc_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00280$
	ljmp	00128$
00280$:
;	mbrtowc.c:45: if(!ps)
	mov	dptr,#_mbrtowc_PARM_4
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00106$
00281$:
;	mbrtowc.c:47: ps = &sps;
	mov	dptr,#_mbrtowc_PARM_4
	mov	a,#_mbrtowc_sps_65536_10
	movx	@dptr,a
	inc	dptr
	mov	a,#(_mbrtowc_sps_65536_10 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(_mbrtowc_sps_65536_10 >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
00106$:
;	mbrtowc.c:50: for(i = 0; ps->c[i] && i < 3; i++)
	mov	dptr,#_mbrtowc_PARM_4
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_mbrtowc_sloc0_1_0
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
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbrtowc_sloc1_1_0
	clr	a
	movx	@dptr,a
00131$:
	mov	dptr,#_mbrtowc_sloc1_1_0
	mov	dps, #1
	mov	dptr, #_mbrtowc_sloc0_1_0
	dec	dps
	movx	a,@dptr
	xch	a, acc1
	inc	dps
	movx	a,@dptr
	xch	a, acc1
	add	a,acc1
	mov	r2,a
	clr	a
	xch	a, acc1
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r3,a
	clr	a
	xch	a, acc1
	inc	dptr
	movx	a,@dptr
	xch	a, acc1
	addc	a,acc1
	mov	r4,a
	mov     dps, #1
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov  r5,a
	jz  00174$
00282$:
	mov	dptr,#_mbrtowc_sloc1_1_0
	movx	a,@dptr
	cjne	a,#0x03,00283$
00283$:
	jnc  00174$
00284$:
;	mbrtowc.c:51: mbseq[i] = ps->c[i];
	mov	dptr,#_mbrtowc_sloc1_1_0
	movx	a,@dptr
	add	a,#_mbrtowc_mbseq_65536_10
	mov	r2,a
	clr	a
	addc	a,#(_mbrtowc_mbseq_65536_10 >> 8)
	mov	r3,a
	clr	a
	addc	a,#(_mbrtowc_mbseq_65536_10 >> 16)
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	a,r5
	movx	@dptr,a
;	mbrtowc.c:50: for(i = 0; ps->c[i] && i < 3; i++)
	mov	dptr,#_mbrtowc_sloc1_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp 00131$
00174$:
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#_mbrtowc_sloc1_1_0
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	r2,a
;	mbrtowc.c:53: seqlen = 1;
;	genAssign: resultIsFar = FALSE
	mov	r3,#0x01
;	mbrtowc.c:54: first_byte = ps->c[0] ? ps->c[0] : *s;
	mov	dptr,#_mbrtowc_PARM_4
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
	lcall	__gptrget
	mov	r4,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,r4
	jz  00147$
00285$:
;	genAssign: resultIsFar = FALSE
	sjmp 00148$
00147$:
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrget
	mov	r4,a
00148$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbrtowc_first_byte_65536_10
	mov	a,r4
	movx	@dptr,a
;	mbrtowc.c:56: if(first_byte & 0x80)
	mov	dptr,#_mbrtowc_first_byte_65536_10
	movx	a,@dptr
	jnb  acc[7],00112$
00286$:
;	mbrtowc.c:58: while (first_byte & (0x80 >> seqlen))
;	genAssign: resultIsFar = FALSE
	mov	r5,#0x01
00108$:
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	b,r5
	inc	b
	mov	r6,#0x80
	clr  a
	mov  r7,a
	rlc	a
	mov	ov,c
	sjmp	00288$
00287$:
	mov	c,ov
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
00288$:
	djnz	b,00287$
	mov	dptr,#_mbrtowc_first_byte_65536_10
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	a,r0
	anl	ar6,a
	mov	a,r1
	anl	ar7,a
	mov	a,r6
	orl	a,r7
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	jz  00175$
00289$:
;	mbrtowc.c:59: seqlen++;
	inc	r5
	sjmp 00108$
00175$:
	push	ar6
	push	ar7
	push	ar0
	push	ar1
;	genAssign: resultIsFar = FALSE
	mov	ar3,r5
;	mbrtowc.c:60: first_byte &= (0xff >> (seqlen + 1));
	inc	r5
	mov	b,r5
	inc	b
	mov	r5,#0xff
	clr  a
	mov  r6,a
	rlc	a
	mov	ov,c
	sjmp	00291$
00290$:
	mov	c,ov
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
00291$:
	djnz	b,00290$
	mov	dptr,#_mbrtowc_first_byte_65536_10
	movx	a,@dptr
	anl	a,r5
	movx	@dptr,a
;	mbrtowc.c:101: return(-1);
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	mbrtowc.c:60: first_byte &= (0xff >> (seqlen + 1));
00112$:
;	mbrtowc.c:63: if(seqlen > 4)
	clr	c
	mov	a,#0x04
	subb	a,r3
	jnc	00292$
	ljmp	00128$
00292$:
;	mbrtowc.c:66: if(i + n < seqlen) // Incomplete multibyte character
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#_mbrtowc_sloc0_1_0
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_mbrtowc_sloc0_1_0
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_mbrtowc_PARM_3
	movx	a,@dptr
	add	a,r5
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	addc	a,r6
	mov	r6,a
	mov	ar7,r3
	mov	r0,#0x00
	clr	c
	mov	a,r5
	subb	a,r7
	mov	a,r6
	subb	a,r0
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	jc	00293$
	ljmp	00164$
00293$:
;	mbrtowc.c:70: return(-2);
	mov	dptr,#_mbrtowc_PARM_4
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_mbrtowc_sloc3_1_0
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
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbrtowc_sloc4_1_0
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
;	genAssign: resultIsFar = FALSE
	mov	ar1,r2
	mov	dptr,#_mbrtowc_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00134$:
;	mbrtowc.c:68: for(;n-- ; i++)
;	genAssign: resultIsFar = FALSE
	mov	ar2,r4
	mov	ar3,r6
	dec	r4
	cjne	r4,#0xff,00294$
	dec	r6
00294$:
	mov	a,r2
	orl	a,r3
	jz  00115$
00295$:
;	mbrtowc.c:69: ps->c[i] = *s++;
	mov	dptr,#_mbrtowc_sloc3_1_0
	movx	a,@dptr
	add	a,r1
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#_mbrtowc_sloc4_1_0
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
	mov	r5,a
	mov	dptr,#_mbrtowc_sloc4_1_0
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
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r7
	mov	b,r0
	mov	a,r5
	lcall	__gptrput
;	mbrtowc.c:68: for(;n-- ; i++)
	inc	r1
	sjmp 00134$
00115$:
;	mbrtowc.c:70: return(-2);
	mov  dptr,#0xfffe
	ljmp	00145$
;	mbrtowc.c:73: for(j = 0; j < i; j++)
00164$:
	mov	dptr,#_mbrtowc_PARM_4
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_mbrtowc_sloc7_1_0
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
;	genAssign: resultIsFar = FALSE
	mov	r5,#0x00
00137$:
	clr	c
	mov	a,r5
	subb	a,r2
	jnc  00118$
00296$:
;	mbrtowc.c:74: ps->c[j] = 0;
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#_mbrtowc_sloc7_1_0
	movx	a,@dptr
	add	a,r5
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
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
;	mbrtowc.c:73: for(j = 0; j < i; j++)
	inc	r5
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	sjmp 00137$
00118$:
;	mbrtowc.c:76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbrtowc_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	jz  00149$
00297$:
	mov	dptr,#_mbrtowc_sloc0_1_0
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	sjmp 00150$
00149$:
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x01
	mov	r5,#0x00
00150$:
;	genAssign: resultIsFar = FALSE
	mov	ar5,r1
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbrtowc_sloc7_1_0
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00140$:
	clr	c
	mov	a,r2
	subb	a,r3
	jnc  00121$
00298$:
;	mbrtowc.c:78: mbseq[i] = *s++;
	push	ar3
	mov	a,r2
	add	a,#_mbrtowc_mbseq_65536_10
	mov	dpl1,a
	clr	a
	addc	a,#(_mbrtowc_mbseq_65536_10 >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(_mbrtowc_mbseq_65536_10 >> 16)
	mov	dpx1,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r5,b
	mov	a,r3
	inc	dps
	movx	@dptr,a
	mov	dps,#0
;	mbrtowc.c:79: if((mbseq[i] & 0xc0) != 0x80)
	mov	r4,#0x00
	anl	ar3,#0xc0
	mov	r4,#0x00
	cjne	r3,#0x80,00299$
	cjne	r4,#0x00,00299$
	sjmp	00300$
00299$:
	pop	ar3
	ljmp	00128$
00300$:
	pop	ar3
;	mbrtowc.c:76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	inc	r2
	mov	dptr,#_mbrtowc_sloc7_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_mbrtowc_sloc7_1_0
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
	sjmp 00140$
00121$:
;	mbrtowc.c:83: codepoint = first_byte;
	mov	dptr,#_mbrtowc_first_byte_65536_10
	movx	a,@dptr
	mov	r2,a
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
;	mbrtowc.c:85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	mov	dptr,#_mbrtowc_sloc7_1_0
	mov	a,#(_mbrtowc_mbseq_65536_10 + 0x000001)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_mbrtowc_mbseq_65536_10 + 0x000001) >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_mbrtowc_mbseq_65536_10 + 0x000001) >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#_mbrtowc_sloc6_1_0
	mov	a,r3
	dec	a
	movx	@dptr,a
00143$:
	mov	dptr,#_mbrtowc_sloc6_1_0
	movx	a,@dptr
	jnz	00301$
	ljmp	00122$
00301$:
;	mbrtowc.c:87: codepoint <<= 6;
	mov	ar1,r5
	mov	a,r6
	anl	a,#0x03
	mov	c,acc[0]
	xch	a,r1
	rrc	a
	xch	a,r1
	rrc	a
	mov	c,acc[0]
	xch	a,r1
	rrc	a
	xch	a,r1
	rrc	a
	xch	a,r1
	mov	r3,a
	mov	a,r4
	rr	a
	rr	a
	anl	a,#0x3f
	orl	a,r1
	mov	r1,a
	mov	ar7,r2
	mov	a,r4
	anl	a,#0x03
	mov	c,acc[0]
	xch	a,r7
	rrc	a
	xch	a,r7
	rrc	a
	mov	c,acc[0]
	xch	a,r7
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	mov	r0,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_mbrtowc_codepoint_65536_10
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	mbrtowc.c:88: codepoint |= (*s & 0x3f);
	mov	dptr,#_mbrtowc_sloc7_1_0
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
	mov	r3,a
	mov	r7,#0x00
	anl	ar3,#0x3f
	mov	r7,#0x00
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
	mov	dptr,#_mbrtowc_codepoint_65536_10
	movx	a,@dptr
	orl	a,r3
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	orl	a,r7
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	orl	a,r0
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	orl	a,r1
	mov	r6,a
;	mbrtowc.c:89: s++;
	mov	dptr,#_mbrtowc_sloc7_1_0
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
;	mbrtowc.c:85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	mov	dptr,#_mbrtowc_sloc6_1_0
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	ljmp	00143$
00122$:
;	mbrtowc.c:92: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	clr	c
	mov	a,r2
	subb	a,#0x00
	mov	a,r4
	subb	a,#0xd8
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	jc   00124$
00302$:
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0xdf
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	jc   00124$
00303$:
;	mbrtowc.c:93: return(-1);
	mov  dptr,#0xffff
	sjmp 00145$
00124$:
;	mbrtowc.c:95: if(pwc)
	mov	dptr,#_mbrtowc_pwc_65536_9
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz  00127$
00304$:
;	mbrtowc.c:96: *pwc = codepoint;
	mov	dptr,#_mbrtowc_pwc_65536_9
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
	mov	acc1, r2
	mov	a,r4
	lcall	__gptrputWord
	inc	dptr
	mov	acc1, r5
	mov	a,r6
	lcall	__gptrputWord
00127$:
;	mbrtowc.c:97: return(n);
	mov     dps, #1
	mov     dptr, #_mbrtowc_PARM_3
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
;	mbrtowc.c:99: eilseq:
	sjmp 00145$
00128$:
;	mbrtowc.c:100: errno = EILSEQ;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_errno
	mov	a,#0x54
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	mbrtowc.c:101: return(-1);
	mov  dptr,#0xffff
00145$:
;	mbrtowc.c:102: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
