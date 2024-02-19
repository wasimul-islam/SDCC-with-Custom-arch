;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _ulong2fs
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs_PARM_1
	.globl ___ulong2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___ulong2fs_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___ulong2fs_PARM_1:
	.ds 4
___ulong2fs_fl_65536_21:
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
;Allocation info for local variables in function '__ulong2fs'
;------------------------------------------------------------
;a                         Allocated with name '___ulong2fs_PARM_1'
;exp                       Allocated to registers 
;fl                        Allocated with name '___ulong2fs_fl_65536_21'
;sloc0                     Allocated with name '___ulong2fs_sloc0_1_0'
;------------------------------------------------------------
;	../_ulong2fs.c: 84: float __ulong2fs (unsigned long a )
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ulong2fs:
;	../_ulong2fs.c: 89: if (!a)
	lda	(___ulong2fs_PARM_1 + 3)
	ora	(___ulong2fs_PARM_1 + 2)
	ora	(___ulong2fs_PARM_1 + 1)
	ora	___ulong2fs_PARM_1
	bne	00102$
;	../_ulong2fs.c: 91: return 0.0;
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00102$:
;	../_ulong2fs.c: 94: if (a == 0xfffffffful)
	lda	___ulong2fs_PARM_1
	cmp	#0xff
	bne	00118$
	lda	(___ulong2fs_PARM_1 + 1)
	cmp	#0xff
	bne	00118$
	lda	(___ulong2fs_PARM_1 + 2)
	cmp	#0xff
	bne	00118$
	lda	(___ulong2fs_PARM_1 + 3)
	cmp	#0xff
	bne	00118$
;	../_ulong2fs.c: 96: return 4294967296.0f;
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x4f
	sty	*___SDCC_m6502_ret3
	rts
;	../_ulong2fs.c: 99: while (a < HIDDEN)
00118$:
	ldx	#0x96
00105$:
	lda	(___ulong2fs_PARM_1 + 2)
	sec
	sbc	#0x80
	lda	(___ulong2fs_PARM_1 + 3)
	sbc	#0x00
	bcs	00121$
;	../_ulong2fs.c: 101: a <<= 1;
	asl	___ulong2fs_PARM_1
	rol	(___ulong2fs_PARM_1 + 1)
	rol	(___ulong2fs_PARM_1 + 2)
	rol	(___ulong2fs_PARM_1 + 3)
	lda	(___ulong2fs_PARM_1 + 3)
;	../_ulong2fs.c: 102: exp--;
	dex
	jmp	00105$
;	../_ulong2fs.c: 105: while (a & NORM)
00121$:
00110$:
	lda	(___ulong2fs_PARM_1 + 3)
	beq	00112$
;	../_ulong2fs.c: 108: if (a & 1)
	lda	#0x01
	and	___ulong2fs_PARM_1
	beq	00109$
;	../_ulong2fs.c: 109: a += 2;
	lda	___ulong2fs_PARM_1
	clc
	adc	#0x02
	sta	___ulong2fs_PARM_1
	bcc	00155$
	inc	(___ulong2fs_PARM_1 + 1)
	bne	00155$
	inc	(___ulong2fs_PARM_1 + 2)
	bne	00155$
	inc	(___ulong2fs_PARM_1 + 3)
00155$:
00109$:
;	../_ulong2fs.c: 110: a >>= 1;
	lda	(___ulong2fs_PARM_1 + 3)
	lsr	a
	sta	(___ulong2fs_PARM_1 + 3)
	ror	(___ulong2fs_PARM_1 + 2)
	ror	(___ulong2fs_PARM_1 + 1)
	ror	___ulong2fs_PARM_1
	lda	___ulong2fs_PARM_1
;	../_ulong2fs.c: 111: exp++;
	inx
	jmp	00110$
00112$:
;	../_ulong2fs.c: 114: a &= ~HIDDEN ;
	lda	(___ulong2fs_PARM_1 + 2)
	and	#0x7f
	sta	(___ulong2fs_PARM_1 + 2)
;	../_ulong2fs.c: 116: fl.l = PACK(0,(unsigned long)exp, a);
	stx	*___ulong2fs_sloc0_1_0
	ldy	#0x00
	sty	*(___ulong2fs_sloc0_1_0 + 1)
	sty	*(___ulong2fs_sloc0_1_0 + 2)
	sty	*(___ulong2fs_sloc0_1_0 + 3)
	lda	*___ulong2fs_sloc0_1_0
	ldx	*(___ulong2fs_sloc0_1_0 + 1)
	pha
	txa
	lsr	a
	tax
	pla
	ror	a
	tax
	tya
	ror	a
	sta	*(___ulong2fs_sloc0_1_0 + 2)
	stx	*(___ulong2fs_sloc0_1_0 + 3)
	sty	*___ulong2fs_sloc0_1_0
	sty	*(___ulong2fs_sloc0_1_0 + 1)
	lda	*___ulong2fs_sloc0_1_0
	ora	___ulong2fs_PARM_1
	sta	*___ulong2fs_sloc0_1_0
	lda	*(___ulong2fs_sloc0_1_0 + 1)
	ora	(___ulong2fs_PARM_1 + 1)
	sta	*(___ulong2fs_sloc0_1_0 + 1)
	lda	*(___ulong2fs_sloc0_1_0 + 2)
	ora	(___ulong2fs_PARM_1 + 2)
	sta	*(___ulong2fs_sloc0_1_0 + 2)
	lda	*(___ulong2fs_sloc0_1_0 + 3)
	ora	(___ulong2fs_PARM_1 + 3)
	sta	*(___ulong2fs_sloc0_1_0 + 3)
	sta	(___ulong2fs_fl_65536_21 + 3)
	lda	*(___ulong2fs_sloc0_1_0 + 2)
	sta	(___ulong2fs_fl_65536_21 + 2)
	lda	*(___ulong2fs_sloc0_1_0 + 1)
	sta	(___ulong2fs_fl_65536_21 + 1)
	lda	*___ulong2fs_sloc0_1_0
	sta	___ulong2fs_fl_65536_21
;	../_ulong2fs.c: 118: return (fl.f);
	lda	(___ulong2fs_fl_65536_21 + 3)
	sta	*(___ulong2fs_sloc0_1_0 + 3)
	lda	(___ulong2fs_fl_65536_21 + 2)
	sta	*(___ulong2fs_sloc0_1_0 + 2)
	lda	(___ulong2fs_fl_65536_21 + 1)
	sta	*(___ulong2fs_sloc0_1_0 + 1)
	lda	___ulong2fs_fl_65536_21
	sta	*___ulong2fs_sloc0_1_0
	lda	*(___ulong2fs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___ulong2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___ulong2fs_sloc0_1_0 + 1)
	lda	*___ulong2fs_sloc0_1_0
;	../_ulong2fs.c: 119: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
