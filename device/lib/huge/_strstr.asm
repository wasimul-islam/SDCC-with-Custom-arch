;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strstr
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr_PARM_2
	.globl _strstr
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
_strstr_sloc0_1_0:
	.ds 3
_strstr_sloc1_1_0:
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
_strstr_PARM_2:
	.ds 3
_strstr_str1_65536_26:
	.ds 3
_strstr_cp_65536_27:
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
;Allocation info for local variables in function 'strstr'
;------------------------------------------------------------
;str2                      Allocated with name '_strstr_PARM_2'
;str1                      Allocated with name '_strstr_str1_65536_26'
;cp                        Allocated with name '_strstr_cp_65536_27'
;s1                        Allocated with name '_strstr_s1_65536_27'
;s2                        Allocated with name '_strstr_s2_65536_27'
;sloc0                     Allocated with name '_strstr_sloc0_1_0'
;sloc1                     Allocated with name '_strstr_sloc1_1_0'
;------------------------------------------------------------
;	_strstr.c:31: char *strstr ( const char *str1, const char *str2 )
;	-----------------------------------------
;	 function strstr
;	-----------------------------------------
_strstr:
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
	mov	dptr,#_strstr_str1_65536_26
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strstr.c:33: const char *cp = str1;
	mov	dptr,#_strstr_str1_65536_26
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strstr_cp_65536_27
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strstr.c:37: if (!*str2)
	mov	dptr,#_strstr_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00122$
;	_strstr.c:38: return ((char*)str1);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	__sdcc_banked_ret
;	_strstr.c:40: while (*cp)
00122$:
00110$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00149$
	ljmp	00112$
00149$:
;	_strstr.c:45: while (*s1 && *s2 && !(*s1-*s2))
	mov	_strstr_sloc0_1_0,r5
	mov	(_strstr_sloc0_1_0 + 1),r6
	mov	(_strstr_sloc0_1_0 + 2),r7
	mov	_strstr_sloc1_1_0,r2
	mov	(_strstr_sloc1_1_0 + 1),r3
	mov	(_strstr_sloc1_1_0 + 2),r4
00105$:
	mov	dpl,_strstr_sloc0_1_0
	mov	dph,(_strstr_sloc0_1_0 + 1)
	mov	b,(_strstr_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	jz	00107$
	mov	dpl,_strstr_sloc1_1_0
	mov	dph,(_strstr_sloc1_1_0 + 1)
	mov	b,(_strstr_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	jz	00107$
	push	ar2
	push	ar3
	push	ar4
	clr	a
	mov	r4,a
	mov	r3,a
	mov	a,r1
	clr	c
	subb	a,r0
	mov	r1,a
	mov	a,r4
	subb	a,r3
	orl	a,r1
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00107$
;	_strstr.c:46: s1++, s2++;
	inc	_strstr_sloc0_1_0
	clr	a
	cjne	a,_strstr_sloc0_1_0,00153$
	inc	(_strstr_sloc0_1_0 + 1)
00153$:
	inc	_strstr_sloc1_1_0
	clr	a
	cjne	a,_strstr_sloc1_1_0,00105$
	inc	(_strstr_sloc1_1_0 + 1)
	sjmp	00105$
00107$:
;	_strstr.c:48: if (!*s2)
	mov	dpl,_strstr_sloc1_1_0
	mov	dph,(_strstr_sloc1_1_0 + 1)
	mov	b,(_strstr_sloc1_1_0 + 2)
	lcall	__gptrget
	jnz	00109$
;	_strstr.c:49: return ((char*)cp);
	mov	dptr,#_strstr_cp_65536_27
	movx	a,@dptr
	mov	_strstr_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strstr_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strstr_sloc1_1_0 + 2),a
	mov	dpl,_strstr_sloc1_1_0
	mov	dph,(_strstr_sloc1_1_0 + 1)
	mov	b,(_strstr_sloc1_1_0 + 2)
	sjmp	00113$
00109$:
;	_strstr.c:51: cp++;
	inc	r5
	cjne	r5,#0x00,00156$
	inc	r6
00156$:
	mov	dptr,#_strstr_cp_65536_27
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00110$
00112$:
;	_strstr.c:54: return (NULL) ;
	mov	dptr,#0x0000
	mov	b,#0x00
00113$:
;	_strstr.c:55: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
