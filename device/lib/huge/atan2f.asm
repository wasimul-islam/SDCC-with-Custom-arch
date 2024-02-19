;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atan2f
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
	.globl _atan2f_PARM_2
	.globl _atan2f
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
_atan2f_sloc0_1_0:
	.ds 4
_atan2f_sloc1_1_0:
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
_atan2f_sloc2_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_atan2f_PARM_2:
	.ds 4
_atan2f_x_65536_25:
	.ds 4
_atan2f_r_65536_26:
	.ds 4
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
;Allocation info for local variables in function 'atan2f'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atan2f_sloc0_1_0'
;sloc1                     Allocated with name '_atan2f_sloc1_1_0'
;y                         Allocated with name '_atan2f_PARM_2'
;x                         Allocated with name '_atan2f_x_65536_25'
;r                         Allocated with name '_atan2f_r_65536_26'
;------------------------------------------------------------
;	atan2f.c:34: float atan2f(float x, float y)
;	-----------------------------------------
;	 function atan2f
;	-----------------------------------------
_atan2f:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_atan2f_x_65536_25
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	atan2f.c:38: if ((x==0.0) && (y==0.0))
	mov	dptr,#_atan2f_x_65536_25
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	anl	a,#0x7F
	orl	a,b
	jnz	00102$
	mov	dptr,#_atan2f_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	anl	a,#0x7F
	orl	a,b
	jnz	00102$
;	atan2f.c:40: errno=EDOM;
	mov	dptr,#_errno
	mov	a,#0x21
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	atan2f.c:41: return 0.0;
	mov	dptr,#0x0000
	mov	b,a
	ljmp	__sdcc_banked_ret
00102$:
;	atan2f.c:44: if(fabsf(y)>=fabsf(x))
	mov	dptr,#_atan2f_PARM_2
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
	mov	b,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,#_fabsf
	mov	r1,#(_fabsf >> 8)
	mov	r2,#(_fabsf >> 16)
	lcall	__sdcc_banked_call
	mov	_atan2f_sloc1_1_0,dpl
	mov	(_atan2f_sloc1_1_0 + 1),dph
	mov	(_atan2f_sloc1_1_0 + 2),b
	mov	(_atan2f_sloc1_1_0 + 3),a
	mov	dptr,#_atan2f_x_65536_25
	movx	a,@dptr
	mov	_atan2f_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_atan2f_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_atan2f_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_atan2f_sloc0_1_0 + 3),a
	mov	dpl,_atan2f_sloc0_1_0
	mov	dph,(_atan2f_sloc0_1_0 + 1)
	mov	b,(_atan2f_sloc0_1_0 + 2)
	mov	r0,#_fabsf
	mov	r1,#(_fabsf >> 8)
	mov	r2,#(_fabsf >> 16)
	lcall	__sdcc_banked_call
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_atan2f_sloc1_1_0
	mov	dph,(_atan2f_sloc1_1_0 + 1)
	mov	b,(_atan2f_sloc1_1_0 + 2)
	mov	a,(_atan2f_sloc1_1_0 + 3)
	lcall	___fslt
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,dpl
	add	a,#0xff
	mov	_atan2f_sloc2_1_0,c
	jnc	00141$
	ljmp	00107$
00141$:
;	atan2f.c:46: r=atanf(x/y);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_atan2f_sloc0_1_0
	mov	dph,(_atan2f_sloc0_1_0 + 1)
	mov	b,(_atan2f_sloc0_1_0 + 2)
	mov	a,(_atan2f_sloc0_1_0 + 3)
	lcall	___fsdiv
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	mov	r0,#_atanf
	mov	r1,#(_atanf >> 8)
	mov	r2,#(_atanf >> 16)
	lcall	__sdcc_banked_call
	mov	_atan2f_sloc1_1_0,dpl
	mov	(_atan2f_sloc1_1_0 + 1),dph
	mov	(_atan2f_sloc1_1_0 + 2),b
	mov	(_atan2f_sloc1_1_0 + 3),a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_atan2f_r_65536_26
	mov	a,_atan2f_sloc1_1_0
	movx	@dptr,a
	mov	a,(_atan2f_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_atan2f_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_atan2f_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	atan2f.c:47: if(y<0.0) r+=(x>=0?PI:-PI);
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r3
	jnz	00142$
	ljmp	00108$
00142$:
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_atan2f_sloc0_1_0
	mov	dph,(_atan2f_sloc0_1_0 + 1)
	mov	b,(_atan2f_sloc0_1_0 + 2)
	mov	a,(_atan2f_sloc0_1_0 + 3)
	lcall	___fslt
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,dpl
	add	a,#0xff
	mov	_atan2f_sloc2_1_0,c
	jc	00111$
	mov	r0,#0xdb
	mov	r1,#0x0f
	mov	r2,#0x49
	mov	r3,#0x40
	sjmp	00112$
00111$:
	mov	r0,#0xdb
	mov	r1,#0x0f
	mov	r2,#0x49
	mov	r3,#0xc0
00112$:
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_atan2f_sloc1_1_0
	mov	dph,(_atan2f_sloc1_1_0 + 1)
	mov	b,(_atan2f_sloc1_1_0 + 2)
	mov	a,(_atan2f_sloc1_1_0 + 3)
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_atan2f_r_65536_26
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00108$
00107$:
;	atan2f.c:51: r=-atanf(y/x);
	push	_atan2f_sloc0_1_0
	push	(_atan2f_sloc0_1_0 + 1)
	push	(_atan2f_sloc0_1_0 + 2)
	push	(_atan2f_sloc0_1_0 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	mov	r0,#_atanf
	mov	r1,#(_atanf >> 8)
	mov	r2,#(_atanf >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	cpl	acc.7
	mov	r7,a
;	atan2f.c:52: r+=(x<0.0?-HALF_PI:HALF_PI);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_atan2f_sloc0_1_0
	mov	dph,(_atan2f_sloc0_1_0 + 1)
	mov	b,(_atan2f_sloc0_1_0 + 2)
	mov	a,(_atan2f_sloc0_1_0 + 3)
	lcall	___fslt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	jz	00113$
	mov	r0,#0xdb
	mov	r1,#0x0f
	mov	r2,#0xc9
	mov	r3,#0xbf
	sjmp	00114$
00113$:
	mov	r0,#0xdb
	mov	r1,#0x0f
	mov	r2,#0xc9
	mov	r3,#0x3f
00114$:
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_atan2f_r_65536_26
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00108$:
;	atan2f.c:54: return r;
	mov	dptr,#_atan2f_r_65536_26
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
	mov	b,r6
;	atan2f.c:55: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
