;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memset
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset_PARM_3
	.globl _memset_PARM_2
	.globl _memset
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memset_data_131072_63:
	.ds 1
_memset_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_memset_PARM_2:
	.ds 1
_memset_PARM_3:
	.ds 2
_memset_s_65536_61:
	.ds 2
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
;Allocation info for local variables in function 'memset'
;------------------------------------------------------------
;c                         Allocated with name '_memset_PARM_2'
;n                         Allocated with name '_memset_PARM_3'
;s                         Allocated with name '_memset_s_65536_61'
;dst                       Allocated to registers 
;sz                        Allocated to registers a x 
;data                      Allocated with name '_memset_data_131072_63'
;sloc0                     Allocated with name '_memset_sloc0_1_0'
;------------------------------------------------------------
;	../_memset.c: 42: void *memset (void *s, unsigned char c, size_t n)
;	-----------------------------------------
;	 function memset
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memset:
	sta	_memset_s_65536_61
	stx	(_memset_s_65536_61 + 1)
;	../_memset.c: 189: register size_t sz = n;
	lda	_memset_PARM_3
	ldx	(_memset_PARM_3 + 1)
;	../_memset.c: 190: if (sz != 0)
	sta	*(__TEMP+0)
	lda	(_memset_PARM_3 + 1)
	ora	_memset_PARM_3
	php
	lda	*(__TEMP+0)
	plp
	beq	00105$
;	../_memset.c: 192: register char *dst = s;
	ldy	_memset_s_65536_61
	sty	*_memset_sloc0_1_0
	ldy	(_memset_s_65536_61 + 1)
	sty	*(_memset_sloc0_1_0 + 1)
;	../_memset.c: 193: register char data = (char)c;
	ldy	_memset_PARM_2
	sty	*_memset_data_131072_63
;	../_memset.c: 194: do {
00101$:
;	../_memset.c: 195: *dst++ = data;
	sta	*(__TEMP+0)
	lda	*_memset_data_131072_63
	ldy	#0x00
	sta	[*_memset_sloc0_1_0],y
	lda	*(__TEMP+0)
	inc	*_memset_sloc0_1_0
	bne	00118$
	inc	*(_memset_sloc0_1_0 + 1)
00118$:
;	../_memset.c: 196: } while (--sz);
	sec
	sbc	#0x01
	bcs	00119$
	dex
00119$:
	cmp	#0x00
	bne	00120$
	cpx	#0x00
00120$:
	bne	00101$
00105$:
;	../_memset.c: 198: return s;
	ldx	(_memset_s_65536_61 + 1)
	lda	_memset_s_65536_61
;	../_memset.c: 199: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
