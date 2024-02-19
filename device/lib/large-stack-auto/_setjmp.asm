;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _setjmp
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;Allocation info for local variables in function 'dummy'
;------------------------------------------------------------
;	_setjmp.c:267: static void dummy (void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
_dummy:
;	naked function: no prologue.
;	_setjmp.c:438: __endasm;
;------------------------------------------------------------
;Allocation	info for local variables in function 'setjmp'
;------------------------------------------------------------
;buf	Allocated to registers dptr b
;------------------------------------------------------------
;../../device/lib/_setjmp.c:122:int	__setjmp(unsigned char *buf)
;	-----------------------------------------
;	function setjmp
;	-----------------------------------------
	.globl	___setjmp
___setjmp:
	ar2	= 0x02
	ar3	= 0x03
	ar4	= 0x04
	ar5	= 0x05
	ar6	= 0x06
	ar7	= 0x07
	ar0	= 0x00
	ar1	= 0x01
;	genReceive
;../../device/lib/_setjmp.c:125:*buf	= BP;
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	lcall	__gptrput
	inc	dptr
;../../device/lib/_setjmp.c:126:*buf	= SP;
;	genPointerSet
;	genGenPointerSet
	mov	a,sp
	lcall	__gptrput
	inc	dptr
;../../device/lib/_setjmp.c:127:*buf++	= *((unsigned char __data *) SP );
;	genCast
	mov	r0,sp
;	genPointerGet
;	genNearPointerGet
	mov	a,@r0
;	genPointerSet
;	genGenPointerSet
	lcall	__gptrput
	inc	dptr
;../../device/lib/_setjmp.c:128:*buf++	= *((unsigned char __data *)SP - 1);
;	genCast
;	genMinus
;	genMinusDec
	dec	r0
;	genPointerGet
;	genNearPointerGet
	mov	a,@r0
;	genPointerSet
;	genGenPointerSet
	lcall	__gptrput
;../../device/lib/_setjmp.c:130:return	0;
;	genRet
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation	info for local variables in function 'longjmp'
;------------------------------------------------------------
;rv	Allocated to stack - offset -3
;buf	Allocated to registers dptr b
;lsp	Allocated to registers r5
;------------------------------------------------------------
;../../device/lib/_setjmp.c:28:int	longjmp (jmp_buf buf, int rv)
;	-----------------------------------------
;	function longjmp
;	-----------------------------------------
	.globl	_longjmp
_longjmp:
	ar2	= 0x02
	ar3	= 0x03
	ar4	= 0x04
	ar5	= 0x05
	ar6	= 0x06
	ar7	= 0x07
	ar0	= 0x00
	ar1	= 0x01
;	genReceive
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	dec	r0
	mov	ar3,@r0
;../../device/lib/_setjmp.c:30:bp	= *buf++;
;	genPointerGet
;	genGenPointerGet
	lcall	__gptrget
	inc	dptr
;	genAssign
	mov	_bp,a
;../../device/lib/_setjmp.c:31:lsp	= *buf++;
;	genPointerGet
;	genGenPointerGet
	lcall	__gptrget
	inc	dptr
;	genAssign
	mov	r5,a
;../../device/lib/_setjmp.c:32:*((unsigned	char __data *) lsp) = *buf++;
;	genCast
	mov	r0,a
;	genPointerGet
;	genGenPointerGet
	lcall	__gptrget
	inc	dptr
;	genPointerSet
;	genNearPointerSet
	mov	@r0,a
;../../device/lib/_setjmp.c:33:*((unsigned	char __data *) lsp - 1) = *buf;
;	genCast
;	genMinus
;	genMinusDec
	dec	r0
;	genPointerGet
;	genGenPointerGet
	lcall	__gptrget
;	genPointerSet
;	genNearPointerSet
	mov	@r0,a
;../../device/lib/_setjmp.c:35:SP	= lsp;
;	genAssign
	mov	sp,r5
;../../device/lib/_setjmp.c:36:return	rv ? rv : 1;
;	genAssign
	mov	dph,r2
	mov	dpl,r3
	mov	a,r2
	orl	a,r3
	jnz	00001$
	inc	dptr
;	genRet
00001$:
	ret
;	_setjmp.c:439: }
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
