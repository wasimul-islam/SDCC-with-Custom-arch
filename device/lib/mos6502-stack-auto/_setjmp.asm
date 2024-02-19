;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _setjmp
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'dummy'
;------------------------------------------------------------
;	_setjmp.c: 33: static void dummy (void) __naked
;	-----------------------------------------
;	 function dummy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_dummy:
;	naked function: no prologue.
;	_setjmp.c: 132: __endasm;
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
	        .area	BSS
	_longjmp_PARM_2:
	        .ds	2
;--------------------------------------------------------
;	code
;--------------------------------------------------------
	        .area	CODE
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
	        stx	*(___setjmp_buf + 1) ; msb(buf)
	        sta	*(___setjmp_buf + 0) ; lsb(buf)
        ;	save stack pointer
	        tsx
	        ldy	#0
	        txa
	        sta	[___setjmp_buf],y
        ;	save return address
	        lda	0x101,x
	        iny
	        sta	[___setjmp_buf],y
	        lda	0x102,x
	        iny
	        sta	[___setjmp_buf],y
        ;	return 0
	        lda	#0
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
	        stx	*(_longjmp_buf + 1) ; msb(buf)
	        sta	*(_longjmp_buf + 0) ; lsb(buf)
        ;	restore stack pointer
	        ldy	#0
	        lda	[___setjmp_buf],y
	        tax
	        txs
        ;	set return address
	        iny
	        lda	[___setjmp_buf],y
	        sta	0x101,x
	        iny
	        lda	[___setjmp_buf],y
	        sta	0x102,x
;_setjmp.c:224:	return rv ? rv : 1;
	        ldx	(_longjmp_PARM_2 + 1)
	        txa
	        ora	(_longjmp_PARM_2 + 0)
	        beq	0001$
	        lda	(_longjmp_PARM_2 + 0)
	        rts
	0001$:
	        lda	#0x01
	        rts
;	_setjmp.c: 133: }
;	naked function: no epilogue.
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
