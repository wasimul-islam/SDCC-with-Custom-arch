;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.cs08
	.module mbrtoc16
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
	.globl _mbrtowc
	.globl _mbrtoc16_PARM_4
	.globl _mbrtoc16_PARM_3
	.globl _mbrtoc16_PARM_2
	.globl _mbrtoc16
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_mbrtoc16_sloc0_1_0:
	.ds 2
_mbrtoc16_sloc1_1_0:
	.ds 2
_mbrtoc16_sloc2_1_0:
	.ds 2
_mbrtoc16_sloc3_1_0:
	.ds 1
_mbrtoc16_sloc4_1_0:
	.ds 2
_mbrtoc16_sloc5_1_0:
	.ds 2
_mbrtoc16_sloc6_1_0:
	.ds 2
_mbrtoc16_sloc7_1_0:
	.ds 4
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
_mbrtoc16_PARM_2:
	.ds 2
_mbrtoc16_PARM_3:
	.ds 2
_mbrtoc16_PARM_4:
	.ds 2
_mbrtoc16_pc16_65536_15:
	.ds 2
_mbrtoc16_codepoint_65536_16:
	.ds 4
_mbrtoc16_ret_65536_16:
	.ds 2
_mbrtoc16_sps_65536_16:
	.ds 3
_mbrtoc16_low_surrogate_65536_16:
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
;Allocation info for local variables in function 'mbrtoc16'
;------------------------------------------------------------
;sloc0                     Allocated with name '_mbrtoc16_sloc0_1_0'
;sloc1                     Allocated with name '_mbrtoc16_sloc1_1_0'
;sloc2                     Allocated with name '_mbrtoc16_sloc2_1_0'
;sloc3                     Allocated with name '_mbrtoc16_sloc3_1_0'
;sloc4                     Allocated with name '_mbrtoc16_sloc4_1_0'
;sloc5                     Allocated with name '_mbrtoc16_sloc5_1_0'
;sloc6                     Allocated with name '_mbrtoc16_sloc6_1_0'
;sloc7                     Allocated with name '_mbrtoc16_sloc7_1_0'
;s                         Allocated with name '_mbrtoc16_PARM_2'
;n                         Allocated with name '_mbrtoc16_PARM_3'
;ps                        Allocated with name '_mbrtoc16_PARM_4'
;pc16                      Allocated with name '_mbrtoc16_pc16_65536_15'
;codepoint                 Allocated with name '_mbrtoc16_codepoint_65536_16'
;ret                       Allocated with name '_mbrtoc16_ret_65536_16'
;sps                       Allocated with name '_mbrtoc16_sps_65536_16'
;low_surrogate             Allocated with name '_mbrtoc16_low_surrogate_65536_16'
;------------------------------------------------------------
;../mbrtoc16.c:34: size_t mbrtoc16(char16_t *restrict pc16, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbrtoc16:
	sta	(_mbrtoc16_pc16_65536_15 + 1)
	stx	_mbrtoc16_pc16_65536_15
;../mbrtoc16.c:41: if(!s)
	lda	_mbrtoc16_PARM_2
	ora	(_mbrtoc16_PARM_2 + 1)
	bne	00102$
;../mbrtoc16.c:42: return(mbrtoc16(0, "", 1, ps));
	ldhx	#___str_0
	sthx	_mbrtoc16_PARM_2
	ldhx	#0x0001
	sthx	_mbrtoc16_PARM_3
	clra
	decx
	bra	_mbrtoc16
00102$:
;../mbrtoc16.c:44: if(!ps)
	lda	_mbrtoc16_PARM_4
	ora	(_mbrtoc16_PARM_4 + 1)
	bne	00104$
;../mbrtoc16.c:45: ps = &sps;
	ldhx	#_mbrtoc16_sps_65536_16
	sthx	_mbrtoc16_PARM_4
00104$:
;../mbrtoc16.c:47: if(!ps->c[0] && (ps->c[1] || ps->c[2]))
	ldhx	_mbrtoc16_PARM_4
	sthx	*_mbrtoc16_sloc0_1_0
	ldhx	*_mbrtoc16_sloc0_1_0
	lda	,x
	mov	*_mbrtoc16_sloc0_1_0,*_mbrtoc16_sloc1_1_0
	mov	*(_mbrtoc16_sloc0_1_0 + 1),*(_mbrtoc16_sloc1_1_0 + 1)
	mov	*_mbrtoc16_sloc0_1_0,*_mbrtoc16_sloc2_1_0
	mov	*(_mbrtoc16_sloc0_1_0 + 1),*(_mbrtoc16_sloc2_1_0 + 1)
	tsta
	bne	00108$
	ldhx	*_mbrtoc16_sloc1_1_0
	lda	1,x
	bne	00107$
	ldhx	*_mbrtoc16_sloc2_1_0
	lda	2,x
	beq	00108$
00107$:
;../mbrtoc16.c:50: *pc16 = ps->c[1] + (ps->c[2] << 8);
	ldhx	_mbrtoc16_PARM_4
	sthx	*_mbrtoc16_sloc4_1_0
	sthx	*_mbrtoc16_sloc5_1_0
;../mbrtoc16.c:49: if(pc16)
	lda	_mbrtoc16_pc16_65536_15
	ora	(_mbrtoc16_pc16_65536_15 + 1)
	beq	00106$
;../mbrtoc16.c:50: *pc16 = ps->c[1] + (ps->c[2] << 8);
	ldhx	*_mbrtoc16_sloc4_1_0
	lda	1,x
	sta	*(_mbrtoc16_sloc6_1_0 + 1)
	mov	#0x00,*_mbrtoc16_sloc6_1_0
	ldhx	*_mbrtoc16_sloc5_1_0
	lda	2,x
	clrx
	tax
	clra
	add	*(_mbrtoc16_sloc6_1_0 + 1)
	psha
	txa
	adc	*_mbrtoc16_sloc6_1_0
	tax
	pula
	pshx
	ldhx	_mbrtoc16_pc16_65536_15
	sta	1,x
	pula
	sta	,x
00106$:
;../mbrtoc16.c:51: ps->c[1] = ps->c[2] = 0;
	ldhx	*_mbrtoc16_sloc5_1_0
	clra
	sta	2,x
	ldhx	*_mbrtoc16_sloc4_1_0
	sta	1,x
;../mbrtoc16.c:52: return(-3);
	lda	#0xfd
	ldx	#0xff
	rts
00108$:
;../mbrtoc16.c:55: ret = mbrtowc(&codepoint, s, n, ps);
	ldhx	_mbrtoc16_PARM_2
	sthx	_mbrtowc_PARM_2
	ldhx	_mbrtoc16_PARM_3
	sthx	_mbrtowc_PARM_3
	lda	*_mbrtoc16_sloc0_1_0
	sta	_mbrtowc_PARM_4
	lda	*(_mbrtoc16_sloc0_1_0 + 1)
	sta	(_mbrtowc_PARM_4 + 1)
	lda	#_mbrtoc16_codepoint_65536_16
	ldx	#>_mbrtoc16_codepoint_65536_16
	jsr	_mbrtowc
	sta	(_mbrtoc16_ret_65536_16 + 1)
	stx	_mbrtoc16_ret_65536_16
;../mbrtoc16.c:57: if(ret > MB_LEN_MAX)
	lda	#0x04
	sub	(_mbrtoc16_ret_65536_16 + 1)
	clra
	sbc	_mbrtoc16_ret_65536_16
	bcc	00112$
;../mbrtoc16.c:58: return(ret);
	ldx	_mbrtoc16_ret_65536_16
	lda	(_mbrtoc16_ret_65536_16 + 1)
	rts
00112$:
;../mbrtoc16.c:60: if (codepoint <= 0xffff) // Basic multilingual plane
	lda	#0xff
	sub	(_mbrtoc16_codepoint_65536_16 + 3)
	lda	#0xff
	sbc	(_mbrtoc16_codepoint_65536_16 + 2)
	clra
	sbc	(_mbrtoc16_codepoint_65536_16 + 1)
	clra
	sbc	_mbrtoc16_codepoint_65536_16
	bcs	00116$
;../mbrtoc16.c:62: if(pc16)
	lda	_mbrtoc16_pc16_65536_15
	ora	(_mbrtoc16_pc16_65536_15 + 1)
	beq	00114$
;../mbrtoc16.c:63: *pc16 = codepoint;
	lda	(_mbrtoc16_codepoint_65536_16 + 3)
	ldx	(_mbrtoc16_codepoint_65536_16 + 2)
	pshx
	ldhx	_mbrtoc16_pc16_65536_15
	sta	1,x
	pula
	sta	,x
00114$:
;../mbrtoc16.c:64: return(ret);
	ldx	_mbrtoc16_ret_65536_16
	lda	(_mbrtoc16_ret_65536_16 + 1)
	rts
00116$:
;../mbrtoc16.c:67: codepoint -= 0x100000;
	ldhx	#_mbrtoc16_codepoint_65536_16
	lda	3,x
	sub	#0x00
	sta	3,x
	lda	2,x
	sbc	#0x00
	sta	2,x
	lda	1,x
	sbc	#0x10
	sta	1,x
	lda	,x
	sbc	#0x00
	sta	,x
;../mbrtoc16.c:68: if(pc16)
	lda	_mbrtoc16_pc16_65536_15
	ora	(_mbrtoc16_pc16_65536_15 + 1)
	beq	00118$
;../mbrtoc16.c:69: *pc16 = ((codepoint >> 10) & 0x3ff) + 0xd800;
	lda	(_mbrtoc16_codepoint_65536_16 + 2)
	ldx	(_mbrtoc16_codepoint_65536_16 + 1)
	lsrx
	rora
	lsrx
	rora
	sta	*(_mbrtoc16_sloc7_1_0 + 3)
	stx	*(_mbrtoc16_sloc7_1_0 + 2)
	ldx	_mbrtoc16_codepoint_65536_16
	clra
	lsrx
	rora
	lsrx
	rora
	ora	*(_mbrtoc16_sloc7_1_0 + 2)
	sta	*(_mbrtoc16_sloc7_1_0 + 2)
	stx	*(_mbrtoc16_sloc7_1_0 + 1)
	mov	#0x00,*_mbrtoc16_sloc7_1_0
	lda	*(_mbrtoc16_sloc7_1_0 + 3)
	ldx	*(_mbrtoc16_sloc7_1_0 + 2)
	psha
	txa
	and	#0x03
	tax
	pula
	psha
	txa
	add	#0xd8
	tax
	pula
	pshx
	ldhx	_mbrtoc16_pc16_65536_15
	sta	1,x
	pula
	sta	,x
00118$:
;../mbrtoc16.c:70: low_surrogate = (codepoint & 0x3ff) + 0xdc00;
	lda	(_mbrtoc16_codepoint_65536_16 + 3)
	ldx	(_mbrtoc16_codepoint_65536_16 + 2)
	psha
	txa
	and	#0x03
	tax
	pula
	sta	(_mbrtoc16_low_surrogate_65536_16 + 1)
	txa
	add	#0xdc
	sta	_mbrtoc16_low_surrogate_65536_16
;../mbrtoc16.c:71: ps->c[0] = 0;
	ldhx	*_mbrtoc16_sloc0_1_0
	clra
	sta	,x
;../mbrtoc16.c:72: ps->c[1] = low_surrogate & 0xff;
	lda	(_mbrtoc16_low_surrogate_65536_16 + 1)
	ldhx	*_mbrtoc16_sloc1_1_0
	sta	1,x
;../mbrtoc16.c:73: ps->c[2] = low_surrogate >> 8;
	lda	_mbrtoc16_low_surrogate_65536_16
	ldhx	*_mbrtoc16_sloc2_1_0
	sta	2,x
;../mbrtoc16.c:75: return(ret);
	ldx	_mbrtoc16_ret_65536_16
	lda	(_mbrtoc16_ret_65536_16 + 1)
;../mbrtoc16.c:76: }
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
