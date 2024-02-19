;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module atan2f
	.optsdcc -mmcs51 --model-medium
	
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
_atan2f_sloc1_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_atan2f_PARM_2:
	.ds 4
_atan2f_x_65536_25:
	.ds 4
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
;Allocation info for local variables in function 'atan2f'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atan2f_sloc0_1_0'
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
	mov	r0,#_atan2f_x_65536_25
	mov	a,r7
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
;	atan2f.c:38: if ((x==0.0) && (y==0.0))
	mov	r0,#_atan2f_x_65536_25
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	b,a
	inc	r0
	movx	a,@r0
	orl	b,a
	inc	r0
	movx	a,@r0
	anl	a,#0x7F
	orl	a,b
	jnz	00102$
	mov	r0,#_atan2f_PARM_2
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	b,a
	inc	r0
	movx	a,@r0
	orl	b,a
	inc	r0
	movx	a,@r0
	anl	a,#0x7F
	orl	a,b
	jnz	00102$
;	atan2f.c:40: errno=EDOM;
	mov	r0,#_errno
	mov	a,#0x21
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
;	atan2f.c:41: return 0.0;
	mov	dptr,#0x0000
	mov	b,a
	ret
00102$:
;	atan2f.c:44: if(fabsf(y)>=fabsf(x))
	mov	r0,#_atan2f_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_fabsf
	mov	_atan2f_sloc0_1_0,dpl
	mov	(_atan2f_sloc0_1_0 + 1),dph
	mov	(_atan2f_sloc0_1_0 + 2),b
	mov	(_atan2f_sloc0_1_0 + 3),a
	mov	r0,#_atan2f_x_65536_25
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_fabsf
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
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
	mov	_atan2f_sloc1_1_0,c
	jnc	00147$
	ljmp	00107$
00147$:
;	atan2f.c:46: r=atanf(x/y);
	mov	r0,#_atan2f_PARM_2
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	r0,#_atan2f_x_65536_25
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
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
	lcall	_atanf
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	atan2f.c:47: if(y<0.0) r+=(x>=0?PI:-PI);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	r0,#_atan2f_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
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
	jnz	00148$
	ljmp	00108$
00148$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	r0,#_atan2f_x_65536_25
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
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
	mov	_atan2f_sloc1_1_0,c
	jc	00111$
	mov	_atan2f_sloc0_1_0,#0xdb
	mov	(_atan2f_sloc0_1_0 + 1),#0x0f
	mov	(_atan2f_sloc0_1_0 + 2),#0x49
	mov	(_atan2f_sloc0_1_0 + 3),#0x40
	sjmp	00112$
00111$:
	mov	_atan2f_sloc0_1_0,#0xdb
	mov	(_atan2f_sloc0_1_0 + 1),#0x0f
	mov	(_atan2f_sloc0_1_0 + 2),#0x49
	mov	(_atan2f_sloc0_1_0 + 3),#0xc0
00112$:
	push	_atan2f_sloc0_1_0
	push	(_atan2f_sloc0_1_0 + 1)
	push	(_atan2f_sloc0_1_0 + 2)
	push	(_atan2f_sloc0_1_0 + 3)
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
	ljmp	00108$
00107$:
;	atan2f.c:51: r=-atanf(y/x);
	mov	r0,#_atan2f_x_65536_25
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	r0,#_atan2f_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	___fsdiv
	mov	_atan2f_sloc0_1_0,dpl
	mov	(_atan2f_sloc0_1_0 + 1),dph
	mov	(_atan2f_sloc0_1_0 + 2),b
	mov	(_atan2f_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_atan2f_sloc0_1_0
	mov	dph,(_atan2f_sloc0_1_0 + 1)
	mov	b,(_atan2f_sloc0_1_0 + 2)
	mov	a,(_atan2f_sloc0_1_0 + 3)
	lcall	_atanf
	mov	_atan2f_sloc0_1_0,dpl
	mov	(_atan2f_sloc0_1_0 + 1),dph
	mov	(_atan2f_sloc0_1_0 + 2),b
	mov	(_atan2f_sloc0_1_0 + 3),a
	mov	r7,_atan2f_sloc0_1_0
	mov	r6,(_atan2f_sloc0_1_0 + 1)
	mov	r5,(_atan2f_sloc0_1_0 + 2)
	mov	a,(_atan2f_sloc0_1_0 + 3)
	cpl	acc.7
	mov	r4,a
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
	mov	r0,#_atan2f_x_65536_25
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
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
	mov	_atan2f_sloc0_1_0,#0xdb
	mov	(_atan2f_sloc0_1_0 + 1),#0x0f
	mov	(_atan2f_sloc0_1_0 + 2),#0xc9
	mov	(_atan2f_sloc0_1_0 + 3),#0xbf
	sjmp	00114$
00113$:
	mov	_atan2f_sloc0_1_0,#0xdb
	mov	(_atan2f_sloc0_1_0 + 1),#0x0f
	mov	(_atan2f_sloc0_1_0 + 2),#0xc9
	mov	(_atan2f_sloc0_1_0 + 3),#0x3f
00114$:
	push	_atan2f_sloc0_1_0
	push	(_atan2f_sloc0_1_0 + 1)
	push	(_atan2f_sloc0_1_0 + 2)
	push	(_atan2f_sloc0_1_0 + 3)
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00108$:
;	atan2f.c:54: return r;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	atan2f.c:55: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
