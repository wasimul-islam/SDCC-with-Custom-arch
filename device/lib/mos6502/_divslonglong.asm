;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _divslonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslonglong_PARM_2
	.globl __divslonglong_PARM_1
	.globl __divslonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__divslonglong_sloc0_1_0:
	.ds 8
__divslonglong_sloc1_1_0:
	.ds 1
__divslonglong_sloc2_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__divslonglong_PARM_1:
	.ds 8
__divslonglong_PARM_2:
	.ds 8
__divslonglong_numeratorneg_65536_2:
	.ds 1
__divslonglong_denominatorneg_65536_2:
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
;Allocation info for local variables in function '_divslonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__divslonglong_sloc0_1_0'
;sloc1                     Allocated with name '__divslonglong_sloc1_1_0'
;sloc2                     Allocated with name '__divslonglong_sloc2_1_0'
;numerator                 Allocated with name '__divslonglong_PARM_1'
;denominator               Allocated with name '__divslonglong_PARM_2'
;numeratorneg              Allocated with name '__divslonglong_numeratorneg_65536_2'
;denominatorneg            Allocated with name '__divslonglong_denominatorneg_65536_2'
;d                         Allocated with name '__divslonglong_d_65536_2'
;------------------------------------------------------------
;	../_divslonglong.c: 40: _divslonglong (long long numerator, long long denominator) __SDCC_NONBANKED
;	-----------------------------------------
;	 function _divslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divslonglong:
;	../_divslonglong.c: 42: bool numeratorneg = (numerator < 0);
	lda	(__divslonglong_PARM_1 + 7)
	sec
	sbc	#0x00
	bvc	00123$
	bpl	00121$
	bmi	00124$
00123$:
	bmi	00121$
00124$:
	lda	#0x00
	jmp	00122$
00121$:
	lda	#0x01
00122$:
	sta	__divslonglong_numeratorneg_65536_2
;	../_divslonglong.c: 43: bool denominatorneg = (denominator < 0);
	lda	(__divslonglong_PARM_2 + 7)
	sec
	sbc	#0x00
	bvc	00127$
	bpl	00125$
	bmi	00128$
00127$:
	bmi	00125$
00128$:
	lda	#0x00
	jmp	00126$
00125$:
	lda	#0x01
00126$:
	sta	__divslonglong_denominatorneg_65536_2
;	../_divslonglong.c: 46: if (numeratorneg)
	lda	__divslonglong_numeratorneg_65536_2
	beq	00102$
;	../_divslonglong.c: 47: numerator = -numerator;
	lda	#0x00
	sec
	sbc	__divslonglong_PARM_1
	sta	__divslonglong_PARM_1
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 1)
	sta	(__divslonglong_PARM_1 + 1)
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 2)
	sta	(__divslonglong_PARM_1 + 2)
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 3)
	sta	(__divslonglong_PARM_1 + 3)
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 4)
	sta	(__divslonglong_PARM_1 + 4)
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 5)
	sta	(__divslonglong_PARM_1 + 5)
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 6)
	sta	(__divslonglong_PARM_1 + 6)
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 7)
	sta	(__divslonglong_PARM_1 + 7)
00102$:
;	../_divslonglong.c: 48: if (denominatorneg)
	lda	__divslonglong_denominatorneg_65536_2
	beq	00104$
;	../_divslonglong.c: 49: denominator = -denominator;
	lda	#0x00
	sec
	sbc	__divslonglong_PARM_2
	sta	__divslonglong_PARM_2
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 1)
	sta	(__divslonglong_PARM_2 + 1)
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 2)
	sta	(__divslonglong_PARM_2 + 2)
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 3)
	sta	(__divslonglong_PARM_2 + 3)
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 4)
	sta	(__divslonglong_PARM_2 + 4)
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 5)
	sta	(__divslonglong_PARM_2 + 5)
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 6)
	sta	(__divslonglong_PARM_2 + 6)
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 7)
	sta	(__divslonglong_PARM_2 + 7)
00104$:
;	../_divslonglong.c: 51: d = (unsigned long long)numerator / (unsigned long long)denominator;
	lda	__divslonglong_PARM_1
	sta	__divulonglong_PARM_1
	lda	(__divslonglong_PARM_1 + 1)
	sta	(__divulonglong_PARM_1 + 1)
	lda	(__divslonglong_PARM_1 + 2)
	sta	(__divulonglong_PARM_1 + 2)
	lda	(__divslonglong_PARM_1 + 3)
	sta	(__divulonglong_PARM_1 + 3)
	lda	(__divslonglong_PARM_1 + 4)
	sta	(__divulonglong_PARM_1 + 4)
	lda	(__divslonglong_PARM_1 + 5)
	sta	(__divulonglong_PARM_1 + 5)
	lda	(__divslonglong_PARM_1 + 6)
	sta	(__divulonglong_PARM_1 + 6)
	lda	(__divslonglong_PARM_1 + 7)
	sta	(__divulonglong_PARM_1 + 7)
	lda	__divslonglong_PARM_2
	sta	__divulonglong_PARM_2
	lda	(__divslonglong_PARM_2 + 1)
	sta	(__divulonglong_PARM_2 + 1)
	lda	(__divslonglong_PARM_2 + 2)
	sta	(__divulonglong_PARM_2 + 2)
	lda	(__divslonglong_PARM_2 + 3)
	sta	(__divulonglong_PARM_2 + 3)
	lda	(__divslonglong_PARM_2 + 4)
	sta	(__divulonglong_PARM_2 + 4)
	lda	(__divslonglong_PARM_2 + 5)
	sta	(__divulonglong_PARM_2 + 5)
	lda	(__divslonglong_PARM_2 + 6)
	sta	(__divulonglong_PARM_2 + 6)
	lda	(__divslonglong_PARM_2 + 7)
	sta	(__divulonglong_PARM_2 + 7)
;	../_divslonglong.c: 53: return ((numeratorneg ^ denominatorneg) ? -d : d);
	jsr	__divulonglong
	sta	*__divslonglong_sloc0_1_0
	stx	*(__divslonglong_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__divslonglong_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__divslonglong_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__divslonglong_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__divslonglong_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__divslonglong_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__divslonglong_sloc0_1_0 + 7)
	lda	__divslonglong_numeratorneg_65536_2
	eor	__divslonglong_denominatorneg_65536_2
	beq	00107$
	lda	#0x00
	sec
	sbc	*__divslonglong_sloc0_1_0
	sta	*__divslonglong_sloc2_1_0
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 1)
	sta	*(__divslonglong_sloc2_1_0 + 1)
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 2)
	sta	*(__divslonglong_sloc2_1_0 + 2)
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 3)
	sta	*(__divslonglong_sloc2_1_0 + 3)
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 4)
	sta	*(__divslonglong_sloc2_1_0 + 4)
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 5)
	sta	*(__divslonglong_sloc2_1_0 + 5)
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 6)
	sta	*(__divslonglong_sloc2_1_0 + 6)
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 7)
	sta	*(__divslonglong_sloc2_1_0 + 7)
	jmp	00108$
00107$:
	lda	*__divslonglong_sloc0_1_0
	sta	*__divslonglong_sloc2_1_0
	lda	*(__divslonglong_sloc0_1_0 + 1)
	sta	*(__divslonglong_sloc2_1_0 + 1)
	lda	*(__divslonglong_sloc0_1_0 + 2)
	sta	*(__divslonglong_sloc2_1_0 + 2)
	lda	*(__divslonglong_sloc0_1_0 + 3)
	sta	*(__divslonglong_sloc2_1_0 + 3)
	lda	*(__divslonglong_sloc0_1_0 + 4)
	sta	*(__divslonglong_sloc2_1_0 + 4)
	lda	*(__divslonglong_sloc0_1_0 + 5)
	sta	*(__divslonglong_sloc2_1_0 + 5)
	lda	*(__divslonglong_sloc0_1_0 + 6)
	sta	*(__divslonglong_sloc2_1_0 + 6)
	lda	*(__divslonglong_sloc0_1_0 + 7)
	sta	*(__divslonglong_sloc2_1_0 + 7)
00108$:
	lda	*(__divslonglong_sloc2_1_0 + 7)
	sta	*___SDCC_m6502_ret7
	lda	*(__divslonglong_sloc2_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(__divslonglong_sloc2_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(__divslonglong_sloc2_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(__divslonglong_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(__divslonglong_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(__divslonglong_sloc2_1_0 + 1)
	lda	*__divslonglong_sloc2_1_0
;	../_divslonglong.c: 54: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
