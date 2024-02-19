;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strtok
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strtok
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strtok_s_65536_27:
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
;Allocation info for local variables in function 'strtok'
;------------------------------------------------------------
;control                   Allocated to stack - sp +5
;str                       Allocated to registers a x 
;s1                        Allocated to stack - sp +1
;s                         Allocated with name '_strtok_s_65536_27'
;------------------------------------------------------------
;	../_strtok.c: 36: char * strtok ( char * str, const char * control )
;	-----------------------------------------
;	 function strtok
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_strtok:
	pha
	pha
;	../_strtok.c: 41: if ( str )
	cmp	#0x00
	bne	00157$
	cpx	#0x00
00157$:
	beq	00102$
;	../_strtok.c: 42: s = str;
	sta	_strtok_s_65536_27
	stx	(_strtok_s_65536_27 + 1)
00102$:
;	../_strtok.c: 43: if ( !s )
	lda	(_strtok_s_65536_27 + 1)
	ora	_strtok_s_65536_27
	bne	00108$
;	../_strtok.c: 44: return NULL;
	lda	#0x00
	tax
	jmp	00119$
;	../_strtok.c: 46: while (*s) {
00108$:
	lda	_strtok_s_65536_27
	sta	*(__DPTR+0)
	lda	(_strtok_s_65536_27 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	beq	00110$
;	../_strtok.c: 47: if (strchr(control,*s))
	pha
	tsx
	lda	0x107,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x106,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_strchr
	sta	*(__TEMP+0)
	pla
	lda	*(__TEMP+0)
	bne	00161$
	cpx	#0x00
00161$:
	beq	00110$
;	../_strtok.c: 48: s++;
	inc	_strtok_s_65536_27
	bne	00108$
	inc	(_strtok_s_65536_27 + 1)
	jmp	00108$
;	../_strtok.c: 50: break;
00110$:
;	../_strtok.c: 53: s1 = s;
	tsx
	lda	_strtok_s_65536_27
	sta	0x101,x
	lda	(_strtok_s_65536_27 + 1)
	sta	0x102,x
;	../_strtok.c: 55: while (*s) {
00113$:
	lda	_strtok_s_65536_27
	sta	*(__DPTR+0)
	lda	(_strtok_s_65536_27 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	beq	00115$
;	../_strtok.c: 56: if (strchr(control,*s)) {
	pha
	tsx
	lda	0x107,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x106,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_strchr
	sta	*(__TEMP+0)
	pla
	lda	*(__TEMP+0)
	bne	00165$
	cpx	#0x00
00165$:
	beq	00112$
;	../_strtok.c: 57: *s++ = '\0';
	lda	_strtok_s_65536_27
	ldx	(_strtok_s_65536_27 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	#0x00
	tay
	sta	[__DPTR],y
	inc	_strtok_s_65536_27
	bne	00167$
	inc	(_strtok_s_65536_27 + 1)
00167$:
;	../_strtok.c: 58: return s1;
	tsx
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00119$
00112$:
;	../_strtok.c: 60: s++ ;
	inc	_strtok_s_65536_27
	bne	00113$
	inc	(_strtok_s_65536_27 + 1)
	jmp	00113$
00115$:
;	../_strtok.c: 63: s = NULL;
	ldx	#0x00
	stx	_strtok_s_65536_27
	stx	(_strtok_s_65536_27 + 1)
;	../_strtok.c: 65: if (*s1)
	tsx
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	beq	00117$
;	../_strtok.c: 66: return s1;
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
	jmp	00119$
00117$:
;	../_strtok.c: 68: return NULL;
	lda	#0x00
	tax
00119$:
;	../_strtok.c: 69: }
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
