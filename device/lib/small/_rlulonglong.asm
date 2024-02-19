;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rlulonglong
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rlulonglong_PARM_2
	.globl __rlulonglong
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
__rlulonglong_PARM_2:
	.ds 1
__rlulonglong_l_65536_8:
	.ds 8
__rlulonglong_sloc0_1_0:
	.ds 4
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
;Allocation info for local variables in function '_rlulonglong'
;------------------------------------------------------------
;s                         Allocated with name '__rlulonglong_PARM_2'
;l                         Allocated with name '__rlulonglong_l_65536_8'
;top                       Allocated to registers 
;middle                    Allocated to registers 
;bottom                    Allocated to registers 
;b                         Allocated to registers 
;sloc0                     Allocated with name '__rlulonglong_sloc0_1_0'
;------------------------------------------------------------
;	_rlulonglong.c:67: unsigned long long _rlulonglong(unsigned long long l, char s) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _rlulonglong
;	-----------------------------------------
__rlulonglong:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	__rlulonglong_l_65536_8,dpl
	mov	(__rlulonglong_l_65536_8 + 1),dph
	mov	(__rlulonglong_l_65536_8 + 2),b
	mov	(__rlulonglong_l_65536_8 + 3),a
	mov	(__rlulonglong_l_65536_8 + 4),r4
	mov	(__rlulonglong_l_65536_8 + 5),r5
	mov	(__rlulonglong_l_65536_8 + 6),r6
	mov	(__rlulonglong_l_65536_8 + 7),r7
;	_rlulonglong.c:69: uint32_t *const top = (uint32_t *)((char *)(&l) + 4);
;	_rlulonglong.c:70: uint16_t *const middle = (uint16_t *)((char *)(&l) + 2);
;	_rlulonglong.c:71: uint32_t *const bottom = (uint32_t *)(&l);
;	_rlulonglong.c:72: uint16_t *const b = (uint16_t *)(&l);
;	_rlulonglong.c:82: (*top) <<= s;
00103$:
;	_rlulonglong.c:74: for(;s >= 16; s-= 16)
	mov	a,#0x100 - 0x10
	add	a,__rlulonglong_PARM_2
	jnc	00101$
;	_rlulonglong.c:76: b[3] = b[2];
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0004)
	mov	b,#0x40
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0006)
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	_rlulonglong.c:77: b[2] = b[1];
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0002)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0004)
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	_rlulonglong.c:78: b[1] = b[0];
	mov	r6,(__rlulonglong_l_65536_8 + 0)
	mov	r7,(__rlulonglong_l_65536_8 + 1)
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0002)
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	_rlulonglong.c:79: b[0] = 0;
	clr	a
	mov	(__rlulonglong_l_65536_8 + 0),a
	mov	(__rlulonglong_l_65536_8 + 1),a
;	_rlulonglong.c:74: for(;s >= 16; s-= 16)
	mov	a,__rlulonglong_PARM_2
	mov	r7,a
	add	a,#0xf0
	mov	__rlulonglong_PARM_2,a
	sjmp	00103$
00101$:
;	_rlulonglong.c:82: (*top) <<= s;
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0004)
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
	mov	r3,__rlulonglong_PARM_2
	mov	b,r3
	inc	b
	mov	__rlulonglong_sloc0_1_0,ar4
	mov	(__rlulonglong_sloc0_1_0 + 1),ar5
	mov	(__rlulonglong_sloc0_1_0 + 2),ar6
	mov	(__rlulonglong_sloc0_1_0 + 3),ar7
	sjmp	00117$
00116$:
	mov	a,__rlulonglong_sloc0_1_0
	add	a,__rlulonglong_sloc0_1_0
	mov	__rlulonglong_sloc0_1_0,a
	mov	a,(__rlulonglong_sloc0_1_0 + 1)
	rlc	a
	mov	(__rlulonglong_sloc0_1_0 + 1),a
	mov	a,(__rlulonglong_sloc0_1_0 + 2)
	rlc	a
	mov	(__rlulonglong_sloc0_1_0 + 2),a
	mov	a,(__rlulonglong_sloc0_1_0 + 3)
	rlc	a
	mov	(__rlulonglong_sloc0_1_0 + 3),a
00117$:
	djnz	b,00116$
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0004)
	mov	b,#0x40
	mov	a,__rlulonglong_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(__rlulonglong_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(__rlulonglong_sloc0_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(__rlulonglong_sloc0_1_0 + 3)
	lcall	__gptrput
;	_rlulonglong.c:83: (*top) |= (((uint32_t)((*middle) & 0xffffu) << s) >> 16);
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0002)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	mov	r2,#0x00
	mov	r7,#0x00
	mov	b,r3
	inc	b
	sjmp	00119$
00118$:
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r0
	rlc	a
	mov	r0,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r7
	rlc	a
	mov	r7,a
00119$:
	djnz	b,00118$
	mov	ar1,r2
	mov	ar0,r7
	clr	a
	mov	r2,a
	mov	r7,a
	mov	a,__rlulonglong_sloc0_1_0
	orl	ar1,a
	mov	a,(__rlulonglong_sloc0_1_0 + 1)
	orl	ar0,a
	mov	a,(__rlulonglong_sloc0_1_0 + 2)
	orl	ar2,a
	mov	a,(__rlulonglong_sloc0_1_0 + 3)
	orl	ar7,a
	mov	dptr,#(__rlulonglong_l_65536_8 + 0x0004)
	mov	b,#0x40
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	_rlulonglong.c:84: (*bottom) <<= s;
	mov	r4,(__rlulonglong_l_65536_8 + 0)
	mov	r5,(__rlulonglong_l_65536_8 + 1)
	mov	r6,(__rlulonglong_l_65536_8 + 2)
	mov	r7,(__rlulonglong_l_65536_8 + 3)
	mov	b,r3
	inc	b
	sjmp	00121$
00120$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00121$:
	djnz	b,00120$
	mov	(__rlulonglong_l_65536_8 + 0),r4
	mov	(__rlulonglong_l_65536_8 + 1),r5
	mov	(__rlulonglong_l_65536_8 + 2),r6
	mov	(__rlulonglong_l_65536_8 + 3),r7
;	_rlulonglong.c:86: return(l);
	mov	dpl,__rlulonglong_l_65536_8
	mov	dph,(__rlulonglong_l_65536_8 + 1)
	mov	b,(__rlulonglong_l_65536_8 + 2)
	mov	a,(__rlulonglong_l_65536_8 + 3)
	mov	r4,(__rlulonglong_l_65536_8 + 4)
	mov	r5,(__rlulonglong_l_65536_8 + 5)
	mov	r6,(__rlulonglong_l_65536_8 + 6)
	mov	r7,(__rlulonglong_l_65536_8 + 7)
;	_rlulonglong.c:87: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
