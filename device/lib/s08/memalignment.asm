;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module memalignment
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
	.globl _memalignment
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
_memalignment_ip_65536_37:
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
;Allocation info for local variables in function 'memalignment'
;------------------------------------------------------------
;p                         Allocated to registers a x 
;ip                        Allocated with name '_memalignment_ip_65536_37'
;------------------------------------------------------------
;../memalignment.c:33: size_t memalignment(const void *p)
;	-----------------------------------------
;	 function memalignment
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memalignment:
;../memalignment.c:35: intptr_t ip = (intptr_t)p;
	sta	(_memalignment_ip_65536_37 + 1)
	stx	_memalignment_ip_65536_37
;../memalignment.c:36: return(ip & -ip);
	clra
	sub	(_memalignment_ip_65536_37 + 1)
	psha
	clra
	sbc	_memalignment_ip_65536_37
	tax
	pula
	and	(_memalignment_ip_65536_37 + 1)
	psha
	txa
	and	_memalignment_ip_65536_37
	tax
	pula
;../memalignment.c:37: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
