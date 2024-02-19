;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module isnan
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isnan_PARM_1
	.globl _isnan
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_isnan_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_isnan_PARM_1:
	.ds 4
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
;Allocation info for local variables in function 'isnan'
;------------------------------------------------------------
;f                         Allocated with name '_isnan_PARM_1'
;pl                        Allocated to registers 
;sloc0                     Allocated with name '_isnan_sloc0_1_0'
;------------------------------------------------------------
;	../isnan.c: 33: int isnan (float f)
;	-----------------------------------------
;	 function isnan
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isnan:
;	../isnan.c: 35: unsigned long *pl = (unsigned long *) &f;
;	../isnan.c: 37: return (*pl & 0x7fffffff) > 0x7f800000;
	lda	(_isnan_PARM_1 + 3)
	sta	*(_isnan_sloc0_1_0 + 3)
	lda	(_isnan_PARM_1 + 2)
	sta	*(_isnan_sloc0_1_0 + 2)
	lda	(_isnan_PARM_1 + 1)
	sta	*(_isnan_sloc0_1_0 + 1)
	lda	_isnan_PARM_1
	sta	*_isnan_sloc0_1_0
	lda	*(_isnan_sloc0_1_0 + 3)
	and	#0x7f
	sta	*(_isnan_sloc0_1_0 + 3)
	lda	#0x00
	sec
	sbc	*_isnan_sloc0_1_0
	lda	#0x00
	sbc	*(_isnan_sloc0_1_0 + 1)
	lda	#0x80
	sbc	*(_isnan_sloc0_1_0 + 2)
	lda	#0x7f
	sbc	*(_isnan_sloc0_1_0 + 3)
	bcc	00103$
	lda	#0x00
	jmp	00104$
00103$:
	lda	#0x01
00104$:
	ldx	#0x00
;	../isnan.c: 38: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
