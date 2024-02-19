;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module memccpy
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memccpy_PARM_4
	.globl _memccpy_PARM_3
	.globl _memccpy_PARM_2
	.globl _memccpy
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
_memccpy_sloc0_1_0:
	.ds 2
_memccpy_sloc1_1_0:
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
_memccpy_PARM_2:
	.ds 3
_memccpy_PARM_3:
	.ds 2
_memccpy_PARM_4:
	.ds 2
_memccpy_dst_65536_26:
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
;Allocation info for local variables in function 'memccpy'
;------------------------------------------------------------
;src                       Allocated with name '_memccpy_PARM_2'
;c                         Allocated with name '_memccpy_PARM_3'
;n                         Allocated with name '_memccpy_PARM_4'
;dst                       Allocated with name '_memccpy_dst_65536_26'
;d                         Allocated with name '_memccpy_d_65536_27'
;s                         Allocated with name '_memccpy_s_65536_27'
;sloc0                     Allocated with name '_memccpy_sloc0_1_0'
;sloc1                     Allocated with name '_memccpy_sloc1_1_0'
;------------------------------------------------------------
;	memccpy.c:31: void *memccpy (void *restrict dst, const void *restrict src, int c, size_t n)
;	-----------------------------------------
;	 function memccpy
;	-----------------------------------------
_memccpy:
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
	mov	dptr,#_memccpy_dst_65536_26
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	memccpy.c:33: char *d = dst;
	mov	dptr,#_memccpy_dst_65536_26
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	memccpy.c:34: const char *s = src;
	mov	dptr,#_memccpy_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	memccpy.c:36: while (n--)
	mov	dptr,#_memccpy_PARM_3
	movx	a,@dptr
	mov	_memccpy_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_memccpy_sloc1_1_0 + 1),a
	mov	dptr,#_memccpy_PARM_4
	movx	a,@dptr
	mov	_memccpy_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_memccpy_sloc0_1_0 + 1),a
00103$:
	mov	r0,_memccpy_sloc0_1_0
	mov	r1,(_memccpy_sloc0_1_0 + 1)
	dec	_memccpy_sloc0_1_0
	mov	a,#0xff
	cjne	a,_memccpy_sloc0_1_0,00120$
	dec	(_memccpy_sloc0_1_0 + 1)
00120$:
	mov	a,r0
	orl	a,r1
	jz	00105$
;	memccpy.c:37: if ((*d++ = *s++) == (unsigned char)c)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	r0,_memccpy_sloc1_1_0
	mov	a,r1
	cjne	a,ar0,00103$
;	memccpy.c:38: return (d);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
00105$:
;	memccpy.c:40: return (0);
	mov	dptr,#0x0000
	mov	b,#0x00
;	memccpy.c:41: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
