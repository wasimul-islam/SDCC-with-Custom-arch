;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module btowc
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
	.globl _btowc
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_btowc_sloc0_1_0:
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
;Allocation info for local variables in function 'btowc'
;------------------------------------------------------------
;c                         Allocated to registers a x 
;d                         Allocated to registers a 
;sloc0                     Allocated with name '_btowc_sloc0_1_0'
;------------------------------------------------------------
;../btowc.c:35: wint_t btowc(int c)
;	-----------------------------------------
;	 function btowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_btowc:
;../btowc.c:37: char d = (unsigned char)c;
;../btowc.c:38: if(d & 0x80)
	tsta
	bpl     00102$
;../btowc.c:39: return WEOF;
	lda	#0xff
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00102$:
;../btowc.c:40: return d;
	sta	*(_btowc_sloc0_1_0 + 3)
	mov	#0x00,*(_btowc_sloc0_1_0 + 2)
	mov	#0x00,*(_btowc_sloc0_1_0 + 1)
	mov	#0x00,*_btowc_sloc0_1_0
	mov	*_btowc_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(_btowc_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_btowc_sloc0_1_0 + 2)
	lda	*(_btowc_sloc0_1_0 + 3)
;../btowc.c:41: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
