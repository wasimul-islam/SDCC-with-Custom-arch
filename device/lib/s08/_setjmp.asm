;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _setjmp
	.optsdcc -ms08
	
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
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
;_setjmp.c:33: static void dummy (void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_dummy:
;	naked function: no prologue.
;_setjmp.c:134: __endasm;
;--------------------------------------------------------
;	overlayable items in ram
;--------------------------------------------------------
	        .area	OSEG (PAG, OVR)
	___setjmp_buf:
	        .ds	2
	        .area	OSEG (PAG, OVR)
	_longjmp_buf:
	        .ds	2
;--------------------------------------------------------
;	extended address mode data
;--------------------------------------------------------
	        .area	XSEG
	_longjmp_PARM_2:
	        .ds	2
;--------------------------------------------------------
;	code
;--------------------------------------------------------
	        .area	CSEG (CODE)
;------------------------------------------------------------
;Allocation	info for local variables in function '__setjmp'
;------------------------------------------------------------
;buf	Allocated with name '___setjmp_buf'
;------------------------------------------------------------
;_setjmp.c:205:	int __setjmp (jmp_buf buf)
;	-----------------------------------------
;	function __setjmp
;	-----------------------------------------
;	Stack space usage: 1 bytes.
	        .globl	___setjmp
	___setjmp:
	        stx	(___setjmp_buf + 0) ; msb(buf)
	        sta	(___setjmp_buf + 1) ; lsb(buf)
        ;	save stack pointer
	        tsx
	        pshh
	        txa
	        ldhx	(___setjmp_buf)
	        sta	1,x
	        pula
	        sta	0,x
        ;	save return address
	        lda	1,s
	        sta	2,x
	        lda	2,s
	        sta	3,x
        ;	return 0
	        clra
	        tax
	        rts
;------------------------------------------------------------
;Allocation	info for local variables in function 'longjmp'
;------------------------------------------------------------
;rv	Allocated with name '_longjmp_PARM_2'
;buf	Allocated with name '_longjmp_buf'
;------------------------------------------------------------
;_setjmp.c:216:	int longjmp (jmp_buf buf, int rv)
;	-----------------------------------------
;	function longjmp
;	-----------------------------------------
;	Stack space usage: 1 bytes.
	        .globl	_longjmp
	        .globl	_longjmp_PARM_2
	_longjmp:
	        stx	(_longjmp_buf + 0) ; msb(buf)
	        sta	(_longjmp_buf + 1) ; lsb(buf)
        ;	restore stack pointer
	        ldhx	(_longjmp_buf)
	        lda	0,x
	        psha
	        ldx	1,x
	        pulh
	        txs
        ;	set return address
	        ldhx	(_longjmp_buf)
	        lda	2,x
	        sta	1,s
	        lda	3,x
	        sta	2,s
;_setjmp.c:224:	return rv ? rv : 1;
	        ldx	(_longjmp_PARM_2 + 0)
	        txa
	        ora	(_longjmp_PARM_2 + 1)
	        beq	0001$
	        lda	(_longjmp_PARM_2 + 1)
	        rts
	0001$:
	        lda	#0x01
	        rts
;_setjmp.c:135: }
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
