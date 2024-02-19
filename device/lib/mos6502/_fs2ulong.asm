;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fs2ulong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong_PARM_1
	.globl ___fs2ulong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fs2ulong_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fs2ulong_PARM_1:
	.ds 4
___fs2ulong_fl1_65536_21:
	.ds 4
___fs2ulong_exp_65536_21:
	.ds 2
___fs2ulong_l_65536_21:
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
;Allocation info for local variables in function '__fs2ulong'
;------------------------------------------------------------
;a1                        Allocated with name '___fs2ulong_PARM_1'
;fl1                       Allocated with name '___fs2ulong_fl1_65536_21'
;exp                       Allocated with name '___fs2ulong_exp_65536_21'
;l                         Allocated with name '___fs2ulong_l_65536_21'
;sloc0                     Allocated with name '___fs2ulong_sloc0_1_0'
;------------------------------------------------------------
;	../_fs2ulong.c: 104: __fs2ulong (float a1)
;	-----------------------------------------
;	 function __fs2ulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2ulong:
;	../_fs2ulong.c: 110: fl1.f = a1;
	lda	(___fs2ulong_PARM_1 + 3)
	sta	(___fs2ulong_fl1_65536_21 + 3)
	lda	(___fs2ulong_PARM_1 + 2)
	sta	(___fs2ulong_fl1_65536_21 + 2)
	lda	(___fs2ulong_PARM_1 + 1)
	sta	(___fs2ulong_fl1_65536_21 + 1)
	lda	___fs2ulong_PARM_1
	sta	___fs2ulong_fl1_65536_21
;	../_fs2ulong.c: 112: if (!fl1.l || SIGN(fl1.l))
	lda	(___fs2ulong_fl1_65536_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	(___fs2ulong_fl1_65536_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_65536_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	___fs2ulong_fl1_65536_21
	sta	*___fs2ulong_sloc0_1_0
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	ora	*(___fs2ulong_sloc0_1_0 + 2)
	ora	*(___fs2ulong_sloc0_1_0 + 1)
	ora	*___fs2ulong_sloc0_1_0
	beq	00101$
	lda	(___fs2ulong_fl1_65536_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	(___fs2ulong_fl1_65536_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_65536_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	___fs2ulong_fl1_65536_21
	sta	*___fs2ulong_sloc0_1_0
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	rol	a
	lda	#0x00
	rol	a
	sta	*___fs2ulong_sloc0_1_0
	ldx	#0x00
	stx	*(___fs2ulong_sloc0_1_0 + 1)
	stx	*(___fs2ulong_sloc0_1_0 + 2)
	stx	*(___fs2ulong_sloc0_1_0 + 3)
	lda	#0x01
	and	*___fs2ulong_sloc0_1_0
	beq	00102$
00101$:
;	../_fs2ulong.c: 113: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00102$:
;	../_fs2ulong.c: 115: exp = EXP (fl1.l) - EXCESS - 24;
	lda	(___fs2ulong_fl1_65536_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	(___fs2ulong_fl1_65536_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_65536_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	___fs2ulong_fl1_65536_21
	sta	*___fs2ulong_sloc0_1_0
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	ldx	*(___fs2ulong_sloc0_1_0 + 3)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	sta	*___fs2ulong_sloc0_1_0
	stx	*(___fs2ulong_sloc0_1_0 + 1)
	ldy	#0x00
	sty	*(___fs2ulong_sloc0_1_0 + 2)
	sty	*(___fs2ulong_sloc0_1_0 + 3)
	lda	*___fs2ulong_sloc0_1_0
	ldx	#0x00
	sec
	sbc	#0x96
	sta	___fs2ulong_exp_65536_21
	txa
	sbc	#0x00
	sta	(___fs2ulong_exp_65536_21 + 1)
;	../_fs2ulong.c: 116: l = MANT (fl1.l);
	lda	(___fs2ulong_fl1_65536_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	(___fs2ulong_fl1_65536_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_65536_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	___fs2ulong_fl1_65536_21
	sta	*___fs2ulong_sloc0_1_0
	stx	*(___fs2ulong_sloc0_1_0 + 3)
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	ora	#0x80
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	*___fs2ulong_sloc0_1_0
	sta	___fs2ulong_l_65536_21
	lda	*(___fs2ulong_sloc0_1_0 + 1)
	sta	(___fs2ulong_l_65536_21 + 1)
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	sta	(___fs2ulong_l_65536_21 + 2)
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	sta	(___fs2ulong_l_65536_21 + 3)
;	../_fs2ulong.c: 118: if (exp > 8)
	lda	#0x08
	sec
	sbc	___fs2ulong_exp_65536_21
	tya
	sbc	(___fs2ulong_exp_65536_21 + 1)
	bvc	00127$
	bpl	00126$
	bmi	00105$
00127$:
	bpl	00105$
00126$:
;	../_fs2ulong.c: 119: return 0xfffffffful;
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00105$:
;	../_fs2ulong.c: 121: if (exp < 0)
	lda	(___fs2ulong_exp_65536_21 + 1)
	sec
	sbc	#0x00
	bvc	00130$
	bpl	00129$
	bmi	00107$
00130$:
	bpl	00107$
00129$:
;	../_fs2ulong.c: 122: l >>= -exp;
	lda	___fs2ulong_exp_65536_21
	eor	#0xff
	clc
	adc	#0x01
	tay
	beq	00108$
00132$:
	lsr	(___fs2ulong_l_65536_21 + 3)
	ror	(___fs2ulong_l_65536_21 + 2)
	ror	(___fs2ulong_l_65536_21 + 1)
	ror	___fs2ulong_l_65536_21
	dey
	bne	00132$
	jmp	00108$
00107$:
;	../_fs2ulong.c: 124: l <<= exp;
	ldy	___fs2ulong_exp_65536_21
	lda	*___fs2ulong_sloc0_1_0
	sta	___fs2ulong_l_65536_21
	lda	*(___fs2ulong_sloc0_1_0 + 1)
	sta	(___fs2ulong_l_65536_21 + 1)
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	sta	(___fs2ulong_l_65536_21 + 2)
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	sta	(___fs2ulong_l_65536_21 + 3)
	cpy	#0x00
	beq	00135$
00134$:
	asl	___fs2ulong_l_65536_21
	rol	(___fs2ulong_l_65536_21 + 1)
	rol	(___fs2ulong_l_65536_21 + 2)
	rol	(___fs2ulong_l_65536_21 + 3)
	dey
	bne	00134$
00135$:
00108$:
;	../_fs2ulong.c: 126: return l;
	lda	(___fs2ulong_l_65536_21 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fs2ulong_l_65536_21 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fs2ulong_l_65536_21 + 1)
	lda	___fs2ulong_l_65536_21
;	../_fs2ulong.c: 127: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
