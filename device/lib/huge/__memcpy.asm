;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __memcpy
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___memcpy_PARM_3
	.globl ___memcpy_PARM_2
	.globl ___memcpy
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
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
___memcpy_sloc0_1_0:
	.ds 3
___memcpy_sloc1_1_0:
	.ds 2
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
___memcpy_PARM_2:
	.ds 3
___memcpy_PARM_3:
	.ds 2
___memcpy_dst_65536_26:
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
;Allocation info for local variables in function '__memcpy'
;------------------------------------------------------------
;src                       Allocated with name '___memcpy_PARM_2'
;n                         Allocated with name '___memcpy_PARM_3'
;dst                       Allocated with name '___memcpy_dst_65536_26'
;ret                       Allocated with name '___memcpy_ret_65536_27'
;d                         Allocated with name '___memcpy_d_65536_27'
;s                         Allocated with name '___memcpy_s_65536_27'
;sloc0                     Allocated with name '___memcpy_sloc0_1_0'
;sloc1                     Allocated with name '___memcpy_sloc1_1_0'
;------------------------------------------------------------
;	__memcpy.c:31: void *__memcpy (void *dst, const void *src, size_t n)
;	-----------------------------------------
;	 function __memcpy
;	-----------------------------------------
___memcpy:
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
	mov	dptr,#___memcpy_dst_65536_26
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	__memcpy.c:33: void *ret = dst;
	mov	dptr,#___memcpy_dst_65536_26
	movx	a,@dptr
	mov	___memcpy_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___memcpy_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(___memcpy_sloc0_1_0 + 2),a
;	__memcpy.c:34: char *d = dst;
	mov	r2,___memcpy_sloc0_1_0
	mov	r3,(___memcpy_sloc0_1_0 + 1)
	mov	r4,(___memcpy_sloc0_1_0 + 2)
;	__memcpy.c:35: const char *s = src;
	mov	dptr,#___memcpy_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	__memcpy.c:37: while (n--)
	mov	dptr,#___memcpy_PARM_3
	movx	a,@dptr
	mov	___memcpy_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(___memcpy_sloc1_1_0 + 1),a
00101$:
	mov	r5,___memcpy_sloc1_1_0
	mov	r6,(___memcpy_sloc1_1_0 + 1)
	dec	___memcpy_sloc1_1_0
	mov	a,#0xff
	cjne	a,___memcpy_sloc1_1_0,00115$
	dec	(___memcpy_sloc1_1_0 + 1)
00115$:
	mov	a,r5
	orl	a,r6
	jz	00103$
;	__memcpy.c:38: *d++ = *s++;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	mov	r0,dpl
	mov	r1,dph
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	sjmp	00101$
00103$:
;	__memcpy.c:40: return(ret);
	mov	dpl,___memcpy_sloc0_1_0
	mov	dph,(___memcpy_sloc0_1_0 + 1)
	mov	b,(___memcpy_sloc0_1_0 + 2)
;	__memcpy.c:41: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
