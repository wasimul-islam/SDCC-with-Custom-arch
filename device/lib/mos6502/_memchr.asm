;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memchr
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memchr_PARM_3
	.globl _memchr_PARM_2
	.globl _memchr
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memchr_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_memchr_PARM_2:
	.ds 2
_memchr_PARM_3:
	.ds 2
_memchr_p_65536_27:
	.ds 2
_memchr_end_65536_27:
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
;Allocation info for local variables in function 'memchr'
;------------------------------------------------------------
;c                         Allocated with name '_memchr_PARM_2'
;n                         Allocated with name '_memchr_PARM_3'
;s                         Allocated to registers a x 
;p                         Allocated with name '_memchr_p_65536_27'
;end                       Allocated with name '_memchr_end_65536_27'
;sloc0                     Allocated with name '_memchr_sloc0_1_0'
;------------------------------------------------------------
;	../_memchr.c: 31: void *memchr(const void *s, int c, size_t n)
;	-----------------------------------------
;	 function memchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memchr:
;	../_memchr.c: 33: unsigned char *p = (unsigned char *)s;
	sta	_memchr_p_65536_27
	stx	(_memchr_p_65536_27 + 1)
;	../_memchr.c: 34: unsigned char *end = p + n;
	lda	_memchr_p_65536_27
	clc
	adc	_memchr_PARM_3
	sta	_memchr_end_65536_27
	lda	(_memchr_p_65536_27 + 1)
	adc	(_memchr_PARM_3 + 1)
	sta	(_memchr_end_65536_27 + 1)
;	../_memchr.c: 38: return(0);
	lda	_memchr_p_65536_27
	ldx	(_memchr_p_65536_27 + 1)
00105$:
;	../_memchr.c: 35: for(; p != end; p++)
	cmp	_memchr_end_65536_27
	bne	00122$
	cpx	(_memchr_end_65536_27 + 1)
	beq	00103$
00122$:
;	../_memchr.c: 36: if(*p == (unsigned char)c)
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*_memchr_sloc0_1_0
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	ldy	_memchr_PARM_2
	cpy	*_memchr_sloc0_1_0
	bne	00106$
;	../_memchr.c: 37: return((void *)p);
	lda	_memchr_p_65536_27
	ldx	(_memchr_p_65536_27 + 1)
	rts
00106$:
;	../_memchr.c: 35: for(; p != end; p++)
	clc
	adc	#0x01
	bcc	00124$
	inx
00124$:
	sta	_memchr_p_65536_27
	stx	(_memchr_p_65536_27 + 1)
	jmp	00105$
00103$:
;	../_memchr.c: 38: return(0);
	lda	#0x00
	tax
;	../_memchr.c: 39: }
	rts
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
