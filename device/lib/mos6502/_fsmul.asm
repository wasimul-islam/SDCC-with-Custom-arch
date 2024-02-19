;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _fsmul
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsmul_PARM_2
	.globl ___fsmul_PARM_1
	.globl ___fsmul
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fsmul_sloc0_1_0:
	.ds 4
___fsmul_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fsmul_PARM_1:
	.ds 4
___fsmul_PARM_2:
	.ds 4
___fsmul_fl1_65536_21:
	.ds 4
___fsmul_fl2_65536_21:
	.ds 4
___fsmul_result_65536_21:
	.ds 4
___fsmul_exp_65536_21:
	.ds 2
___fsmul_sign_65536_21:
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
;Allocation info for local variables in function '__fsmul'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fsmul_sloc0_1_0'
;sloc1                     Allocated with name '___fsmul_sloc1_1_0'
;a1                        Allocated with name '___fsmul_PARM_1'
;a2                        Allocated with name '___fsmul_PARM_2'
;fl1                       Allocated with name '___fsmul_fl1_65536_21'
;fl2                       Allocated with name '___fsmul_fl2_65536_21'
;result                    Allocated with name '___fsmul_result_65536_21'
;exp                       Allocated with name '___fsmul_exp_65536_21'
;sign                      Allocated with name '___fsmul_sign_65536_21'
;------------------------------------------------------------
;	../_fsmul.c: 241: float __fsmul (float a1, float a2) {
;	-----------------------------------------
;	 function __fsmul
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsmul:
;	../_fsmul.c: 247: fl1.f = a1;
	lda	(___fsmul_PARM_1 + 3)
	sta	(___fsmul_fl1_65536_21 + 3)
	lda	(___fsmul_PARM_1 + 2)
	sta	(___fsmul_fl1_65536_21 + 2)
	lda	(___fsmul_PARM_1 + 1)
	sta	(___fsmul_fl1_65536_21 + 1)
	lda	___fsmul_PARM_1
	sta	___fsmul_fl1_65536_21
;	../_fsmul.c: 248: fl2.f = a2;
	lda	(___fsmul_PARM_2 + 3)
	sta	(___fsmul_fl2_65536_21 + 3)
	lda	(___fsmul_PARM_2 + 2)
	sta	(___fsmul_fl2_65536_21 + 2)
	lda	(___fsmul_PARM_2 + 1)
	sta	(___fsmul_fl2_65536_21 + 1)
	lda	___fsmul_PARM_2
	sta	___fsmul_fl2_65536_21
;	../_fsmul.c: 250: if (!fl1.l || !fl2.l)
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 3)
	ora	*(___fsmul_sloc0_1_0 + 2)
	ora	*(___fsmul_sloc0_1_0 + 1)
	ora	*___fsmul_sloc0_1_0
	beq	00101$
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 3)
	ora	*(___fsmul_sloc0_1_0 + 2)
	ora	*(___fsmul_sloc0_1_0 + 1)
	ora	*___fsmul_sloc0_1_0
	bne	00102$
00101$:
;	../_fsmul.c: 251: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00102$:
;	../_fsmul.c: 254: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 3)
	rol	a
	lda	#0x00
	rol	a
	sta	*___fsmul_sloc0_1_0
	ldx	#0x00
	stx	*(___fsmul_sloc0_1_0 + 1)
	stx	*(___fsmul_sloc0_1_0 + 2)
	stx	*(___fsmul_sloc0_1_0 + 3)
	lda	*___fsmul_sloc0_1_0
	and	#0x01
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 3)
	rol	a
	txa
	rol	a
	sta	*___fsmul_sloc1_1_0
	stx	*(___fsmul_sloc1_1_0 + 1)
	stx	*(___fsmul_sloc1_1_0 + 2)
	stx	*(___fsmul_sloc1_1_0 + 3)
	lda	*___fsmul_sloc1_1_0
	and	#0x01
	eor	*___fsmul_sloc0_1_0
	sta	___fsmul_sign_65536_21
;	../_fsmul.c: 255: exp = EXP (fl1.l) - EXCESS;
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 2)
	ldx	*(___fsmul_sloc1_1_0 + 3)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	sta	*___fsmul_sloc1_1_0
	stx	*(___fsmul_sloc1_1_0 + 1)
	ldy	#0x00
	sty	*(___fsmul_sloc1_1_0 + 2)
	sty	*(___fsmul_sloc1_1_0 + 3)
	lda	*___fsmul_sloc1_1_0
	ldx	#0x00
	sec
	sbc	#0x7e
	sta	*___fsmul_sloc1_1_0
	txa
	sbc	#0x00
	sta	*(___fsmul_sloc1_1_0 + 1)
;	../_fsmul.c: 256: exp += EXP (fl2.l);
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 2)
	ldx	*(___fsmul_sloc0_1_0 + 3)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	tya
	rol	a
	tax
	lda	*(__TEMP+0)
	sta	*___fsmul_sloc0_1_0
	stx	*(___fsmul_sloc0_1_0 + 1)
	sty	*(___fsmul_sloc0_1_0 + 2)
	sty	*(___fsmul_sloc0_1_0 + 3)
	lda	*___fsmul_sloc0_1_0
	ldx	#0x00
	clc
	adc	*___fsmul_sloc1_1_0
	sta	___fsmul_exp_65536_21
	txa
	adc	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_exp_65536_21 + 1)
;	../_fsmul.c: 258: fl1.l = MANT (fl1.l);
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc1_1_0
	stx	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	#0x80
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl1_65536_21 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl1_65536_21 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl1_65536_21 + 1)
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl1_65536_21
;	../_fsmul.c: 259: fl2.l = MANT (fl2.l);
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc1_1_0
	stx	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	#0x80
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl2_65536_21 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl2_65536_21 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl2_65536_21 + 1)
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl2_65536_21
;	../_fsmul.c: 262: result = (unsigned long)((unsigned short)(fl1.l >> 8)) * (unsigned short)(fl2.l >> 8);
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 2)
	stx	*(___fsmul_sloc1_1_0 + 3)
	lda	*___fsmul_sloc1_1_0
	ldx	*(___fsmul_sloc1_1_0 + 1)
	sta	__mullong_PARM_1
	stx	(__mullong_PARM_1 + 1)
	sty	(__mullong_PARM_1 + 2)
	sty	(__mullong_PARM_1 + 3)
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 2)
	sty	*(___fsmul_sloc1_1_0 + 3)
	lda	*___fsmul_sloc1_1_0
	ldx	*(___fsmul_sloc1_1_0 + 1)
	sta	__mullong_PARM_2
	stx	(__mullong_PARM_2 + 1)
	sty	(__mullong_PARM_2 + 2)
	sty	(__mullong_PARM_2 + 3)
;	../_fsmul.c: 263: result += ((unsigned long)((unsigned short)(fl1.l & 0xff)) * (unsigned short)(fl2.l >> 8)) >> 8;
	jsr	__mullong
	sta	*___fsmul_sloc1_1_0
	stx	*(___fsmul_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc0_1_0
	ldx	#0x00
	sta	__mullong_PARM_1
	stx	(__mullong_PARM_1 + 1)
	stx	(__mullong_PARM_1 + 2)
	stx	(__mullong_PARM_1 + 3)
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 1)
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc0_1_0 + 2)
	stx	*(___fsmul_sloc0_1_0 + 3)
	lda	*___fsmul_sloc0_1_0
	ldx	*(___fsmul_sloc0_1_0 + 1)
	sta	__mullong_PARM_2
	stx	(__mullong_PARM_2 + 1)
	ldy	#0x00
	sty	(__mullong_PARM_2 + 2)
	sty	(__mullong_PARM_2 + 3)
	jsr	__mullong
	sta	*___fsmul_sloc0_1_0
	stx	*(___fsmul_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	*(___fsmul_sloc0_1_0 + 1)
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc0_1_0 + 2)
	ldx	#0x00
	stx	*(___fsmul_sloc0_1_0 + 3)
	lda	*___fsmul_sloc1_1_0
	clc
	adc	*___fsmul_sloc0_1_0
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 1)
	adc	*(___fsmul_sloc0_1_0 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	adc	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	adc	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
;	../_fsmul.c: 264: result += ((unsigned long)((unsigned short)(fl2.l & 0xff)) * (unsigned short)(fl1.l >> 8)) >> 8;
	lda	(___fsmul_fl2_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl2_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl2_65536_21
	sta	*___fsmul_sloc0_1_0
	ldx	#0x00
	sta	__mullong_PARM_1
	stx	(__mullong_PARM_1 + 1)
	stx	(__mullong_PARM_1 + 2)
	stx	(__mullong_PARM_1 + 3)
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 1)
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc0_1_0 + 2)
	stx	*(___fsmul_sloc0_1_0 + 3)
	lda	*___fsmul_sloc0_1_0
	ldx	*(___fsmul_sloc0_1_0 + 1)
	sta	__mullong_PARM_2
	stx	(__mullong_PARM_2 + 1)
	ldy	#0x00
	sty	(__mullong_PARM_2 + 2)
	sty	(__mullong_PARM_2 + 3)
	jsr	__mullong
	sta	*___fsmul_sloc0_1_0
	stx	*(___fsmul_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	*(___fsmul_sloc0_1_0 + 1)
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc0_1_0 + 2)
	ldx	#0x00
	stx	*(___fsmul_sloc0_1_0 + 3)
	lda	*___fsmul_sloc1_1_0
	clc
	adc	*___fsmul_sloc0_1_0
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 1)
	adc	*(___fsmul_sloc0_1_0 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	adc	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	adc	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
;	../_fsmul.c: 267: result += 0x40;
	lda	*___fsmul_sloc1_1_0
	clc
	adc	#0x40
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc1_1_0 + 1)
	adc	#0x00
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	adc	#0x00
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	adc	#0x00
	sta	*(___fsmul_sloc0_1_0 + 3)
;	../_fsmul.c: 269: if (result & SIGNBIT)
	lda	#0x80
	and	*(___fsmul_sloc0_1_0 + 3)
	beq	00105$
;	../_fsmul.c: 272: result += 0x40;
	lda	*___fsmul_sloc1_1_0
	clc
	adc	#0x80
	sta	*___fsmul_sloc1_1_0
	bcc	00152$
	inc	*(___fsmul_sloc1_1_0 + 1)
	bne	00152$
	inc	*(___fsmul_sloc1_1_0 + 2)
	bne	00152$
	inc	*(___fsmul_sloc1_1_0 + 3)
00152$:
;	../_fsmul.c: 273: result >>= 8;
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	___fsmul_result_65536_21
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_result_65536_21 + 1)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_result_65536_21 + 2)
	stx	(___fsmul_result_65536_21 + 3)
	jmp	00106$
00105$:
;	../_fsmul.c: 277: result >>= 7;
	lda	*___fsmul_sloc0_1_0
	ldx	*(___fsmul_sloc0_1_0 + 1)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	sta	___fsmul_result_65536_21
	stx	(___fsmul_result_65536_21 + 1)
	lda	*(___fsmul_sloc0_1_0 + 2)
	asl	a
	ora	(___fsmul_result_65536_21 + 1)
	sta	(___fsmul_result_65536_21 + 1)
	lda	*(___fsmul_sloc0_1_0 + 2)
	ldx	*(___fsmul_sloc0_1_0 + 3)
	stx	*(__TEMP+0)
	rol	a
	rol	*(__TEMP+0)
	lda	#0x00
	rol	a
	tax
	lda	*(__TEMP+0)
	sta	(___fsmul_result_65536_21 + 2)
	stx	(___fsmul_result_65536_21 + 3)
;	../_fsmul.c: 278: exp--;
	sec
	lda	___fsmul_exp_65536_21
	sbc	#0x01
	sta	___fsmul_exp_65536_21
	bcs	00153$
	dec	(___fsmul_exp_65536_21 + 1)
00153$:
00106$:
;	../_fsmul.c: 281: result &= ~HIDDEN;
	lda	(___fsmul_result_65536_21 + 2)
	and	#0x7f
	sta	(___fsmul_result_65536_21 + 2)
;	../_fsmul.c: 284: if (exp >= 0x100)
	lda	(___fsmul_exp_65536_21 + 1)
	sec
	sbc	#0x01
	bvs	00155$
	bpl	00154$
	bmi	00111$
00155$:
	bpl	00111$
00154$:
;	../_fsmul.c: 285: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	lda	___fsmul_sign_65536_21
	beq	00115$
	ldx	#0x00
	stx	*___fsmul_sloc1_1_0
	stx	*(___fsmul_sloc1_1_0 + 1)
	stx	*(___fsmul_sloc1_1_0 + 2)
	ldx	#0x80
	stx	*(___fsmul_sloc1_1_0 + 3)
	jmp	00116$
00115$:
	ldx	#0x00
	stx	*___fsmul_sloc1_1_0
	stx	*(___fsmul_sloc1_1_0 + 1)
	stx	*(___fsmul_sloc1_1_0 + 2)
	stx	*(___fsmul_sloc1_1_0 + 3)
00116$:
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	#0x80
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	ora	#0x7f
	sta	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl1_65536_21 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl1_65536_21 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl1_65536_21 + 1)
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl1_65536_21
	jmp	00112$
00111$:
;	../_fsmul.c: 286: else if (exp < 0)
	lda	(___fsmul_exp_65536_21 + 1)
	sec
	sbc	#0x00
	bvc	00159$
	bpl	00158$
	bmi	00108$
00159$:
	bpl	00108$
00158$:
;	../_fsmul.c: 287: fl1.l = 0;
	ldx	#0x00
	stx	(___fsmul_fl1_65536_21 + 3)
	stx	(___fsmul_fl1_65536_21 + 2)
	stx	(___fsmul_fl1_65536_21 + 1)
	stx	___fsmul_fl1_65536_21
	jmp	00112$
00108$:
;	../_fsmul.c: 289: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	lda	___fsmul_sign_65536_21
	beq	00117$
	ldx	#0x00
	stx	*___fsmul_sloc1_1_0
	stx	*(___fsmul_sloc1_1_0 + 1)
	stx	*(___fsmul_sloc1_1_0 + 2)
	ldx	#0x80
	stx	*(___fsmul_sloc1_1_0 + 3)
	jmp	00118$
00117$:
	ldx	#0x00
	stx	*___fsmul_sloc1_1_0
	stx	*(___fsmul_sloc1_1_0 + 1)
	stx	*(___fsmul_sloc1_1_0 + 2)
	stx	*(___fsmul_sloc1_1_0 + 3)
00118$:
	lda	___fsmul_exp_65536_21
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_exp_65536_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	*___fsmul_sloc0_1_0
	ldx	*(___fsmul_sloc0_1_0 + 1)
	pha
	txa
	lsr	a
	tax
	pla
	ror	a
	tax
	lda	#0x00
	ror	a
	sta	*(___fsmul_sloc0_1_0 + 2)
	stx	*(___fsmul_sloc0_1_0 + 3)
	ldx	#0x00
	stx	*___fsmul_sloc0_1_0
	stx	*(___fsmul_sloc0_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	ora	*___fsmul_sloc0_1_0
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 1)
	ora	*(___fsmul_sloc0_1_0 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	ora	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*___fsmul_sloc1_1_0
	ora	___fsmul_result_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 1)
	ora	(___fsmul_result_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	(___fsmul_result_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	ora	(___fsmul_result_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl1_65536_21 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl1_65536_21 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl1_65536_21 + 1)
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl1_65536_21
00112$:
;	../_fsmul.c: 290: return (fl1.f);
	lda	(___fsmul_fl1_65536_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl1_65536_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_65536_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl1_65536_21
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
;	../_fsmul.c: 291: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
