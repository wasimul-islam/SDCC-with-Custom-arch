;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rrulonglong
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rrulonglong_PARM_2
	.globl __rrulonglong
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
	.area	OSEG    (OVR,DATA)
__rrulonglong_PARM_2:
	.ds 1
__rrulonglong_l_65536_1:
	.ds 8
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
;Allocation info for local variables in function '_rrulonglong'
;------------------------------------------------------------
;s                         Allocated with name '__rrulonglong_PARM_2'
;l                         Allocated with name '__rrulonglong_l_65536_1'
;top                       Allocated to registers 
;middle                    Allocated to registers 
;bottom                    Allocated to registers 
;b                         Allocated to registers 
;------------------------------------------------------------
;	_rrulonglong.c:41: unsigned long long _rrulonglong(unsigned long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rrulonglong
;	-----------------------------------------
__rrulonglong:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	__rrulonglong_l_65536_1,dpl
	mov	(__rrulonglong_l_65536_1 + 1),dph
	mov	(__rrulonglong_l_65536_1 + 2),b
	mov	(__rrulonglong_l_65536_1 + 3),a
	mov	(__rrulonglong_l_65536_1 + 4),r4
	mov	(__rrulonglong_l_65536_1 + 5),r5
	mov	(__rrulonglong_l_65536_1 + 6),r6
	mov	(__rrulonglong_l_65536_1 + 7),r7
;	_rrulonglong.c:43: uint32_t *const top = (uint32_t *)((char *)(&l) + 0);
;	_rrulonglong.c:44: uint32_t *const middle = (uint16_t *)((char *)(&l) + 2);
;	_rrulonglong.c:45: uint32_t *const bottom = (uint32_t *)((char *)(&l) + 4);
;	_rrulonglong.c:46: uint16_t *const b = (uint16_t *)(&l);
;	_rrulonglong.c:56: (*bottom) >>= s;
00103$:
;	_rrulonglong.c:48: for(;s >= 16; s -= 16)
	mov	a,#0x100 - 0x10
	add	a,__rrulonglong_PARM_2
	jnc	00101$
;	_rrulonglong.c:50: b[3] = b[2];
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0004)
	mov	b,#0x40
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0006)
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	_rrulonglong.c:51: b[2] = b[1];
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0002)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0004)
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	_rrulonglong.c:52: b[1] = b[0];
	mov	r6,(__rrulonglong_l_65536_1 + 0)
	mov	r7,(__rrulonglong_l_65536_1 + 1)
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0002)
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	_rrulonglong.c:53: b[0] = 0x000000;
	clr	a
	mov	(__rrulonglong_l_65536_1 + 0),a
	mov	(__rrulonglong_l_65536_1 + 1),a
;	_rrulonglong.c:48: for(;s >= 16; s -= 16)
	mov	a,__rrulonglong_PARM_2
	mov	r7,a
	add	a,#0xf0
	mov	__rrulonglong_PARM_2,a
	sjmp	00103$
00101$:
;	_rrulonglong.c:56: (*bottom) >>= s;
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0004)
	mov	b,#0x40
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	b,__rrulonglong_PARM_2
	inc	b
	sjmp	00117$
00116$:
	clr	c
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00117$:
	djnz	b,00116$
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0004)
	mov	b,#0x40
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	_rrulonglong.c:57: (*middle) |= (((*middle & 0xffff0000ul) >> s) & 0x0000fffful);
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0002)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,#0x00
	mov	r1,#0x00
	mov	ar2,r6
	mov	ar3,r7
	mov	b,__rrulonglong_PARM_2
	inc	b
	sjmp	00119$
00118$:
	clr	c
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
00119$:
	djnz	b,00118$
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
	mov	a,r2
	orl	ar6,a
	mov	a,r3
	orl	ar7,a
	mov	dptr,#(__rrulonglong_l_65536_1 + 0x0002)
	mov	b,#0x40
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	_rrulonglong.c:58: (*top) >>= s;
	mov	r4,(__rrulonglong_l_65536_1 + 0)
	mov	r5,(__rrulonglong_l_65536_1 + 1)
	mov	r6,(__rrulonglong_l_65536_1 + 2)
	mov	r7,(__rrulonglong_l_65536_1 + 3)
	mov	b,__rrulonglong_PARM_2
	inc	b
	sjmp	00121$
00120$:
	clr	c
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00121$:
	djnz	b,00120$
	mov	(__rrulonglong_l_65536_1 + 0),r4
	mov	(__rrulonglong_l_65536_1 + 1),r5
	mov	(__rrulonglong_l_65536_1 + 2),r6
	mov	(__rrulonglong_l_65536_1 + 3),r7
;	_rrulonglong.c:60: return(l);
	mov	dpl,__rrulonglong_l_65536_1
	mov	dph,(__rrulonglong_l_65536_1 + 1)
	mov	b,(__rrulonglong_l_65536_1 + 2)
	mov	a,(__rrulonglong_l_65536_1 + 3)
	mov	r4,(__rrulonglong_l_65536_1 + 4)
	mov	r5,(__rrulonglong_l_65536_1 + 5)
	mov	r6,(__rrulonglong_l_65536_1 + 6)
	mov	r7,(__rrulonglong_l_65536_1 + 7)
;	_rrulonglong.c:61: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
