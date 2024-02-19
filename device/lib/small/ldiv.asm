;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module ldiv
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldiv_PARM_2
	.globl _ldiv_PARM_1
	.globl _ldiv
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
_ldiv_PARM_1:
	.ds 4
_ldiv_PARM_2:
	.ds 4
_ldiv_ret_65536_40:
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
;Allocation info for local variables in function 'ldiv'
;------------------------------------------------------------
;numer                     Allocated with name '_ldiv_PARM_1'
;denom                     Allocated with name '_ldiv_PARM_2'
;ret                       Allocated with name '_ldiv_ret_65536_40'
;------------------------------------------------------------
;	ldiv.c:32: ldiv_t ldiv(long int numer, long int denom)
;	-----------------------------------------
;	 function ldiv
;	-----------------------------------------
_ldiv:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	ldiv.c:35: ret.quot = numer / denom;
	mov	__divslong_PARM_2,_ldiv_PARM_2
	mov	(__divslong_PARM_2 + 1),(_ldiv_PARM_2 + 1)
	mov	(__divslong_PARM_2 + 2),(_ldiv_PARM_2 + 2)
	mov	(__divslong_PARM_2 + 3),(_ldiv_PARM_2 + 3)
	mov	dpl,_ldiv_PARM_1
	mov	dph,(_ldiv_PARM_1 + 1)
	mov	b,(_ldiv_PARM_1 + 2)
	mov	a,(_ldiv_PARM_1 + 3)
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	(_ldiv_ret_65536_40 + 0),r4
	mov	(_ldiv_ret_65536_40 + 1),r5
	mov	(_ldiv_ret_65536_40 + 2),r6
	mov	(_ldiv_ret_65536_40 + 3),r7
;	ldiv.c:36: ret.rem = numer % denom;
	mov	__modslong_PARM_2,_ldiv_PARM_2
	mov	(__modslong_PARM_2 + 1),(_ldiv_PARM_2 + 1)
	mov	(__modslong_PARM_2 + 2),(_ldiv_PARM_2 + 2)
	mov	(__modslong_PARM_2 + 3),(_ldiv_PARM_2 + 3)
	mov	dpl,_ldiv_PARM_1
	mov	dph,(_ldiv_PARM_1 + 1)
	mov	b,(_ldiv_PARM_1 + 2)
	mov	a,(_ldiv_PARM_1 + 3)
	lcall	__modslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	((_ldiv_ret_65536_40 + 0x0004) + 0),r4
	mov	((_ldiv_ret_65536_40 + 0x0004) + 1),r5
	mov	((_ldiv_ret_65536_40 + 0x0004) + 2),r6
	mov	((_ldiv_ret_65536_40 + 0x0004) + 3),r7
;	ldiv.c:37: return(ret);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_ldiv_ret_65536_40
	lcall	__gptrput
	inc	dptr
	mov	a,(_ldiv_ret_65536_40 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_ldiv_ret_65536_40 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_ldiv_ret_65536_40 + 3)
	lcall	__gptrput
	inc	dptr
	mov	a,(_ldiv_ret_65536_40 + 4)
	lcall	__gptrput
	inc	dptr
	mov	a,(_ldiv_ret_65536_40 + 5)
	lcall	__gptrput
	inc	dptr
	mov	a,(_ldiv_ret_65536_40 + 6)
	lcall	__gptrput
	inc	dptr
	mov	a,(_ldiv_ret_65536_40 + 7)
;	ldiv.c:38: }
	ljmp	__gptrput
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
