;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _mullonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullonglong_PARM_2
	.globl __mullonglong_PARM_1
	.globl __mullonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__mullonglong_sloc0_1_0:
	.ds 1
__mullonglong_sloc1_1_0:
	.ds 8
__mullonglong_sloc2_1_0:
	.ds 2
__mullonglong_sloc3_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__mullonglong_PARM_1:
	.ds 8
__mullonglong_PARM_2:
	.ds 8
__mullonglong_ret_65536_2:
	.ds 8
__mullonglong_l_196608_4:
	.ds 1
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
;Allocation info for local variables in function '_mullonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__mullonglong_sloc0_1_0'
;sloc1                     Allocated with name '__mullonglong_sloc1_1_0'
;sloc2                     Allocated with name '__mullonglong_sloc2_1_0'
;sloc3                     Allocated with name '__mullonglong_sloc3_1_0'
;ll                        Allocated with name '__mullonglong_PARM_1'
;lr                        Allocated with name '__mullonglong_PARM_2'
;ret                       Allocated with name '__mullonglong_ret_65536_2'
;i                         Allocated to registers 
;j                         Allocated to registers 
;l                         Allocated with name '__mullonglong_l_196608_4'
;r                         Allocated to registers a 
;------------------------------------------------------------
;	../_mullonglong.c: 39: long long _mullonglong(long long ll, long long lr) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _mullonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__mullonglong:
;	../_mullonglong.c: 41: unsigned long long ret = 0ull;
	ldx	#0x00
	stx	__mullonglong_ret_65536_2
	stx	(__mullonglong_ret_65536_2 + 1)
	stx	(__mullonglong_ret_65536_2 + 2)
	stx	(__mullonglong_ret_65536_2 + 3)
	stx	(__mullonglong_ret_65536_2 + 4)
	stx	(__mullonglong_ret_65536_2 + 5)
	stx	(__mullonglong_ret_65536_2 + 6)
	stx	(__mullonglong_ret_65536_2 + 7)
;	../_mullonglong.c: 44: for (i = 0; i < sizeof (long long); i++)
	stx	*__mullonglong_sloc0_1_0
00106$:
;	../_mullonglong.c: 46: unsigned char l = ll >> (i * 8);
	lda	*__mullonglong_sloc0_1_0
	asl	a
	asl	a
	asl	a
	sta	__rrslonglong_PARM_2
	lda	__mullonglong_PARM_1
	sta	__rrslonglong_PARM_1
	lda	(__mullonglong_PARM_1 + 1)
	sta	(__rrslonglong_PARM_1 + 1)
	lda	(__mullonglong_PARM_1 + 2)
	sta	(__rrslonglong_PARM_1 + 2)
	lda	(__mullonglong_PARM_1 + 3)
	sta	(__rrslonglong_PARM_1 + 3)
	lda	(__mullonglong_PARM_1 + 4)
	sta	(__rrslonglong_PARM_1 + 4)
	lda	(__mullonglong_PARM_1 + 5)
	sta	(__rrslonglong_PARM_1 + 5)
	lda	(__mullonglong_PARM_1 + 6)
	sta	(__rrslonglong_PARM_1 + 6)
	lda	(__mullonglong_PARM_1 + 7)
	sta	(__rrslonglong_PARM_1 + 7)
	jsr	__rrslonglong
	sta	*__mullonglong_sloc1_1_0
	stx	*(__mullonglong_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__mullonglong_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__mullonglong_sloc1_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__mullonglong_sloc1_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__mullonglong_sloc1_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__mullonglong_sloc1_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__mullonglong_sloc1_1_0 + 7)
	lda	*__mullonglong_sloc1_1_0
	sta	__mullonglong_l_196608_4
;	../_mullonglong.c: 47: for(j = 0; (i + j) < sizeof (long long); j++)
	ldx	#0x00
	stx	*__mullonglong_sloc1_1_0
00104$:
	lda	*__mullonglong_sloc0_1_0
	ldx	#0x00
	ldy	*__mullonglong_sloc1_1_0
	sty	*__mullonglong_sloc2_1_0
	stx	*(__mullonglong_sloc2_1_0 + 1)
	clc
	adc	*__mullonglong_sloc2_1_0
	pha
	txa
	adc	*(__mullonglong_sloc2_1_0 + 1)
	tax
	pla
	sec
	sbc	#0x08
	txa
	sbc	#0x00
	bvc	00129$
	bpl	00128$
	bmi	00130$
00129$:
	bmi	00128$
00130$:
	jmp	00107$
00128$:
;	../_mullonglong.c: 49: unsigned char r = lr >> (j * 8);
	lda	*__mullonglong_sloc1_1_0
	asl	a
	asl	a
	asl	a
	sta	__rrslonglong_PARM_2
	lda	__mullonglong_PARM_2
	sta	__rrslonglong_PARM_1
	lda	(__mullonglong_PARM_2 + 1)
	sta	(__rrslonglong_PARM_1 + 1)
	lda	(__mullonglong_PARM_2 + 2)
	sta	(__rrslonglong_PARM_1 + 2)
	lda	(__mullonglong_PARM_2 + 3)
	sta	(__rrslonglong_PARM_1 + 3)
	lda	(__mullonglong_PARM_2 + 4)
	sta	(__rrslonglong_PARM_1 + 4)
	lda	(__mullonglong_PARM_2 + 5)
	sta	(__rrslonglong_PARM_1 + 5)
	lda	(__mullonglong_PARM_2 + 6)
	sta	(__rrslonglong_PARM_1 + 6)
	lda	(__mullonglong_PARM_2 + 7)
	sta	(__rrslonglong_PARM_1 + 7)
	jsr	__rrslonglong
	sta	*__mullonglong_sloc3_1_0
	stx	*(__mullonglong_sloc3_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__mullonglong_sloc3_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__mullonglong_sloc3_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__mullonglong_sloc3_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__mullonglong_sloc3_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__mullonglong_sloc3_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__mullonglong_sloc3_1_0 + 7)
	lda	*__mullonglong_sloc3_1_0
;	../_mullonglong.c: 50: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
	tax
	lda	__mullonglong_l_196608_4
	jsr	__muluchar
	sta	__rlulonglong_PARM_1
	stx	(__rlulonglong_PARM_1 + 1)
	ldy	#0x00
	sty	(__rlulonglong_PARM_1 + 2)
	sty	(__rlulonglong_PARM_1 + 3)
	sty	(__rlulonglong_PARM_1 + 4)
	sty	(__rlulonglong_PARM_1 + 5)
	sty	(__rlulonglong_PARM_1 + 6)
	sty	(__rlulonglong_PARM_1 + 7)
	lda	*__mullonglong_sloc0_1_0
	clc
	adc	*__mullonglong_sloc1_1_0
	asl	a
	asl	a
	asl	a
	sta	__rlulonglong_PARM_2
	jsr	__rlulonglong
	sta	*__mullonglong_sloc3_1_0
	stx	*(__mullonglong_sloc3_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__mullonglong_sloc3_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__mullonglong_sloc3_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__mullonglong_sloc3_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__mullonglong_sloc3_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__mullonglong_sloc3_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__mullonglong_sloc3_1_0 + 7)
	lda	__mullonglong_ret_65536_2
	clc
	adc	*__mullonglong_sloc3_1_0
	sta	__mullonglong_ret_65536_2
	lda	(__mullonglong_ret_65536_2 + 1)
	adc	*(__mullonglong_sloc3_1_0 + 1)
	sta	(__mullonglong_ret_65536_2 + 1)
	lda	(__mullonglong_ret_65536_2 + 2)
	adc	*(__mullonglong_sloc3_1_0 + 2)
	sta	(__mullonglong_ret_65536_2 + 2)
	lda	(__mullonglong_ret_65536_2 + 3)
	adc	*(__mullonglong_sloc3_1_0 + 3)
	sta	(__mullonglong_ret_65536_2 + 3)
	lda	(__mullonglong_ret_65536_2 + 4)
	adc	*(__mullonglong_sloc3_1_0 + 4)
	sta	(__mullonglong_ret_65536_2 + 4)
	lda	(__mullonglong_ret_65536_2 + 5)
	adc	*(__mullonglong_sloc3_1_0 + 5)
	sta	(__mullonglong_ret_65536_2 + 5)
	lda	(__mullonglong_ret_65536_2 + 6)
	adc	*(__mullonglong_sloc3_1_0 + 6)
	sta	(__mullonglong_ret_65536_2 + 6)
	lda	(__mullonglong_ret_65536_2 + 7)
	adc	*(__mullonglong_sloc3_1_0 + 7)
	sta	(__mullonglong_ret_65536_2 + 7)
;	../_mullonglong.c: 47: for(j = 0; (i + j) < sizeof (long long); j++)
	inc	*__mullonglong_sloc1_1_0
	jmp	00104$
00107$:
;	../_mullonglong.c: 44: for (i = 0; i < sizeof (long long); i++)
	inc	*__mullonglong_sloc0_1_0
	lda	*__mullonglong_sloc0_1_0
	cmp	#0x08
	bcs	00131$
	jmp	00106$
00131$:
;	../_mullonglong.c: 54: return(ret);
	lda	(__mullonglong_ret_65536_2 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(__mullonglong_ret_65536_2 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(__mullonglong_ret_65536_2 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(__mullonglong_ret_65536_2 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(__mullonglong_ret_65536_2 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__mullonglong_ret_65536_2 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__mullonglong_ret_65536_2 + 1)
	lda	__mullonglong_ret_65536_2
;	../_mullonglong.c: 55: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
