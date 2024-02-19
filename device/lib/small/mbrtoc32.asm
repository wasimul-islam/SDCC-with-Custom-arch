;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtoc32
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
	.globl _mbrtoc32_PARM_4
	.globl _mbrtoc32_PARM_3
	.globl _mbrtoc32_PARM_2
	.globl _mbrtoc32
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_mbrtoc32_sps_65536_16:
	.ds 3
_mbrtoc32_PARM_2:
	.ds 3
_mbrtoc32_PARM_3:
	.ds 2
_mbrtoc32_PARM_4:
	.ds 3
_mbrtoc32_wc_65536_16:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
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
;Allocation info for local variables in function 'mbrtoc32'
;------------------------------------------------------------
;sps                       Allocated with name '_mbrtoc32_sps_65536_16'
;s                         Allocated with name '_mbrtoc32_PARM_2'
;n                         Allocated with name '_mbrtoc32_PARM_3'
;ps                        Allocated with name '_mbrtoc32_PARM_4'
;pc32                      Allocated to registers r5 r6 r7 
;wc                        Allocated with name '_mbrtoc32_wc_65536_16'
;ret                       Allocated to registers r3 r4 
;------------------------------------------------------------
;	mbrtoc32.c:34: size_t mbrtoc32(char32_t *restrict pc32, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc32
;	-----------------------------------------
_mbrtoc32:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	mbrtoc32.c:40: if(!ps)
	mov	a,_mbrtoc32_PARM_4
	orl	a,(_mbrtoc32_PARM_4 + 1)
;	mbrtoc32.c:41: ps = &sps;
	jnz	00102$
	mov	_mbrtoc32_PARM_4,#_mbrtoc32_sps_65536_16
	mov	(_mbrtoc32_PARM_4 + 1),a
	mov	(_mbrtoc32_PARM_4 + 2),#0x40
00102$:
;	mbrtoc32.c:43: if(!pc32)
	mov	a,r5
	orl	a,r6
	jnz	00104$
;	mbrtoc32.c:44: return(mbrtowc(0, s, n, ps));
	mov	_mbrtowc_PARM_2,_mbrtoc32_PARM_2
	mov	(_mbrtowc_PARM_2 + 1),(_mbrtoc32_PARM_2 + 1)
	mov	(_mbrtowc_PARM_2 + 2),(_mbrtoc32_PARM_2 + 2)
	mov	_mbrtowc_PARM_3,_mbrtoc32_PARM_3
	mov	(_mbrtowc_PARM_3 + 1),(_mbrtoc32_PARM_3 + 1)
	mov	_mbrtowc_PARM_4,_mbrtoc32_PARM_4
	mov	(_mbrtowc_PARM_4 + 1),(_mbrtoc32_PARM_4 + 1)
	mov	(_mbrtowc_PARM_4 + 2),(_mbrtoc32_PARM_4 + 2)
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	_mbrtowc
00104$:
;	mbrtoc32.c:46: ret = mbrtowc(&wc, s, n, ps);
	mov	_mbrtowc_PARM_2,_mbrtoc32_PARM_2
	mov	(_mbrtowc_PARM_2 + 1),(_mbrtoc32_PARM_2 + 1)
	mov	(_mbrtowc_PARM_2 + 2),(_mbrtoc32_PARM_2 + 2)
	mov	_mbrtowc_PARM_3,_mbrtoc32_PARM_3
	mov	(_mbrtowc_PARM_3 + 1),(_mbrtoc32_PARM_3 + 1)
	mov	_mbrtowc_PARM_4,_mbrtoc32_PARM_4
	mov	(_mbrtowc_PARM_4 + 1),(_mbrtoc32_PARM_4 + 1)
	mov	(_mbrtowc_PARM_4 + 2),(_mbrtoc32_PARM_4 + 2)
	mov	dptr,#_mbrtoc32_wc_65536_16
	mov	b,#0x40
	push	ar7
	push	ar6
	push	ar5
	lcall	_mbrtowc
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	mbrtoc32.c:48: if(ret <= MB_LEN_MAX)
	clr	c
	mov	a,#0x04
	subb	a,r3
	clr	a
	subb	a,r4
	jc	00106$
;	mbrtoc32.c:49: *pc32 = wc;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_mbrtoc32_wc_65536_16
	lcall	__gptrput
	inc	dptr
	mov	a,(_mbrtoc32_wc_65536_16 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_mbrtoc32_wc_65536_16 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_mbrtoc32_wc_65536_16 + 3)
	lcall	__gptrput
00106$:
;	mbrtoc32.c:51: return(ret);
	mov	dpl,r3
	mov	dph,r4
;	mbrtoc32.c:52: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
