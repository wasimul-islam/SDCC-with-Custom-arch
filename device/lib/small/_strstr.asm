;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _strstr
	.optsdcc -mmcs51 --model-small
	
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
_strstr_PARM_2:
	.ds 3
_strstr_cp_65536_27:
	.ds 3
_strstr_s1_65536_27:
	.ds 3
_strstr_s2_65536_27:
	.ds 3
_strstr_sloc0_1_0:
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
;Allocation info for local variables in function 'strstr'
;------------------------------------------------------------
;str2                      Allocated with name '_strstr_PARM_2'
;str1                      Allocated to registers r5 r6 r7 
;cp                        Allocated with name '_strstr_cp_65536_27'
;s1                        Allocated with name '_strstr_s1_65536_27'
;s2                        Allocated with name '_strstr_s2_65536_27'
;sloc0                     Allocated with name '_strstr_sloc0_1_0'
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
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_strstr.c:33: const char *cp = str1;
	mov	_strstr_cp_65536_27,r5
	mov	(_strstr_cp_65536_27 + 1),r6
	mov	(_strstr_cp_65536_27 + 2),r7
;	_strstr.c:37: if (!*str2)
	mov	_strstr_s2_65536_27,_strstr_PARM_2
	mov	(_strstr_s2_65536_27 + 1),(_strstr_PARM_2 + 1)
	mov	(_strstr_s2_65536_27 + 2),(_strstr_PARM_2 + 2)
	mov	dpl,_strstr_s2_65536_27
	mov	dph,(_strstr_s2_65536_27 + 1)
	mov	b,(_strstr_s2_65536_27 + 2)
	lcall	__gptrget
	jnz	00122$
;	_strstr.c:38: return ((char*)str1);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;	_strstr.c:40: while (*cp)
00122$:
	mov	_strstr_s1_65536_27,r5
	mov	(_strstr_s1_65536_27 + 1),r6
	mov	(_strstr_s1_65536_27 + 2),r7
00110$:
	mov	dpl,_strstr_s1_65536_27
	mov	dph,(_strstr_s1_65536_27 + 1)
	mov	b,(_strstr_s1_65536_27 + 2)
	lcall	__gptrget
	jz	00112$
;	_strstr.c:43: s2 = str2;
	mov	r2,_strstr_s2_65536_27
	mov	r3,(_strstr_s2_65536_27 + 1)
	mov	r4,(_strstr_s2_65536_27 + 2)
;	_strstr.c:45: while (*s1 && *s2 && !(*s1-*s2))
	mov	_strstr_sloc0_1_0,_strstr_s1_65536_27
	mov	(_strstr_sloc0_1_0 + 1),(_strstr_s1_65536_27 + 1)
	mov	(_strstr_sloc0_1_0 + 2),(_strstr_s1_65536_27 + 2)
00105$:
	mov	dpl,_strstr_sloc0_1_0
	mov	dph,(_strstr_sloc0_1_0 + 1)
	mov	b,(_strstr_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	jz	00107$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	jz	00107$
	clr	a
	mov	r7,a
	mov	r6,a
	mov	a,r1
	clr	c
	subb	a,r0
	mov	r1,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	orl	a,r1
	jnz	00107$
;	_strstr.c:46: s1++, s2++;
	inc	_strstr_sloc0_1_0
	clr	a
	cjne	a,_strstr_sloc0_1_0,00153$
	inc	(_strstr_sloc0_1_0 + 1)
00153$:
	inc	r2
	cjne	r2,#0x00,00105$
	inc	r3
	sjmp	00105$
00107$:
;	_strstr.c:48: if (!*s2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00109$
;	_strstr.c:49: return ((char*)cp);
	mov	dpl,_strstr_cp_65536_27
	mov	dph,(_strstr_cp_65536_27 + 1)
	mov	b,(_strstr_cp_65536_27 + 2)
	ret
00109$:
;	_strstr.c:51: cp++;
	inc	_strstr_s1_65536_27
	clr	a
	cjne	a,_strstr_s1_65536_27,00156$
	inc	(_strstr_s1_65536_27 + 1)
00156$:
	mov	_strstr_cp_65536_27,_strstr_s1_65536_27
	mov	(_strstr_cp_65536_27 + 1),(_strstr_s1_65536_27 + 1)
	mov	(_strstr_cp_65536_27 + 2),(_strstr_s1_65536_27 + 2)
	sjmp	00110$
00112$:
;	_strstr.c:54: return (NULL) ;
	mov	dptr,#0x0000
	mov	b,#0x00
;	_strstr.c:55: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
