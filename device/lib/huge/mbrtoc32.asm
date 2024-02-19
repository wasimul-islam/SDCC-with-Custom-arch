;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtoc32
	.optsdcc -mmcs51 --model-huge
	
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
_mbrtoc32_sloc0_1_0:
	.ds 2
_mbrtoc32_sloc1_1_0:
	.ds 3
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
_mbrtoc32_PARM_2:
	.ds 3
_mbrtoc32_PARM_3:
	.ds 2
_mbrtoc32_PARM_4:
	.ds 3
_mbrtoc32_pc32_65536_15:
	.ds 3
_mbrtoc32_wc_65536_16:
	.ds 4
_mbrtoc32_sps_65536_16:
	.ds 3
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
;sloc0                     Allocated with name '_mbrtoc32_sloc0_1_0'
;sloc1                     Allocated with name '_mbrtoc32_sloc1_1_0'
;s                         Allocated with name '_mbrtoc32_PARM_2'
;n                         Allocated with name '_mbrtoc32_PARM_3'
;ps                        Allocated with name '_mbrtoc32_PARM_4'
;pc32                      Allocated with name '_mbrtoc32_pc32_65536_15'
;wc                        Allocated with name '_mbrtoc32_wc_65536_16'
;ret                       Allocated with name '_mbrtoc32_ret_65536_16'
;sps                       Allocated with name '_mbrtoc32_sps_65536_16'
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
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_mbrtoc32_pc32_65536_15
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	mbrtoc32.c:40: if(!ps)
	mov	dptr,#_mbrtoc32_PARM_4
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	mbrtoc32.c:41: ps = &sps;
	mov	dptr,#_mbrtoc32_PARM_4
	mov	a,#_mbrtoc32_sps_65536_16
	movx	@dptr,a
	mov	a,#(_mbrtoc32_sps_65536_16 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00102$:
;	mbrtoc32.c:43: if(!pc32)
	mov	dptr,#_mbrtoc32_pc32_65536_15
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mbrtoc32_pc32_65536_15
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00104$
;	mbrtoc32.c:44: return(mbrtowc(0, s, n, ps));
	mov	dptr,#_mbrtoc32_PARM_2
	movx	a,@dptr
	mov	_mbrtoc32_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mbrtoc32_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_mbrtoc32_sloc1_1_0 + 2),a
	mov	dptr,#_mbrtoc32_PARM_3
	movx	a,@dptr
	mov	_mbrtoc32_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mbrtoc32_sloc0_1_0 + 1),a
	mov	dptr,#_mbrtoc32_PARM_4
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mbrtowc_PARM_2
	mov	a,_mbrtoc32_sloc1_1_0
	movx	@dptr,a
	mov	a,(_mbrtoc32_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_mbrtoc32_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mbrtowc_PARM_3
	mov	a,_mbrtoc32_sloc0_1_0
	movx	@dptr,a
	mov	a,(_mbrtoc32_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mbrtowc_PARM_4
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x00
	mov	r0,#_mbrtowc
	mov	r1,#(_mbrtowc >> 8)
	mov	r2,#(_mbrtowc >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov  r4,dph
	ljmp	__sdcc_banked_ret
00104$:
;	mbrtoc32.c:46: ret = mbrtowc(&wc, s, n, ps);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_mbrtoc32_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mbrtoc32_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_mbrtoc32_PARM_4
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mbrtowc_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mbrtowc_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mbrtowc_PARM_4
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mbrtoc32_wc_65536_16
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_mbrtowc
	mov	r1,#(_mbrtowc >> 8)
	mov	r2,#(_mbrtowc >> 16)
	lcall	__sdcc_banked_call
	mov	_mbrtoc32_sloc1_1_0,dpl
	mov	(_mbrtoc32_sloc1_1_0 + 1),dph
	pop	ar5
	pop	ar6
	pop	ar7
;	mbrtoc32.c:48: if(ret <= MB_LEN_MAX)
	clr	c
	mov	a,#0x04
	subb	a,_mbrtoc32_sloc1_1_0
	clr	a
	subb	a,(_mbrtoc32_sloc1_1_0 + 1)
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00106$
;	mbrtoc32.c:49: *pc32 = wc;
	mov	dptr,#_mbrtoc32_wc_65536_16
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00106$:
;	mbrtoc32.c:51: return(ret);
	mov	dpl,_mbrtoc32_sloc1_1_0
	mov	dph,(_mbrtoc32_sloc1_1_0 + 1)
;	mbrtoc32.c:52: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
