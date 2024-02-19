;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memmove
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memmove_PARM_3
	.globl _memmove_PARM_2
	.globl _memmove
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memmove_sloc0_1_0:
	.ds 2
_memmove_sloc1_1_0:
	.ds 2
_memmove_sloc2_1_0:
	.ds 2
_memmove_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_memmove_PARM_2:
	.ds 2
_memmove_PARM_3:
	.ds 2
_memmove_dst_65536_26:
	.ds 2
_memmove_c_65536_27:
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
;Allocation info for local variables in function 'memmove'
;------------------------------------------------------------
;src                       Allocated with name '_memmove_PARM_2'
;size                      Allocated with name '_memmove_PARM_3'
;dst                       Allocated with name '_memmove_dst_65536_26'
;c                         Allocated with name '_memmove_c_65536_27'
;d                         Allocated to registers 
;s                         Allocated to registers 
;sloc0                     Allocated with name '_memmove_sloc0_1_0'
;sloc1                     Allocated with name '_memmove_sloc1_1_0'
;sloc2                     Allocated with name '_memmove_sloc2_1_0'
;sloc3                     Allocated with name '_memmove_sloc3_1_0'
;------------------------------------------------------------
;	../_memmove.c: 35: void *memmove (void *dst, const void *src, size_t size)
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memmove:
	sta	_memmove_dst_65536_26
	stx	(_memmove_dst_65536_26 + 1)
;	../_memmove.c: 37: size_t c = size;
	lda	_memmove_PARM_3
	sta	_memmove_c_65536_27
	lda	(_memmove_PARM_3 + 1)
;	../_memmove.c: 38: if (c == 0 || dst == src)
	sta	(_memmove_c_65536_27 + 1)
	ora	_memmove_c_65536_27
	beq	00101$
	lda	_memmove_dst_65536_26
	cmp	_memmove_PARM_2
	bne	00102$
	lda	(_memmove_dst_65536_26 + 1)
	cmp	(_memmove_PARM_2 + 1)
	bne	00102$
00101$:
;	../_memmove.c: 39: return dst;
	ldx	(_memmove_dst_65536_26 + 1)
	lda	_memmove_dst_65536_26
	rts
00102$:
;	../_memmove.c: 41: char *d = dst;
	lda	_memmove_dst_65536_26
	sta	*_memmove_sloc0_1_0
	lda	(_memmove_dst_65536_26 + 1)
	sta	*(_memmove_sloc0_1_0 + 1)
;	../_memmove.c: 42: const char *s = src;
	lda	_memmove_PARM_2
	ldx	(_memmove_PARM_2 + 1)
;	../_memmove.c: 43: if (s < d) {
	sta	*(__TEMP+0)
	sec
	sbc	*_memmove_sloc0_1_0
	txa
	sbc	*(_memmove_sloc0_1_0 + 1)
	php
	lda	*(__TEMP+0)
	plp
	bcs	00119$
;	../_memmove.c: 50: s += c;
	clc
	adc	_memmove_c_65536_27
	sta	*_memmove_sloc1_1_0
	txa
	adc	(_memmove_c_65536_27 + 1)
	sta	*(_memmove_sloc1_1_0 + 1)
;	../_memmove.c: 51: d += c;
	lda	*_memmove_sloc0_1_0
	clc
	adc	_memmove_c_65536_27
	sta	*_memmove_sloc2_1_0
	lda	*(_memmove_sloc0_1_0 + 1)
	adc	(_memmove_c_65536_27 + 1)
	sta	*(_memmove_sloc2_1_0 + 1)
;	../_memmove.c: 52: do {
	lda	_memmove_c_65536_27
	sta	*_memmove_sloc3_1_0
	lda	(_memmove_c_65536_27 + 1)
	sta	*(_memmove_sloc3_1_0 + 1)
00104$:
;	../_memmove.c: 53: *--d = *--s;
	sec
	lda	*_memmove_sloc2_1_0
	sbc	#0x01
	sta	*_memmove_sloc2_1_0
	bcs	00147$
	dec	*(_memmove_sloc2_1_0 + 1)
00147$:
	sec
	lda	*_memmove_sloc1_1_0
	sbc	#0x01
	sta	*_memmove_sloc1_1_0
	bcs	00148$
	dec	*(_memmove_sloc1_1_0 + 1)
00148$:
	ldy	#0x00
	lda	[*_memmove_sloc1_1_0],y
	sta	[*_memmove_sloc2_1_0],y
;	../_memmove.c: 54: } while (--c);
	sec
	lda	*_memmove_sloc3_1_0
	sbc	#0x01
	sta	*_memmove_sloc3_1_0
	bcs	00149$
	dec	*(_memmove_sloc3_1_0 + 1)
00149$:
	lda	*(_memmove_sloc3_1_0 + 1)
	ora	*_memmove_sloc3_1_0
	bne	00104$
	jmp	00112$
;	../_memmove.c: 59: do {
00119$:
	sta	*_memmove_sloc3_1_0
	stx	*(_memmove_sloc3_1_0 + 1)
	lda	*_memmove_sloc0_1_0
	sta	*_memmove_sloc2_1_0
	lda	*(_memmove_sloc0_1_0 + 1)
	sta	*(_memmove_sloc2_1_0 + 1)
	lda	_memmove_c_65536_27
	sta	*_memmove_sloc1_1_0
	lda	(_memmove_c_65536_27 + 1)
	sta	*(_memmove_sloc1_1_0 + 1)
00107$:
;	../_memmove.c: 60: *d++ = *s++;
	ldy	#0x00
	lda	[*_memmove_sloc3_1_0],y
	inc	*_memmove_sloc3_1_0
	bne	00151$
	inc	*(_memmove_sloc3_1_0 + 1)
00151$:
	sta	[*_memmove_sloc2_1_0],y
	inc	*_memmove_sloc2_1_0
	bne	00152$
	inc	*(_memmove_sloc2_1_0 + 1)
00152$:
;	../_memmove.c: 61: } while (--c);
	sec
	lda	*_memmove_sloc1_1_0
	sbc	#0x01
	sta	*_memmove_sloc1_1_0
	bcs	00153$
	dec	*(_memmove_sloc1_1_0 + 1)
00153$:
	lda	*(_memmove_sloc1_1_0 + 1)
	ora	*_memmove_sloc1_1_0
	bne	00107$
00112$:
;	../_memmove.c: 65: return dst;
	ldx	(_memmove_dst_65536_26 + 1)
	lda	_memmove_dst_65536_26
;	../_memmove.c: 66: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
