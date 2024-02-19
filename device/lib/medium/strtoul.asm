;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtoul
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
	.globl _strtoul_PARM_3
	.globl _strtoul_PARM_2
	.globl _strtoul
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
_strtoul_sloc0_1_0:
	.ds 1
_strtoul_sloc1_1_0:
	.ds 3
_strtoul_sloc2_1_0:
	.ds 8
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
_strtoul_sloc3_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
__isdigit_PARM_2:
	.ds 1
_strtoul_PARM_2:
	.ds 3
_strtoul_PARM_3:
	.ds 2
_strtoul_nptr_65536_139:
	.ds 3
_strtoul_ret_65536_140:
	.ds 4
_strtoul_range_error_65536_140:
	.ds 1
_strtoul_neg_65536_140:
	.ds 1
_strtoul___2621440012_262144_147:
	.ds 1
_strtoul___2621440014_262144_155:
	.ds 8
_strtoul_result_393216_157:
	.ds 8
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
;Allocation info for local variables in function '_isdigit'
;------------------------------------------------------------
;	strtoul.c:40: static signed char _isdigit(const char c, unsigned char base)
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
__isdigit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	strtoul.c:44: if (c >= '0' && c <= '9')
	cjne	r7,#0x30,00145$
00145$:
	jc	00110$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00110$
;	strtoul.c:45: v = c - '0';
	mov	ar6,r7
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	sjmp	00111$
00110$:
;	strtoul.c:46: else if (c >= 'a' && c <='z')
	cjne	r7,#0x61,00148$
00148$:
	jc	00106$
	mov	a,r7
	add	a,#0xff - 0x7a
	jc	00106$
;	strtoul.c:47: v = c - 'a' + 10;
	mov	ar5,r7
	mov	a,#0xa9
	add	a,r5
	mov	r6,a
	sjmp	00111$
00106$:
;	strtoul.c:48: else if (c >= 'A' && c <='Z')
	cjne	r7,#0x41,00151$
00151$:
	jc	00102$
	mov	a,r7
	add	a,#0xff - 0x5a
	jc	00102$
;	strtoul.c:49: v = c - 'A' + 10;
	mov	a,#0xc9
	add	a,r7
	mov	r6,a
	sjmp	00111$
00102$:
;	strtoul.c:51: return (-1);
	mov	dpl,#0xff
	ret
00111$:
;	strtoul.c:53: if (v >= base)
	mov	r0,#__isdigit_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r6
	subb	a,b
	jc	00114$
;	strtoul.c:54: return (-1);
	mov	dpl,#0xff
	ret
00114$:
;	strtoul.c:56: return (v);
	mov	dpl,r6
;	strtoul.c:57: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'strtoul'
;------------------------------------------------------------
;sloc0                     Allocated with name '_strtoul_sloc0_1_0'
;sloc1                     Allocated with name '_strtoul_sloc1_1_0'
;sloc2                     Allocated with name '_strtoul_sloc2_1_0'
;------------------------------------------------------------
;	strtoul.c:59: unsigned long int strtoul(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtoul
;	-----------------------------------------
_strtoul:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	r0,#_strtoul_nptr_65536_139
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
;	strtoul.c:63: bool range_error = false;
	mov	r0,#_strtoul_range_error_65536_140
	clr	a
	movx	@r0,a
;	strtoul.c:64: bool neg = false;
	mov	r0,#_strtoul_neg_65536_140
	movx	@r0,a
;	strtoul.c:66: while (isblank (*ptr))
	mov	r0,#_strtoul_nptr_65536_139
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	_strtoul_sloc0_1_0,r7
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	mov	a,#0x20
	cjne	a,_strtoul_sloc0_1_0,00214$
	sjmp	00141$
00214$:
	mov	a,#0x09
	cjne	a,_strtoul_sloc0_1_0,00163$
00141$:
;	strtoul.c:67: ptr++;
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00163$:
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	strtoul.c:70: switch(*ptr)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2b,00218$
	sjmp	00105$
00218$:
	cjne	r4,#0x2d,00106$
;	strtoul.c:73: neg = true;
	mov	r0,#_strtoul_neg_65536_140
	mov	a,#0x01
	movx	@r0,a
;	strtoul.c:74: case '+':
00105$:
;	strtoul.c:75: ptr++;
	inc	r5
	cjne	r5,#0x00,00221$
	inc	r6
00221$:
;	strtoul.c:76: }
00106$:
;	strtoul.c:79: if (!base)
	mov	r0,#_strtoul_PARM_3
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00222$
	ljmp	00119$
00222$:
;	strtoul.c:81: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
	mov	r0,#_strncmp_PARM_2
	mov	a,#___str_0
	movx	@r0,a
	mov	a,#(___str_0 >> 8)
	inc	r0
	movx	@r0,a
	mov	a,#0x80
	inc	r0
	movx	@r0,a
	mov	r0,#_strncmp_PARM_3
	mov	a,#0x02
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00110$
	mov	r0,#_strncmp_PARM_2
	mov	a,#___str_1
	movx	@r0,a
	mov	a,#(___str_1 >> 8)
	inc	r0
	movx	@r0,a
	mov	a,#0x80
	inc	r0
	movx	@r0,a
	mov	r0,#_strncmp_PARM_3
	mov	a,#0x02
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00111$
00110$:
;	strtoul.c:83: base = 16;
	mov	r0,#_strtoul_PARM_3
	mov	a,#0x10
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
;	strtoul.c:84: ptr += 2;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	ljmp	00120$
00111$:
;	strtoul.c:86: else if (*ptr == '0')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x30,00108$
;	strtoul.c:88: base = 8;
	mov	r0,#_strtoul_PARM_3
	mov	a,#0x08
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
;	strtoul.c:89: ptr++;
	inc	r5
	cjne	r5,#0x00,00227$
	inc	r6
00227$:
	ljmp	00120$
00108$:
;	strtoul.c:92: base = 10;
	mov	r0,#_strtoul_PARM_3
	mov	a,#0x0a
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	sjmp	00120$
00119$:
;	strtoul.c:95: else if (base == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
	mov	r0,#_strtoul_PARM_3
	movx	a,@r0
	cjne	a,#0x10,00228$
	inc	r0
	movx	a,@r0
	jz	00229$
00228$:
	sjmp	00120$
00229$:
	mov	r0,#_strncmp_PARM_2
	mov	a,#___str_0
	movx	@r0,a
	mov	a,#(___str_0 >> 8)
	inc	r0
	movx	@r0,a
	mov	a,#0x80
	inc	r0
	movx	@r0,a
	mov	r0,#_strncmp_PARM_3
	mov	a,#0x02
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00114$
	mov	r0,#_strncmp_PARM_2
	mov	a,#___str_1
	movx	@r0,a
	mov	a,#(___str_1 >> 8)
	inc	r0
	movx	@r0,a
	mov	a,#0x80
	inc	r0
	movx	@r0,a
	mov	r0,#_strncmp_PARM_3
	mov	a,#0x02
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00120$
00114$:
;	strtoul.c:96: ptr += 2;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
00120$:
;	strtoul.c:100: if (_isdigit (*ptr, base) < 0)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r0,#_strtoul_PARM_3
	movx	a,@r0
	mov	r3,a
	mov	r0,#__isdigit_PARM_2
	movx	@r0,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	__isdigit
	mov	r4,dpl
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	jnb	acc.7,00124$
;	strtoul.c:102: if (endptr)
	mov	r0,#_strtoul_PARM_2
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00122$
;	strtoul.c:103: *endptr = (char*)nptr;
	mov	r0,#_strtoul_PARM_2
	movx	a,@r0
	mov	_strtoul_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_strtoul_sloc1_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_strtoul_sloc1_1_0 + 2),a
	mov	dpl,_strtoul_sloc1_1_0
	mov	dph,(_strtoul_sloc1_1_0 + 1)
	mov	b,(_strtoul_sloc1_1_0 + 2)
	mov	r0,#_strtoul_nptr_65536_139
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	movx	a,@r0
	lcall	__gptrput
00122$:
;	strtoul.c:104: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00124$:
;	strtoul.c:107: for (ret = 0;; ptr++)
	mov	r0,#_strtoul_ret_65536_140
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	_strtoul_sloc1_1_0,r5
	mov	(_strtoul_sloc1_1_0 + 1),r6
	mov	(_strtoul_sloc1_1_0 + 2),r7
00136$:
;	strtoul.c:110: signed char digit = _isdigit (*ptr, base);
	mov	dpl,_strtoul_sloc1_1_0
	mov	dph,(_strtoul_sloc1_1_0 + 1)
	mov	b,(_strtoul_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	mov	r0,#__isdigit_PARM_2
	mov	a,r3
	movx	@r0,a
	mov	dpl,r4
	push	ar3
	lcall	__isdigit
	mov	r2,dpl
	pop	ar3
;	strtoul.c:112: if (digit < 0)
	mov	a,r2
	jnb	acc.7,00234$
	ljmp	00127$
00234$:
;	strtoul.c:117: range_error |= ckd_mul(&ret, ret, base);
	push	ar3
	mov	r0,#_strtoul_PARM_3
	mov	r1,#__mullonglong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	movx	a,@r0
	rlc	a
	subb	a,acc
	inc	r1
	movx	@r1,a
	inc	r1
	movx	@r1,a
	inc	r1
	movx	@r1,a
	inc	r1
	movx	@r1,a
	inc	r1
	movx	@r1,a
	inc	r1
	movx	@r1,a
	mov	r0,#_strtoul_ret_65536_140
	mov	r1,#_strtoul___2621440014_262144_155
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	clr	a
	inc	r1
	movx	@r1,a
	inc	r1
	movx	@r1,a
	inc	r1
	movx	@r1,a
	inc	r1
	movx	@r1,a
;	../../device/include/stdckdint.h:76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
	push	ar3
	push	ar2
	mov	r0,#_strtoul___2621440014_262144_155
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	pop	acc
	lcall	__mullonglong
	mov	r0,#_strtoul_result_393216_157
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,r4
	inc	r0
	movx	@r0,a
	mov	a,r5
	inc	r0
	movx	@r0,a
	mov	a,r6
	inc	r0
	movx	@r0,a
	mov	a,r7
	inc	r0
	movx	@r0,a
	pop	ar2
	pop	ar3
	mov	r0,#_strtoul_result_393216_157
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#_strtoul_ret_65536_140
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	mov	_strtoul_sloc2_1_0,r4
	mov	(_strtoul_sloc2_1_0 + 1),r5
	mov	(_strtoul_sloc2_1_0 + 2),r6
	mov	(_strtoul_sloc2_1_0 + 3),r7
	mov	(_strtoul_sloc2_1_0 + 4),#0x00
	mov	(_strtoul_sloc2_1_0 + 5),#0x00
	mov	(_strtoul_sloc2_1_0 + 6),#0x00
	mov	(_strtoul_sloc2_1_0 + 7),#0x00
	mov	r0,#_strtoul_result_393216_157
	movx	a,@r0
	cjne	a,_strtoul_sloc2_1_0,00235$
	inc	r0
	movx	a,@r0
	cjne	a,(_strtoul_sloc2_1_0 + 1),00235$
	inc	r0
	movx	a,@r0
	cjne	a,(_strtoul_sloc2_1_0 + 2),00235$
	inc	r0
	movx	a,@r0
	cjne	a,(_strtoul_sloc2_1_0 + 3),00235$
	inc	r0
	movx	a,@r0
	cjne	a,(_strtoul_sloc2_1_0 + 4),00235$
	inc	r0
	movx	a,@r0
	cjne	a,(_strtoul_sloc2_1_0 + 5),00235$
	inc	r0
	movx	a,@r0
	cjne	a,(_strtoul_sloc2_1_0 + 6),00235$
	inc	r0
	movx	a,@r0
	cjne	a,(_strtoul_sloc2_1_0 + 7),00235$
	setb	c
	sjmp	00236$
00235$:
	clr	c
00236$:
	mov	_strtoul_sloc3_1_0,c
	mov	r0,#_strtoul___2621440012_262144_147
	cpl	c
	clr	a
	rlc	a
	movx	@r0,a
;	strtoul.c:117: range_error |= ckd_mul(&ret, ret, base);
	mov	r0,#_strtoul_range_error_65536_140
	mov	r1,#_strtoul___2621440012_262144_147
	movx	a,@r0
	mov	b,a
	movx	a,@r1
	orl	a,b
	movx	@r0,a
;	strtoul.c:125: ret += (unsigned char)digit;
	mov	ar4,r2
	mov	r7,#0x00
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r0,#_strtoul_ret_65536_140
	movx	a,@r0
	add	a,r4
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r5
	movx	@r0,a
;	strtoul.c:107: for (ret = 0;; ptr++)
	inc	_strtoul_sloc1_1_0
	clr	a
	cjne	a,_strtoul_sloc1_1_0,00237$
	inc	(_strtoul_sloc1_1_0 + 1)
00237$:
	pop	ar3
	ljmp	00136$
00127$:
;	strtoul.c:128: if (endptr)
	mov	r0,#_strtoul_PARM_2
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00129$
;	strtoul.c:129: *endptr = (char*)ptr;
	mov	r0,#_strtoul_PARM_2
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_strtoul_sloc1_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtoul_sloc1_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtoul_sloc1_1_0 + 2)
	lcall	__gptrput
00129$:
;	strtoul.c:131: if (range_error)
	mov	r0,#_strtoul_range_error_65536_140
	movx	a,@r0
	jz	00131$
;	strtoul.c:133: errno = ERANGE;
	mov	r0,#_errno
	mov	a,#0x22
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
;	strtoul.c:134: return (ULONG_MAX);
	mov	dptr,#0xffff
	mov	a,#0xff
	mov	b,a
	ret
00131$:
;	strtoul.c:137: return (neg ? -ret : ret);
	mov	r0,#_strtoul_neg_65536_140
	movx	a,@r0
	jz	00143$
	mov	r0,#_strtoul_ret_65536_140
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	mov	r4,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r5,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r6,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r7,a
	sjmp	00144$
00143$:
	mov	r0,#_strtoul_ret_65536_140
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
00144$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	strtoul.c:138: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "0X"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
