;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module __memcpy
	.optsdcc -mmcs51 --model-small
	
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
___memcpy_PARM_2:
	.ds 3
___memcpy_PARM_3:
	.ds 2
___memcpy_ret_65536_27:
	.ds 3
___memcpy_sloc0_1_0:
	.ds 3
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
;Allocation info for local variables in function '__memcpy'
;------------------------------------------------------------
;src                       Allocated with name '___memcpy_PARM_2'
;n                         Allocated with name '___memcpy_PARM_3'
;dst                       Allocated to registers r5 r6 r7 
;ret                       Allocated with name '___memcpy_ret_65536_27'
;d                         Allocated to registers 
;s                         Allocated to registers 
;sloc0                     Allocated with name '___memcpy_sloc0_1_0'
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
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	__memcpy.c:33: void *ret = dst;
	mov	___memcpy_ret_65536_27,r5
	mov	(___memcpy_ret_65536_27 + 1),r6
	mov	(___memcpy_ret_65536_27 + 2),r7
;	__memcpy.c:34: char *d = dst;
;	__memcpy.c:35: const char *s = src;
	mov	___memcpy_sloc0_1_0,___memcpy_PARM_2
	mov	(___memcpy_sloc0_1_0 + 1),(___memcpy_PARM_2 + 1)
	mov	(___memcpy_sloc0_1_0 + 2),(___memcpy_PARM_2 + 2)
;	__memcpy.c:37: while (n--)
	mov	r0,___memcpy_PARM_3
	mov	r1,(___memcpy_PARM_3 + 1)
00101$:
	mov	ar3,r0
	mov	ar4,r1
	dec	r0
	cjne	r0,#0xff,00115$
	dec	r1
00115$:
	mov	a,r3
	orl	a,r4
	jz	00103$
;	__memcpy.c:38: *d++ = *s++;
	mov	dpl,___memcpy_sloc0_1_0
	mov	dph,(___memcpy_sloc0_1_0 + 1)
	mov	b,(___memcpy_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	___memcpy_sloc0_1_0,dpl
	mov	(___memcpy_sloc0_1_0 + 1),dph
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	sjmp	00101$
00103$:
;	__memcpy.c:40: return(ret);
	mov	dpl,___memcpy_ret_65536_27
	mov	dph,(___memcpy_ret_65536_27 + 1)
	mov	b,(___memcpy_ret_65536_27 + 2)
;	__memcpy.c:41: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
