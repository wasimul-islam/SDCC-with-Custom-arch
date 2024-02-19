;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module call_once
	.optsdcc -mhc08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _call_once_PARM_2
	.globl _call_once
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_call_once_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
_call_once_PARM_2:
	.ds 2
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
;Allocation info for local variables in function 'call_once'
;------------------------------------------------------------
;sloc0                     Allocated with name '_call_once_sloc0_1_0'
;func                      Allocated with name '_call_once_PARM_2'
;flag                      Allocated to registers x h 
;------------------------------------------------------------
;../call_once.c:36: void call_once(_Bool *flag, void (*func)(void))
;	-----------------------------------------
;	 function call_once
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_call_once:
	pshx
	tax
	pulh
;../call_once.c:38: if (!*flag)
	lda	,x
	bne	00103$
;../call_once.c:40: func();
	pshx
	pshh
	bsr	00112$
	bra	00111$
00112$:
	lda	(_call_once_PARM_2 + 1)
	psha
	lda	_call_once_PARM_2
	psha
	rts
00111$:
	pulh
	pulx
;../call_once.c:41: *flag = true;
	lda	#0x01
	sta	,x
00103$:
;../call_once.c:43: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
