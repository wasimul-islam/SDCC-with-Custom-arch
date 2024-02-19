;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module rand
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rand
	.globl _srand
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_rand_t_65536_37:
	.ds 4
_rand_sloc0_1_0:
	.ds 4
_rand_sloc1_1_0:
	.ds 4
	.area	OSEG    (PAG, OVR)
_srand_sloc0_1_0:
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
_s:
	.ds 4
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
;Allocation info for local variables in function 'rand'
;------------------------------------------------------------
;t                         Allocated with name '_rand_t_65536_37'
;sloc0                     Allocated with name '_rand_sloc0_1_0'
;sloc1                     Allocated with name '_rand_sloc1_1_0'
;------------------------------------------------------------
;	../rand.c: 40: int rand(void)
;	-----------------------------------------
;	 function rand
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_rand:
;	../rand.c: 44: t ^= t >> 10;
	lda	(_s + 1)
	ldx	(_s + 2)
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	sta	*_rand_sloc0_1_0
	stx	*(_rand_sloc0_1_0 + 1)
	ldx	(_s + 3)
	lda	#0x00
	stx	*(__TEMP+0)
	lsr	*(__TEMP+0)
	ror	a
	lsr	*(__TEMP+0)
	ror	a
	ldx	*(__TEMP+0)
	ora	*(_rand_sloc0_1_0 + 1)
	sta	*(_rand_sloc0_1_0 + 1)
	stx	*(_rand_sloc0_1_0 + 2)
	ldy	#0x00
	sty	*(_rand_sloc0_1_0 + 3)
	lda	_s
	eor	*_rand_sloc0_1_0
	sta	*_rand_sloc0_1_0
	lda	(_s + 1)
	eor	*(_rand_sloc0_1_0 + 1)
	sta	*(_rand_sloc0_1_0 + 1)
	lda	(_s + 2)
	eor	*(_rand_sloc0_1_0 + 2)
	sta	*(_rand_sloc0_1_0 + 2)
	lda	(_s + 3)
	eor	*(_rand_sloc0_1_0 + 3)
	sta	*(_rand_sloc0_1_0 + 3)
;	../rand.c: 45: t ^= t << 9;
	lda	*_rand_sloc0_1_0
	asl	a
	ldx	*(_rand_sloc0_1_0 + 1)
	sta	*(_rand_sloc1_1_0 + 1)
	txa
	rol	a
	ldx	*(_rand_sloc0_1_0 + 2)
	sta	*(_rand_sloc1_1_0 + 2)
	txa
	rol	a
	sta	*(_rand_sloc1_1_0 + 3)
	sty	*_rand_sloc1_1_0
	lda	*_rand_sloc0_1_0
	eor	*_rand_sloc1_1_0
	sta	*_rand_sloc1_1_0
	lda	*(_rand_sloc0_1_0 + 1)
	eor	*(_rand_sloc1_1_0 + 1)
	sta	*(_rand_sloc1_1_0 + 1)
	lda	*(_rand_sloc0_1_0 + 2)
	eor	*(_rand_sloc1_1_0 + 2)
	sta	*(_rand_sloc1_1_0 + 2)
	lda	*(_rand_sloc0_1_0 + 3)
	eor	*(_rand_sloc1_1_0 + 3)
;	../rand.c: 46: t ^= t >> 25;
	sta	*(_rand_sloc1_1_0 + 3)
	lsr	a
	sta	*_rand_sloc0_1_0
	sty	*(_rand_sloc0_1_0 + 1)
	sty	*(_rand_sloc0_1_0 + 2)
	sty	*(_rand_sloc0_1_0 + 3)
	lda	*_rand_sloc1_1_0
	eor	*_rand_sloc0_1_0
	sta	*_rand_sloc1_1_0
	lda	*(_rand_sloc1_1_0 + 1)
	eor	*(_rand_sloc0_1_0 + 1)
	sta	*(_rand_sloc1_1_0 + 1)
	lda	*(_rand_sloc1_1_0 + 2)
	eor	*(_rand_sloc0_1_0 + 2)
	sta	*(_rand_sloc1_1_0 + 2)
	lda	*(_rand_sloc1_1_0 + 3)
	eor	*(_rand_sloc0_1_0 + 3)
	sta	*(_rand_sloc1_1_0 + 3)
	lda	*_rand_sloc1_1_0
	sta	*_rand_t_65536_37
	lda	*(_rand_sloc1_1_0 + 1)
	sta	*(_rand_t_65536_37 + 1)
	lda	*(_rand_sloc1_1_0 + 2)
	sta	*(_rand_t_65536_37 + 2)
	lda	*(_rand_sloc1_1_0 + 3)
	sta	*(_rand_t_65536_37 + 3)
;	../rand.c: 48: s = t;
	lda	*_rand_sloc1_1_0
	sta	_s
	lda	*(_rand_sloc1_1_0 + 1)
	sta	(_s + 1)
	lda	*(_rand_sloc1_1_0 + 2)
	sta	(_s + 2)
	lda	*(_rand_sloc1_1_0 + 3)
	sta	(_s + 3)
;	../rand.c: 50: return(t & RAND_MAX);
	lda	*_rand_t_65536_37
	ldx	*(_rand_t_65536_37 + 1)
	sta	*(__TEMP+0)
	txa
	and	#0x7f
	tax
	lda	*(__TEMP+0)
;	../rand.c: 51: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'srand'
;------------------------------------------------------------
;seed                      Allocated to registers a x 
;sloc0                     Allocated with name '_srand_sloc0_1_0'
;------------------------------------------------------------
;	../rand.c: 53: void srand(unsigned int seed)
;	-----------------------------------------
;	 function srand
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_srand:
;	../rand.c: 55: s = seed | 0x80000000; /* s shall not become 0 */
	sta	*_srand_sloc0_1_0
	stx	*(_srand_sloc0_1_0 + 1)
	ldy	#0x00
	sty	*(_srand_sloc0_1_0 + 2)
	sty	*(_srand_sloc0_1_0 + 3)
	lda	*_srand_sloc0_1_0
	sta	_s
	lda	*(_srand_sloc0_1_0 + 1)
	sta	(_s + 1)
	lda	*(_srand_sloc0_1_0 + 2)
	sta	(_s + 2)
	lda	*(_srand_sloc0_1_0 + 3)
	ora	#0x80
	sta	(_s + 3)
;	../rand.c: 56: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
__xinit__s:
	.byte #0x01, #0x00, #0x00, #0x80	; 2147483649
	.area CABS    (ABS)
