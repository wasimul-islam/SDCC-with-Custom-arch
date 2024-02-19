;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module btowc
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _btowc
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_btowc_sloc0_1_0:
	.ds 4
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
;Allocation info for local variables in function 'btowc'
;------------------------------------------------------------
;c                         Allocated to registers a x 
;d                         Allocated to registers y 
;sloc0                     Allocated with name '_btowc_sloc0_1_0'
;------------------------------------------------------------
;	../btowc.c: 35: wint_t btowc(int c)
;	-----------------------------------------
;	 function btowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_btowc:
;	../btowc.c: 37: char d = (unsigned char)c;
	tay
;	../btowc.c: 38: if(d & 0x80)
	lda	#0x80
	sty	*(__TEMP+0)
	and	*(__TEMP+0)
	beq	00102$
;	../btowc.c: 39: return WEOF;
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00102$:
;	../btowc.c: 40: return d;
	sty	*_btowc_sloc0_1_0
	ldx	#0x00
	stx	*(_btowc_sloc0_1_0 + 1)
	stx	*(_btowc_sloc0_1_0 + 2)
	stx	*(_btowc_sloc0_1_0 + 3)
	lda	*(_btowc_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_btowc_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_btowc_sloc0_1_0 + 1)
	lda	*_btowc_sloc0_1_0
;	../btowc.c: 41: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
