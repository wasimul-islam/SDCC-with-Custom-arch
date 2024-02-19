;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __assert
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
	.globl ___assert
	.globl _printf
	.globl ___assert_PARM_4
	.globl ___assert_PARM_3
	.globl ___assert_PARM_2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
___assert_PARM_2:
	.ds 2
___assert_PARM_3:
	.ds 2
___assert_PARM_4:
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
;Allocation info for local variables in function '__assert'
;------------------------------------------------------------
;functionname              Allocated with name '___assert_PARM_2'
;filename                  Allocated with name '___assert_PARM_3'
;linenumber                Allocated with name '___assert_PARM_4'
;expression                Allocated to registers x h 
;------------------------------------------------------------
;../__assert.c:32: void __assert(const char *expression, const char *functionname, const char *filename, unsigned int linenumber)
;	-----------------------------------------
;	 function __assert
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___assert:
	pshx
	tax
	pulh
;../__assert.c:34: printf("Assert(%s) failed in function %s at line %u in file %s.\n",
	lda	(___assert_PARM_3 + 1)
	psha
	lda	___assert_PARM_3
	psha
	lda	(___assert_PARM_4 + 1)
	psha
	lda	___assert_PARM_4
	psha
	lda	(___assert_PARM_2 + 1)
	psha
	lda	___assert_PARM_2
	psha
	pshx
	pshh
	lda	#___str_0
	psha
	lda	#>___str_0
	psha
	jsr	_printf
	ais	#10
00103$:
	bra	00103$
;../__assert.c:37: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Assert(%s) failed in function %s at line %u in file %s."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
