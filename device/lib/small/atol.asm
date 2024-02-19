;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atol
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
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
_atol_nptr_65536_59:
	.ds 3
_atol_neg_65536_60:
	.ds 1
_atol_sloc1_1_0:
	.ds 3
_atol_sloc2_1_0:
	.ds 4
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
_atol_sloc0_1_0:
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;nptr                      Allocated with name '_atol_nptr_65536_59'
;__1310720007              Allocated to registers 
;__1310720004              Allocated to registers 
;ret                       Allocated to registers r1 r2 r3 r4 
;neg                       Allocated with name '_atol_neg_65536_60'
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__1310720008              Allocated to registers 
;c                         Allocated to registers 
;sloc1                     Allocated with name '_atol_sloc1_1_0'
;sloc2                     Allocated with name '_atol_sloc2_1_0'
;------------------------------------------------------------
;	atol.c:34: long int atol(const char *nptr)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
_atol:
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
;	atol.c:36: long int ret = 0;
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
;	atol.c:39: while (isblank (*nptr))
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r0,#0x20,00161$
	sjmp	00115$
00161$:
	cjne	r0,#0x09,00131$
00115$:
;	atol.c:40: nptr++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00131$:
	mov	_atol_nptr_65536_59,r5
	mov	(_atol_nptr_65536_59 + 1),r6
	mov	(_atol_nptr_65536_59 + 2),r7
;	atol.c:42: neg = (*nptr == '-');
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	clr	a
	cjne	r7,#0x2d,00165$
	inc	a
00165$:
	mov	_atol_neg_65536_60,a
;	atol.c:44: if (*nptr == '-' || *nptr == '+')
	cjne	r7,#0x2d,00167$
	sjmp	00104$
00167$:
	cjne	r7,#0x2b,00129$
00104$:
;	atol.c:45: nptr++;
	inc	_atol_nptr_65536_59
	clr	a
	cjne	a,_atol_nptr_65536_59,00170$
	inc	(_atol_nptr_65536_59 + 1)
00170$:
;	atol.c:47: while (isdigit (*nptr))
00129$:
	mov	_atol_sloc1_1_0,_atol_nptr_65536_59
	mov	(_atol_sloc1_1_0 + 1),(_atol_nptr_65536_59 + 1)
	mov	(_atol_sloc1_1_0 + 2),(_atol_nptr_65536_59 + 2)
00107$:
	mov	dpl,_atol_sloc1_1_0
	mov	dph,(_atol_sloc1_1_0 + 1)
	mov	b,(_atol_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r0,#0x30,00171$
00171$:
	mov	_atol_sloc0_1_0,c
	jc	00109$
	mov	a,r0
	add	a,#0xff - 0x39
	mov	_atol_sloc0_1_0,c
	jc	00109$
;	atol.c:48: ret = ret * 10 + (*(nptr++) - '0');
	mov	__mullong_PARM_2,r1
	mov	(__mullong_PARM_2 + 1),r2
	mov	(__mullong_PARM_2 + 2),r3
	mov	(__mullong_PARM_2 + 3),r4
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	_atol_sloc2_1_0,dpl
	mov	(_atol_sloc2_1_0 + 1),dph
	mov	(_atol_sloc2_1_0 + 2),b
	mov	(_atol_sloc2_1_0 + 3),a
	mov	dpl,_atol_sloc1_1_0
	mov	dph,(_atol_sloc1_1_0 + 1)
	mov	b,(_atol_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	_atol_sloc1_1_0,dpl
	mov	(_atol_sloc1_1_0 + 1),dph
	mov	r6,#0x00
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
	mov	a,r6
	addc	a,#0xff
	mov	ar0,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,_atol_sloc2_1_0
	mov	r1,a
	mov	a,r5
	addc	a,(_atol_sloc2_1_0 + 1)
	mov	r2,a
	mov	a,r6
	addc	a,(_atol_sloc2_1_0 + 2)
	mov	r3,a
	mov	a,r7
	addc	a,(_atol_sloc2_1_0 + 3)
	mov	r4,a
	sjmp	00107$
00109$:
;	atol.c:50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	mov	a,_atol_neg_65536_60
	jz	00120$
	clr	c
	clr	a
	subb	a,r1
	mov	r0,a
	clr	a
	subb	a,r2
	mov	r5,a
	clr	a
	subb	a,r3
	mov	r6,a
	clr	a
	subb	a,r4
	mov	r7,a
	sjmp	00121$
00120$:
	mov	ar0,r1
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
00121$:
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	atol.c:51: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
