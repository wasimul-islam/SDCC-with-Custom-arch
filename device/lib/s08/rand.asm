;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module rand
	.optsdcc -ms08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rand
	.globl _srand
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
_s:
	.ds 4
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'rand'
;------------------------------------------------------------
;t                         Allocated with name '_rand_t_65536_37'
;sloc0                     Allocated with name '_rand_sloc0_1_0'
;sloc1                     Allocated with name '_rand_sloc1_1_0'
;------------------------------------------------------------
;../rand.c:40: int rand(void)
;	-----------------------------------------
;	 function rand
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_rand:
;../rand.c:44: t ^= t >> 10;
	lda	(_s + 2)
	ldx	(_s + 1)
	lsrx
	rora
	lsrx
	rora
	sta	*(_rand_sloc0_1_0 + 3)
	stx	*(_rand_sloc0_1_0 + 2)
	ldx	_s
	clra
	lsrx
	rora
	lsrx
	rora
	ora	*(_rand_sloc0_1_0 + 2)
	sta	*(_rand_sloc0_1_0 + 2)
	stx	*(_rand_sloc0_1_0 + 1)
	mov	#0x00,*_rand_sloc0_1_0
	lda	(_s + 3)
	eor	*(_rand_sloc0_1_0 + 3)
	sta	*(_rand_sloc0_1_0 + 3)
	lda	(_s + 2)
	eor	*(_rand_sloc0_1_0 + 2)
	sta	*(_rand_sloc0_1_0 + 2)
	lda	(_s + 1)
	eor	*(_rand_sloc0_1_0 + 1)
	sta	*(_rand_sloc0_1_0 + 1)
	lda	_s
	eor	*_rand_sloc0_1_0
	sta	*_rand_sloc0_1_0
;../rand.c:45: t ^= t << 9;
	lda	*(_rand_sloc0_1_0 + 3)
	ldx	*(_rand_sloc0_1_0 + 2)
	lsla
	rolx
	sta	*(_rand_sloc1_1_0 + 2)
	lda	*(_rand_sloc0_1_0 + 1)
	stx	*(_rand_sloc1_1_0 + 1)
	rola
	sta	*_rand_sloc1_1_0
	mov	#0x00,*(_rand_sloc1_1_0 + 3)
	lda	*(_rand_sloc0_1_0 + 3)
	eor	*(_rand_sloc1_1_0 + 3)
	sta	*(_rand_sloc1_1_0 + 3)
	lda	*(_rand_sloc0_1_0 + 2)
	eor	*(_rand_sloc1_1_0 + 2)
	sta	*(_rand_sloc1_1_0 + 2)
	lda	*(_rand_sloc0_1_0 + 1)
	eor	*(_rand_sloc1_1_0 + 1)
	sta	*(_rand_sloc1_1_0 + 1)
	lda	*_rand_sloc0_1_0
	eor	*_rand_sloc1_1_0
	sta	*_rand_sloc1_1_0
;../rand.c:46: t ^= t >> 25;
	lda	*_rand_sloc1_1_0
	lsra	
	sta	*(_rand_sloc0_1_0 + 3)
	mov	#0x00,*(_rand_sloc0_1_0 + 2)
	mov	#0x00,*(_rand_sloc0_1_0 + 1)
	mov	#0x00,*_rand_sloc0_1_0
	lda	*(_rand_sloc1_1_0 + 3)
	eor	*(_rand_sloc0_1_0 + 3)
	sta	*(_rand_sloc1_1_0 + 3)
	lda	*(_rand_sloc1_1_0 + 2)
	eor	*(_rand_sloc0_1_0 + 2)
	sta	*(_rand_sloc1_1_0 + 2)
	lda	*(_rand_sloc1_1_0 + 1)
	eor	*(_rand_sloc0_1_0 + 1)
	sta	*(_rand_sloc1_1_0 + 1)
	lda	*_rand_sloc1_1_0
	eor	*_rand_sloc0_1_0
	sta	*_rand_sloc1_1_0
	mov	*_rand_sloc1_1_0,*_rand_t_65536_37
	mov	*(_rand_sloc1_1_0 + 1),*(_rand_t_65536_37 + 1)
	mov	*(_rand_sloc1_1_0 + 2),*(_rand_t_65536_37 + 2)
	mov	*(_rand_sloc1_1_0 + 3),*(_rand_t_65536_37 + 3)
;../rand.c:48: s = t;
	lda	*_rand_sloc1_1_0
	sta	_s
	lda	*(_rand_sloc1_1_0 + 1)
	sta	(_s + 1)
	lda	*(_rand_sloc1_1_0 + 2)
	sta	(_s + 2)
	lda	*(_rand_sloc1_1_0 + 3)
	sta	(_s + 3)
;../rand.c:50: return(t & RAND_MAX);
	lda	*(_rand_t_65536_37 + 3)
	ldx	*(_rand_t_65536_37 + 2)
	psha
	txa
	and	#0x7f
	tax
	pula
;../rand.c:51: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'srand'
;------------------------------------------------------------
;seed                      Allocated to registers a x 
;sloc0                     Allocated with name '_srand_sloc0_1_0'
;------------------------------------------------------------
;../rand.c:53: void srand(unsigned int seed)
;	-----------------------------------------
;	 function srand
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_srand:
;../rand.c:55: s = seed | 0x80000000; /* s shall not become 0 */
	sta	*(_srand_sloc0_1_0 + 3)
	stx	*(_srand_sloc0_1_0 + 2)
	mov	#0x00,*(_srand_sloc0_1_0 + 1)
	mov	#0x00,*_srand_sloc0_1_0
	lda	*(_srand_sloc0_1_0 + 3)
	sta	(_s + 3)
	lda	*(_srand_sloc0_1_0 + 2)
	sta	(_s + 2)
	lda	*(_srand_sloc0_1_0 + 1)
	sta	(_s + 1)
	lda	*_srand_sloc0_1_0
	ora	#0x80
	sta	_s
;../rand.c:56: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__s:
	.byte #0x80, #0x00, #0x00, #0x01	; 2147483649
	.area CABS    (ABS,CODE)
