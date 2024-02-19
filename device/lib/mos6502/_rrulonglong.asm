;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _rrulonglong
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rrulonglong_PARM_2
	.globl __rrulonglong_PARM_1
	.globl __rrulonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__rrulonglong_sloc0_1_0:
	.ds 1
__rrulonglong_sloc1_1_0:
	.ds 2
__rrulonglong_sloc2_1_0:
	.ds 2
__rrulonglong_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__rrulonglong_PARM_1:
	.ds 8
__rrulonglong_PARM_2:
	.ds 1
__rrulonglong_t1_65536_2:
	.ds 1
__rrulonglong_t2_65536_2:
	.ds 1
__rrulonglong_zb_65536_2:
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
;Allocation info for local variables in function '_rrulonglong'
;------------------------------------------------------------
;l                         Allocated with name '__rrulonglong_PARM_1'
;s                         Allocated with name '__rrulonglong_PARM_2'
;b                         Allocated to registers 
;shift                     Allocated to registers 
;t1                        Allocated with name '__rrulonglong_t1_65536_2'
;t2                        Allocated with name '__rrulonglong_t2_65536_2'
;zb                        Allocated with name '__rrulonglong_zb_65536_2'
;i                         Allocated to registers 
;sloc0                     Allocated with name '__rrulonglong_sloc0_1_0'
;sloc1                     Allocated with name '__rrulonglong_sloc1_1_0'
;sloc2                     Allocated with name '__rrulonglong_sloc2_1_0'
;sloc3                     Allocated with name '__rrulonglong_sloc3_1_0'
;------------------------------------------------------------
;	_rrulonglong.c: 8: unsigned long long _rrulonglong(unsigned long long l, char s)
;	-----------------------------------------
;	 function _rrulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__rrulonglong:
;	_rrulonglong.c: 11: uint8_t *const b = (uint8_t *)(&l);
;	_rrulonglong.c: 15: zb=s>>3;
	lda	__rrulonglong_PARM_2
	cmp	#0x80
	ror	a
	cmp	#0x80
	ror	a
	cmp	#0x80
	ror	a
;	_rrulonglong.c: 16: if(zb) {
	sta	__rrulonglong_zb_65536_2
	bne	00165$
	jmp	00104$
00165$:
;	_rrulonglong.c: 17: for(i=0;i<(8-zb);i++) {
	ldx	#0x00
	stx	*__rrulonglong_sloc0_1_0
00110$:
	lda	__rrulonglong_zb_65536_2
	sta	*__rrulonglong_sloc1_1_0
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(__rrulonglong_sloc1_1_0 + 1)
	lda	#0x08
	sec
	sbc	*__rrulonglong_sloc1_1_0
	sta	*__rrulonglong_sloc2_1_0
	lda	#0x00
	sbc	*(__rrulonglong_sloc1_1_0 + 1)
	sta	*(__rrulonglong_sloc2_1_0 + 1)
	lda	*__rrulonglong_sloc0_1_0
	pha
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	tax
	pla
	sta	*(__TEMP+0)
	sec
	sbc	*__rrulonglong_sloc2_1_0
	txa
	sbc	*(__rrulonglong_sloc2_1_0 + 1)
	php
	lda	*(__TEMP+0)
	plp
	bvc	00167$
	bpl	00166$
	bmi	00126$
00167$:
	bpl	00126$
00166$:
;	_rrulonglong.c: 18: b[i]=b[zb+i];
	sta	*__rrulonglong_sloc2_1_0
	stx	*(__rrulonglong_sloc2_1_0 + 1)
	clc
	adc	*__rrulonglong_sloc1_1_0
	pha
	txa
	adc	*(__rrulonglong_sloc1_1_0 + 1)
	tax
	pla
	clc
	adc	#<(__rrulonglong_PARM_1+0)
	sta	*(__DPTR+0)
	txa
	adc	#>(__rrulonglong_PARM_1+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*(__TEMP+0)
	clc
	lda	*__rrulonglong_sloc2_1_0
	adc	#<(__rrulonglong_PARM_1+0)
	sta	*(__DPTR+0)
	lda	*(__rrulonglong_sloc2_1_0 + 1)
	adc	#>(__rrulonglong_PARM_1+0)
	sta	*(__DPTR+1)
	lda	*(__TEMP+0)
	sta	[__DPTR],y
;	_rrulonglong.c: 17: for(i=0;i<(8-zb);i++) {
	inc	*__rrulonglong_sloc0_1_0
	jmp	00110$
00126$:
	ldy	*__rrulonglong_sloc0_1_0
00113$:
;	_rrulonglong.c: 21: for(;i<8;i++)
	tya
	sec
	sbc	#0x08
	bvc	00170$
	bpl	00169$
	bmi	00104$
00170$:
	bpl	00104$
00169$:
;	_rrulonglong.c: 22: b[i]=0;
	tya
	pha
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	tax
	pla
	sty	*(__TEMP+0)
	clc
	adc	#<(__rrulonglong_PARM_1+0)
	sta	*(__DPTR+0)
	txa
	adc	#>(__rrulonglong_PARM_1+0)
	sta	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	ldy	*(__TEMP+0)
;	_rrulonglong.c: 21: for(;i<8;i++)
	iny
	jmp	00113$
00104$:
;	_rrulonglong.c: 25: shift=s&0x7;
	lda	__rrulonglong_PARM_2
	and	#0x07
	sta	*__rrulonglong_sloc2_1_0
;	_rrulonglong.c: 26: while(shift--) {
	lda	#0x07
	sec
	sbc	__rrulonglong_zb_65536_2
	sta	*__rrulonglong_sloc1_1_0
00106$:
	lda	*__rrulonglong_sloc2_1_0
	dec	*__rrulonglong_sloc2_1_0
	cmp	#0x00
	beq	00108$
;	_rrulonglong.c: 27: t2=0;
	ldx	#0x00
	stx	__rrulonglong_t2_65536_2
;	_rrulonglong.c: 28: for(i=7-zb;i>=0;i--) {
	lda	*__rrulonglong_sloc1_1_0
	sta	*__rrulonglong_sloc0_1_0
00116$:
	lda	*__rrulonglong_sloc0_1_0
	sec
	sbc	#0x00
	bvs	00174$
	bpl	00173$
	bmi	00106$
00174$:
	bpl	00106$
00173$:
;	_rrulonglong.c: 29: t1=b[i]&1;
	lda	*__rrulonglong_sloc0_1_0
	pha
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	tax
	pla
	sta	*__rrulonglong_sloc3_1_0
	stx	*(__rrulonglong_sloc3_1_0 + 1)
	clc
	lda	*__rrulonglong_sloc3_1_0
	adc	#<(__rrulonglong_PARM_1+0)
	sta	*(__DPTR+0)
	lda	*(__rrulonglong_sloc3_1_0 + 1)
	adc	#>(__rrulonglong_PARM_1+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tax
	and	#0x01
	sta	__rrulonglong_t1_65536_2
;	_rrulonglong.c: 30: b[i]=(b[i]>>1)|t2;
	txa
	lsr	a
	ora	__rrulonglong_t2_65536_2
	tax
	clc
	lda	*__rrulonglong_sloc3_1_0
	adc	#<(__rrulonglong_PARM_1+0)
	sta	*(__DPTR+0)
	lda	*(__rrulonglong_sloc3_1_0 + 1)
	adc	#>(__rrulonglong_PARM_1+0)
	sta	*(__DPTR+1)
	txa
	sta	[__DPTR],y
;	_rrulonglong.c: 31: t2=t1?0x80:0;
	lda	__rrulonglong_t1_65536_2
	beq	00120$
	lda	#0x80
	ldx	#0x00
	jmp	00121$
00120$:
	lda	#0x00
	tax
00121$:
	sta	__rrulonglong_t2_65536_2
;	_rrulonglong.c: 28: for(i=7-zb;i>=0;i--) {
	dec	*__rrulonglong_sloc0_1_0
	jmp	00116$
00108$:
;	_rrulonglong.c: 35: return(l);
	lda	(__rrulonglong_PARM_1 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(__rrulonglong_PARM_1 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(__rrulonglong_PARM_1 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(__rrulonglong_PARM_1 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(__rrulonglong_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__rrulonglong_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__rrulonglong_PARM_1 + 1)
	lda	__rrulonglong_PARM_1
;	_rrulonglong.c: 36: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
