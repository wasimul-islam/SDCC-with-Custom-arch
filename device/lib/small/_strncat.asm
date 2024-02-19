;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strncat
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat_PARM_3
	.globl _strncat_PARM_2
	.globl _strncat
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
_strncat_PARM_2:
	.ds 3
_strncat_PARM_3:
	.ds 2
_strncat_front_65536_26:
	.ds 3
_strncat_start_65536_27:
	.ds 3
_strncat_sloc0_1_0:
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
;Allocation info for local variables in function 'strncat'
;------------------------------------------------------------
;back                      Allocated with name '_strncat_PARM_2'
;count                     Allocated with name '_strncat_PARM_3'
;front                     Allocated with name '_strncat_front_65536_26'
;start                     Allocated with name '_strncat_start_65536_27'
;sloc0                     Allocated with name '_strncat_sloc0_1_0'
;------------------------------------------------------------
;	_strncat.c:31: char * strncat ( char * front, const char * back, size_t count )
;	-----------------------------------------
;	 function strncat
;	-----------------------------------------
_strncat:
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
;	_strncat.c:33: char *start = front;
	mov	_strncat_start_65536_27,r5
	mov	(_strncat_start_65536_27 + 1),r6
	mov	(_strncat_start_65536_27 + 2),r7
;	_strncat.c:35: while (*front++);
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r1
	jnz	00101$
;	_strncat.c:37: front--;
	mov	a,r5
	add	a,#0xff
	mov	_strncat_front_65536_26,a
	mov	a,r6
	addc	a,#0xff
	mov	(_strncat_front_65536_26 + 1),a
	mov	(_strncat_front_65536_26 + 2),r7
;	_strncat.c:39: while (count--)
	mov	r0,_strncat_PARM_2
	mov	r1,(_strncat_PARM_2 + 1)
	mov	r4,(_strncat_PARM_2 + 2)
	mov	_strncat_sloc0_1_0,_strncat_front_65536_26
	mov	(_strncat_sloc0_1_0 + 1),(_strncat_front_65536_26 + 1)
	mov	(_strncat_sloc0_1_0 + 2),(_strncat_front_65536_26 + 2)
	mov	r2,_strncat_PARM_3
	mov	r3,(_strncat_PARM_3 + 1)
00106$:
	mov	ar6,r2
	mov	ar7,r3
	dec	r2
	cjne	r2,#0xff,00138$
	dec	r3
00138$:
	mov	a,r6
	orl	a,r7
	jz	00108$
;	_strncat.c:40: if (!(*front++ = *back++))
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	r0,dpl
	mov	r1,dph
	mov	dpl,_strncat_sloc0_1_0
	mov	dph,(_strncat_sloc0_1_0 + 1)
	mov	b,(_strncat_sloc0_1_0 + 2)
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	_strncat_sloc0_1_0,dpl
	mov	(_strncat_sloc0_1_0 + 1),dph
	mov	_strncat_front_65536_26,_strncat_sloc0_1_0
	mov	(_strncat_front_65536_26 + 1),(_strncat_sloc0_1_0 + 1)
	mov	(_strncat_front_65536_26 + 2),(_strncat_sloc0_1_0 + 2)
	mov	a,r7
	jnz	00106$
;	_strncat.c:41: return(start);
	mov	dpl,_strncat_start_65536_27
	mov	dph,(_strncat_start_65536_27 + 1)
	mov	b,(_strncat_start_65536_27 + 2)
	ret
00108$:
;	_strncat.c:43: *front = '\0';
	mov	dpl,_strncat_front_65536_26
	mov	dph,(_strncat_front_65536_26 + 1)
	mov	b,(_strncat_front_65536_26 + 2)
	clr	a
	lcall	__gptrput
;	_strncat.c:44: return(start);
	mov	dpl,_strncat_start_65536_27
	mov	dph,(_strncat_start_65536_27 + 1)
	mov	b,(_strncat_start_65536_27 + 2)
;	_strncat.c:45: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
