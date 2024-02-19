;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _memmove
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memmove_PARM_3
	.globl _memmove_PARM_2
	.globl _memmove
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
_memmove_PARM_2:
	.ds 3
_memmove_PARM_3:
	.ds 2
_memmove_dst_65536_26:
	.ds 3
_memmove_sloc0_1_0:
	.ds 3
_memmove_sloc1_1_0:
	.ds 3
_memmove_sloc2_1_0:
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
;Allocation info for local variables in function 'memmove'
;------------------------------------------------------------
;src                       Allocated with name '_memmove_PARM_2'
;size                      Allocated with name '_memmove_PARM_3'
;dst                       Allocated with name '_memmove_dst_65536_26'
;c                         Allocated to registers r3 r4 
;d                         Allocated to registers 
;s                         Allocated to registers 
;sloc0                     Allocated with name '_memmove_sloc0_1_0'
;sloc1                     Allocated with name '_memmove_sloc1_1_0'
;sloc2                     Allocated with name '_memmove_sloc2_1_0'
;------------------------------------------------------------
;	_memmove.c:35: void *memmove (void *dst, const void *src, size_t size)
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
_memmove:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_memmove_dst_65536_26,dpl
	mov	(_memmove_dst_65536_26 + 1),dph
	mov	(_memmove_dst_65536_26 + 2),b
;	_memmove.c:37: size_t c = size;
	mov	r3,_memmove_PARM_3
	mov	r4,(_memmove_PARM_3 + 1)
;	_memmove.c:38: if (c == 0 || dst == src)
	mov	a,r3
	orl	a,r4
	jz	00101$
	push	_memmove_dst_65536_26
	push	(_memmove_dst_65536_26 + 1)
	push	(_memmove_dst_65536_26 + 2)
	mov	dpl,_memmove_PARM_2
	mov	dph,(_memmove_PARM_2 + 1)
	mov	b,(_memmove_PARM_2 + 2)
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00144$
	sjmp	00102$
00144$:
00101$:
;	_memmove.c:39: return dst;
	mov	dpl,_memmove_dst_65536_26
	mov	dph,(_memmove_dst_65536_26 + 1)
	mov	b,(_memmove_dst_65536_26 + 2)
	ret
00102$:
;	_memmove.c:41: char *d = dst;
	mov	r0,_memmove_dst_65536_26
	mov	r1,(_memmove_dst_65536_26 + 1)
	mov	r2,(_memmove_dst_65536_26 + 2)
;	_memmove.c:42: const char *s = src;
	mov	_memmove_sloc0_1_0,_memmove_PARM_2
	mov	(_memmove_sloc0_1_0 + 1),(_memmove_PARM_2 + 1)
	mov	(_memmove_sloc0_1_0 + 2),(_memmove_PARM_2 + 2)
;	_memmove.c:43: if (s < d) {
	push	ar0
	push	ar1
	push	ar2
	mov	dpl,_memmove_sloc0_1_0
	mov	dph,(_memmove_sloc0_1_0 + 1)
	mov	b,(_memmove_sloc0_1_0 + 2)
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnc	00119$
;	_memmove.c:50: s += c;
	mov	a,r3
	add	a,_memmove_sloc0_1_0
	mov	_memmove_sloc1_1_0,a
	mov	a,r4
	addc	a,(_memmove_sloc0_1_0 + 1)
	mov	(_memmove_sloc1_1_0 + 1),a
	mov	(_memmove_sloc1_1_0 + 2),(_memmove_sloc0_1_0 + 2)
;	_memmove.c:51: d += c;
	mov	a,r3
	add	a,r0
	mov	_memmove_sloc2_1_0,a
	mov	a,r4
	addc	a,r1
	mov	(_memmove_sloc2_1_0 + 1),a
	mov	(_memmove_sloc2_1_0 + 2),r2
;	_memmove.c:52: do {
	mov	ar6,r3
	mov	ar7,r4
00104$:
;	_memmove.c:53: *--d = *--s;
	dec	_memmove_sloc2_1_0
	mov	a,#0xff
	cjne	a,_memmove_sloc2_1_0,00146$
	dec	(_memmove_sloc2_1_0 + 1)
00146$:
	dec	_memmove_sloc1_1_0
	mov	a,#0xff
	cjne	a,_memmove_sloc1_1_0,00147$
	dec	(_memmove_sloc1_1_0 + 1)
00147$:
	mov	dpl,_memmove_sloc1_1_0
	mov	dph,(_memmove_sloc1_1_0 + 1)
	mov	b,(_memmove_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
	mov	dpl,_memmove_sloc2_1_0
	mov	dph,(_memmove_sloc2_1_0 + 1)
	mov	b,(_memmove_sloc2_1_0 + 2)
	lcall	__gptrput
;	_memmove.c:54: } while (--c);
	dec	r6
	cjne	r6,#0xff,00148$
	dec	r7
00148$:
	mov	a,r6
	orl	a,r7
	jnz	00104$
;	_memmove.c:59: do {
	sjmp	00112$
00119$:
	mov	r5,_memmove_sloc0_1_0
	mov	r6,(_memmove_sloc0_1_0 + 1)
	mov	r7,(_memmove_sloc0_1_0 + 2)
	mov	_memmove_sloc2_1_0,r3
	mov	(_memmove_sloc2_1_0 + 1),r4
00107$:
;	_memmove.c:60: *d++ = *s++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	r0,dpl
	mov	r1,dph
;	_memmove.c:61: } while (--c);
	dec	_memmove_sloc2_1_0
	mov	a,#0xff
	cjne	a,_memmove_sloc2_1_0,00150$
	dec	(_memmove_sloc2_1_0 + 1)
00150$:
	mov	a,_memmove_sloc2_1_0
	orl	a,(_memmove_sloc2_1_0 + 1)
	jnz	00107$
00112$:
;	_memmove.c:65: return dst;
	mov	dpl,_memmove_dst_65536_26
	mov	dph,(_memmove_dst_65536_26 + 1)
	mov	b,(_memmove_dst_65536_26 + 2)
;	_memmove.c:66: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
