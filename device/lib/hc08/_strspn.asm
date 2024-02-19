;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strspn
	.optsdcc -mhc08
	
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
	.globl _strchr
	.globl _strspn_PARM_2
	.globl _strspn
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_strspn_count_65536_27:
	.ds 2
_strspn_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
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
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
_strspn_PARM_2:
	.ds 2
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
;Allocation info for local variables in function 'strspn'
;------------------------------------------------------------
;count                     Allocated with name '_strspn_count_65536_27'
;ch                        Allocated to registers a 
;sloc0                     Allocated with name '_strspn_sloc0_1_0'
;control                   Allocated with name '_strspn_PARM_2'
;string                    Allocated to registers 
;------------------------------------------------------------
;../_strspn.c:31: size_t strspn ( const char * string, const char * control )
;	-----------------------------------------
;	 function strspn
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strspn:
	sta	*(_strspn_sloc0_1_0 + 1)
	stx	*_strspn_sloc0_1_0
;../_strspn.c:36: while (ch = *string) {
	clrh
	clrx
	sthx	*_strspn_count_65536_27
00104$:
	ldhx	*_strspn_sloc0_1_0
	ldx	,x
	txa
	tstx
	beq	00106$
;../_strspn.c:37: if ( strchr(control,ch) )
	sta	_strchr_PARM_2
	lda	(_strspn_PARM_2 + 1)
	ldx	_strspn_PARM_2
	jsr	_strchr
	tsta
	bne	00126$
	tstx
00126$:
	beq	00106$
;../_strspn.c:38: count++ ;
	ldhx	*_strspn_count_65536_27
	aix	#1
	sthx	*_strspn_count_65536_27
;../_strspn.c:41: string++ ;
	ldhx	*_strspn_sloc0_1_0
	aix	#1
	sthx	*_strspn_sloc0_1_0
	bra	00104$
00106$:
;../_strspn.c:44: return count ;
	ldx	*_strspn_count_65536_27
	lda	*(_strspn_count_65536_27 + 1)
;../_strspn.c:45: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
