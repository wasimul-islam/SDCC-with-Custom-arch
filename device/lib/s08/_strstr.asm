;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module _strstr
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
	.globl _strstr_PARM_2
	.globl _strstr
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strstr_sloc0_1_0:
	.ds 2
_strstr_sloc1_1_0:
	.ds 1
_strstr_sloc2_1_0:
	.ds 2
_strstr_sloc3_1_0:
	.ds 2
_strstr_sloc4_1_0:
	.ds 2
_strstr_sloc5_1_0:
	.ds 2
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
_strstr_PARM_2:
	.ds 2
_strstr_cp_65536_27:
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
;Allocation info for local variables in function 'strstr'
;------------------------------------------------------------
;str2                      Allocated with name '_strstr_PARM_2'
;str1                      Allocated to registers x h 
;cp                        Allocated with name '_strstr_cp_65536_27'
;s1                        Allocated to registers 
;s2                        Allocated to registers 
;sloc0                     Allocated with name '_strstr_sloc0_1_0'
;sloc1                     Allocated with name '_strstr_sloc1_1_0'
;sloc2                     Allocated with name '_strstr_sloc2_1_0'
;sloc3                     Allocated with name '_strstr_sloc3_1_0'
;sloc4                     Allocated with name '_strstr_sloc4_1_0'
;sloc5                     Allocated with name '_strstr_sloc5_1_0'
;------------------------------------------------------------
;../_strstr.c:31: char *strstr ( const char *str1, const char *str2 )
;	-----------------------------------------
;	 function strstr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strstr:
	pshx
	tax
	pulh
;../_strstr.c:33: const char *cp = str1;
	sthx	_strstr_cp_65536_27
;../_strstr.c:37: if (!*str2)
	lda	_strstr_PARM_2
	sta	*_strstr_sloc0_1_0
	lda	(_strstr_PARM_2 + 1)
	sta	*(_strstr_sloc0_1_0 + 1)
	pshx
	pshh
	ldhx	*_strstr_sloc0_1_0
	lda	,x
	pulh
	pulx
	bne	00122$
;../_strstr.c:38: return ((char*)str1);
	pshx
	pshh
	pulx
	pula
	rts
;../_strstr.c:40: while (*cp)
00122$:
	sthx	*_strstr_sloc2_1_0
00110$:
	ldhx	*_strstr_sloc2_1_0
	lda	,x
	beq	00112$
;../_strstr.c:43: s2 = str2;
	mov	*_strstr_sloc0_1_0,*_strstr_sloc3_1_0
	mov	*(_strstr_sloc0_1_0 + 1),*(_strstr_sloc3_1_0 + 1)
;../_strstr.c:45: while (*s1 && *s2 && !(*s1-*s2))
	mov	*_strstr_sloc2_1_0,*_strstr_sloc4_1_0
	mov	*(_strstr_sloc2_1_0 + 1),*(_strstr_sloc4_1_0 + 1)
00105$:
	ldhx	*_strstr_sloc4_1_0
	lda	,x
	ldhx	*_strstr_sloc3_1_0
	ldx	,x
	stx	*_strstr_sloc1_1_0
	tsta
	beq	00107$
	tst	*_strstr_sloc1_1_0
	beq	00107$
	clrx
	mov	*_strstr_sloc1_1_0,*(_strstr_sloc5_1_0 + 1)
	stx	*_strstr_sloc5_1_0
	sub	*(_strstr_sloc5_1_0 + 1)
	psha
	txa
	sbc	*_strstr_sloc5_1_0
	tax
	pula
	tsta
	bne	00160$
	tstx
00160$:
	bne	00107$
;../_strstr.c:46: s1++, s2++;
	ldhx	*_strstr_sloc4_1_0
	aix	#1
	sthx	*_strstr_sloc4_1_0
	ldhx	*_strstr_sloc3_1_0
	aix	#1
	sthx	*_strstr_sloc3_1_0
	bra	00105$
00107$:
;../_strstr.c:48: if (!*s2)
	tst	*_strstr_sloc1_1_0
	bne	00109$
;../_strstr.c:49: return ((char*)cp);
	ldx	_strstr_cp_65536_27
	lda	(_strstr_cp_65536_27 + 1)
	rts
00109$:
;../_strstr.c:51: cp++;
	ldhx	*_strstr_sloc2_1_0
	aix	#1
	sthx	*_strstr_sloc2_1_0
	lda	*_strstr_sloc2_1_0
	sta	_strstr_cp_65536_27
	lda	*(_strstr_sloc2_1_0 + 1)
	sta	(_strstr_cp_65536_27 + 1)
	bra	00110$
00112$:
;../_strstr.c:54: return (NULL) ;
	clra
	tax
;../_strstr.c:55: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
