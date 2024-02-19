;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module lldiv
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lldiv_PARM_2
	.globl _lldiv_PARM_1
	.globl _lldiv
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
_lldiv_PARM_1:
	.ds 8
_lldiv_PARM_2:
	.ds 8
_lldiv_ret_65536_40:
	.ds 16
_lldiv_sloc0_1_0:
	.ds 8
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
;Allocation info for local variables in function 'lldiv'
;------------------------------------------------------------
;numer                     Allocated with name '_lldiv_PARM_1'
;denom                     Allocated with name '_lldiv_PARM_2'
;ret                       Allocated with name '_lldiv_ret_65536_40'
;sloc0                     Allocated with name '_lldiv_sloc0_1_0'
;------------------------------------------------------------
;	lldiv.c:32: lldiv_t lldiv(long long int numer, long long int denom)
;	-----------------------------------------
;	 function lldiv
;	-----------------------------------------
_lldiv:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	lldiv.c:35: ret.quot = numer / denom;
	mov	__divslonglong_PARM_2,_lldiv_PARM_2
	mov	(__divslonglong_PARM_2 + 1),(_lldiv_PARM_2 + 1)
	mov	(__divslonglong_PARM_2 + 2),(_lldiv_PARM_2 + 2)
	mov	(__divslonglong_PARM_2 + 3),(_lldiv_PARM_2 + 3)
	mov	(__divslonglong_PARM_2 + 4),(_lldiv_PARM_2 + 4)
	mov	(__divslonglong_PARM_2 + 5),(_lldiv_PARM_2 + 5)
	mov	(__divslonglong_PARM_2 + 6),(_lldiv_PARM_2 + 6)
	mov	(__divslonglong_PARM_2 + 7),(_lldiv_PARM_2 + 7)
	mov	dpl,_lldiv_PARM_1
	mov	dph,(_lldiv_PARM_1 + 1)
	mov	b,(_lldiv_PARM_1 + 2)
	mov	a,(_lldiv_PARM_1 + 3)
	mov	r4,(_lldiv_PARM_1 + 4)
	mov	r5,(_lldiv_PARM_1 + 5)
	mov	r6,(_lldiv_PARM_1 + 6)
	mov	r7,(_lldiv_PARM_1 + 7)
	lcall	__divslonglong
	mov	_lldiv_sloc0_1_0,dpl
	mov	(_lldiv_sloc0_1_0 + 1),dph
	mov	(_lldiv_sloc0_1_0 + 2),b
	mov	(_lldiv_sloc0_1_0 + 3),a
	mov	(_lldiv_sloc0_1_0 + 4),r4
	mov	(_lldiv_sloc0_1_0 + 5),r5
	mov	(_lldiv_sloc0_1_0 + 6),r6
	mov	(_lldiv_sloc0_1_0 + 7),r7
	mov	(_lldiv_ret_65536_40 + 0),_lldiv_sloc0_1_0
	mov	(_lldiv_ret_65536_40 + 1),(_lldiv_sloc0_1_0 + 1)
	mov	(_lldiv_ret_65536_40 + 2),(_lldiv_sloc0_1_0 + 2)
	mov	(_lldiv_ret_65536_40 + 3),(_lldiv_sloc0_1_0 + 3)
	mov	(_lldiv_ret_65536_40 + 4),(_lldiv_sloc0_1_0 + 4)
	mov	(_lldiv_ret_65536_40 + 5),(_lldiv_sloc0_1_0 + 5)
	mov	(_lldiv_ret_65536_40 + 6),(_lldiv_sloc0_1_0 + 6)
	mov	(_lldiv_ret_65536_40 + 7),(_lldiv_sloc0_1_0 + 7)
;	lldiv.c:36: ret.rem = numer % denom;
	mov	__modslonglong_PARM_2,_lldiv_PARM_2
	mov	(__modslonglong_PARM_2 + 1),(_lldiv_PARM_2 + 1)
	mov	(__modslonglong_PARM_2 + 2),(_lldiv_PARM_2 + 2)
	mov	(__modslonglong_PARM_2 + 3),(_lldiv_PARM_2 + 3)
	mov	(__modslonglong_PARM_2 + 4),(_lldiv_PARM_2 + 4)
	mov	(__modslonglong_PARM_2 + 5),(_lldiv_PARM_2 + 5)
	mov	(__modslonglong_PARM_2 + 6),(_lldiv_PARM_2 + 6)
	mov	(__modslonglong_PARM_2 + 7),(_lldiv_PARM_2 + 7)
	mov	dpl,_lldiv_PARM_1
	mov	dph,(_lldiv_PARM_1 + 1)
	mov	b,(_lldiv_PARM_1 + 2)
	mov	a,(_lldiv_PARM_1 + 3)
	mov	r4,(_lldiv_PARM_1 + 4)
	mov	r5,(_lldiv_PARM_1 + 5)
	mov	r6,(_lldiv_PARM_1 + 6)
	mov	r7,(_lldiv_PARM_1 + 7)
	lcall	__modslonglong
	mov	_lldiv_sloc0_1_0,dpl
	mov	(_lldiv_sloc0_1_0 + 1),dph
	mov	(_lldiv_sloc0_1_0 + 2),b
	mov	(_lldiv_sloc0_1_0 + 3),a
	mov	(_lldiv_sloc0_1_0 + 4),r4
	mov	(_lldiv_sloc0_1_0 + 5),r5
	mov	(_lldiv_sloc0_1_0 + 6),r6
	mov	(_lldiv_sloc0_1_0 + 7),r7
	mov	((_lldiv_ret_65536_40 + 0x0008) + 0),_lldiv_sloc0_1_0
	mov	((_lldiv_ret_65536_40 + 0x0008) + 1),(_lldiv_sloc0_1_0 + 1)
	mov	((_lldiv_ret_65536_40 + 0x0008) + 2),(_lldiv_sloc0_1_0 + 2)
	mov	((_lldiv_ret_65536_40 + 0x0008) + 3),(_lldiv_sloc0_1_0 + 3)
	mov	((_lldiv_ret_65536_40 + 0x0008) + 4),(_lldiv_sloc0_1_0 + 4)
	mov	((_lldiv_ret_65536_40 + 0x0008) + 5),(_lldiv_sloc0_1_0 + 5)
	mov	((_lldiv_ret_65536_40 + 0x0008) + 6),(_lldiv_sloc0_1_0 + 6)
	mov	((_lldiv_ret_65536_40 + 0x0008) + 7),(_lldiv_sloc0_1_0 + 7)
;	lldiv.c:37: return(ret);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_lldiv_ret_65536_40
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 3)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 4)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 5)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 6)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 7)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 8)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 9)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 10)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 11)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 12)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 13)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 14)
	lcall	__gptrput
	inc	dptr
	mov	a,(_lldiv_ret_65536_40 + 15)
;	lldiv.c:38: }
	ljmp	__gptrput
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
