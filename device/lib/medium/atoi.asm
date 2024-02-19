;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atoi
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
_atoi_sloc1_1_0:
	.ds 3
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
_atoi_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_atoi_nptr_65536_59:
	.ds 3
_atoi_neg_65536_60:
	.ds 1
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;sloc1                     Allocated with name '_atoi_sloc1_1_0'
;------------------------------------------------------------
;	atoi.c:34: int atoi(const char *nptr)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
_atoi:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	atoi.c:36: int ret = 0;
	mov	r3,#0x00
	mov	r4,#0x00
;	atoi.c:39: while (isblank (*nptr))
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r2,#0x20,00161$
	sjmp	00115$
00161$:
	cjne	r2,#0x09,00131$
00115$:
;	atoi.c:40: nptr++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00131$:
	mov	r0,#_atoi_nptr_65536_59
	mov	a,r5
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	atoi.c:42: neg = (*nptr == '-');
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	r0,#_atoi_neg_65536_60
	clr	a
	cjne	r7,#0x2d,00165$
	inc	a
00165$:
	movx	@r0,a
;	atoi.c:44: if (*nptr == '-' || *nptr == '+')
	cjne	r7,#0x2d,00167$
	sjmp	00104$
00167$:
	cjne	r7,#0x2b,00129$
00104$:
;	atoi.c:45: nptr++;
	mov	r0,#_atoi_nptr_65536_59
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
;	atoi.c:47: while (isdigit (*nptr))
00129$:
	mov	r0,#_atoi_nptr_65536_59
	movx	a,@r0
	mov	_atoi_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_atoi_sloc1_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_atoi_sloc1_1_0 + 2),a
00107$:
	mov	dpl,_atoi_sloc1_1_0
	mov	dph,(_atoi_sloc1_1_0 + 1)
	mov	b,(_atoi_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r2,#0x30,00170$
00170$:
	mov	_atoi_sloc0_1_0,c
	jc	00109$
	mov	a,r2
	add	a,#0xff - 0x39
	mov	_atoi_sloc0_1_0,c
	jc	00109$
;	atoi.c:48: ret = ret * 10 + (*(nptr++) - '0');
	mov	r0,#__mulint_PARM_2
	mov	a,r3
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r2,dpl
	mov	r7,dph
	mov	dpl,_atoi_sloc1_1_0
	mov	dph,(_atoi_sloc1_1_0 + 1)
	mov	b,(_atoi_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	mov	_atoi_sloc1_1_0,dpl
	mov	(_atoi_sloc1_1_0 + 1),dph
	mov	r5,#0x00
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	add	a,r2
	mov	r3,a
	mov	a,r5
	addc	a,r7
	mov	r4,a
	sjmp	00107$
00109$:
;	atoi.c:50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	mov	r0,#_atoi_neg_65536_60
	movx	a,@r0
	jz	00120$
	clr	c
	clr	a
	subb	a,r3
	mov	r6,a
	clr	a
	subb	a,r4
	mov	r7,a
	sjmp	00121$
00120$:
	mov	ar6,r3
	mov	ar7,r4
00121$:
	mov	dpl,r6
	mov	dph,r7
;	atoi.c:51: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
