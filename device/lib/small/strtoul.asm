;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtoul
	.optsdcc -mmcs51 --model-small
	
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
_strtoul_digit_196608_147:
	.ds 1
_strtoul___2621440014_262144_155:
	.ds 8
_strtoul_result_393216_157:
	.ds 8
_strtoul_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
__isdigit_PARM_2:
	.ds 1
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
_strtoul_sloc1_1_0:
	.ds 1
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
;Allocation info for local variables in function '_isdigit'
;------------------------------------------------------------
;base                      Allocated with name '__isdigit_PARM_2'
;c                         Allocated to registers r7 
;v                         Allocated to registers r6 
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
	clr	c
	mov	a,r6
	subb	a,__isdigit_PARM_2
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
;endptr                    Allocated with name '_strtoul_PARM_2'
;base                      Allocated with name '_strtoul_PARM_3'
;nptr                      Allocated with name '_strtoul_nptr_65536_139'
;__1310720004              Allocated to registers 
;ptr                       Allocated to registers r0 r1 r7 
;ret                       Allocated with name '_strtoul_ret_65536_140'
;range_error               Allocated with name '_strtoul_range_error_65536_140'
;neg                       Allocated with name '_strtoul_neg_65536_140'
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__2621440017              Allocated with name '_strtoul___2621440017_262144_147'
;__2621440012              Allocated with name '_strtoul___2621440012_262144_147'
;__2621440007              Allocated with name '_strtoul___2621440007_262144_147'
;oldret                    Allocated to registers 
;digit                     Allocated with name '_strtoul_digit_196608_147'
;__2621440008              Allocated with name '_strtoul___2621440008_262144_152'
;__2621440009              Allocated with name '_strtoul___2621440009_262144_152'
;__2621440010              Allocated with name '_strtoul___2621440010_262144_152'
;r                         Allocated with name '_strtoul_r_327680_153'
;a                         Allocated with name '_strtoul_a_327680_153'
;b                         Allocated with name '_strtoul_b_327680_153'
;result                    Allocated with name '_strtoul_result_393216_154'
;__2621440013              Allocated to registers 
;__2621440014              Allocated with name '_strtoul___2621440014_262144_155'
;__2621440015              Allocated to registers 
;r                         Allocated to registers 
;a                         Allocated to registers 
;b                         Allocated to registers 
;result                    Allocated with name '_strtoul_result_393216_157'
;__2621440018              Allocated with name '_strtoul___2621440018_262144_158'
;__2621440019              Allocated with name '_strtoul___2621440019_262144_158'
;__2621440020              Allocated with name '_strtoul___2621440020_262144_158'
;r                         Allocated with name '_strtoul_r_327680_159'
;a                         Allocated with name '_strtoul_a_327680_159'
;b                         Allocated with name '_strtoul_b_327680_159'
;result                    Allocated with name '_strtoul_result_393216_160'
;sloc0                     Allocated with name '_strtoul_sloc0_1_0'
;------------------------------------------------------------
;	strtoul.c:59: unsigned long int strtoul(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtoul
;	-----------------------------------------
_strtoul:
	mov	_strtoul_nptr_65536_139,dpl
	mov	(_strtoul_nptr_65536_139 + 1),dph
	mov	(_strtoul_nptr_65536_139 + 2),b
;	strtoul.c:63: bool range_error = false;
	mov	_strtoul_range_error_65536_140,#0x00
;	strtoul.c:64: bool neg = false;
	mov	_strtoul_neg_65536_140,#0x00
;	strtoul.c:66: while (isblank (*ptr))
	mov	r2,_strtoul_nptr_65536_139
	mov	r3,(_strtoul_nptr_65536_139 + 1)
	mov	r4,(_strtoul_nptr_65536_139 + 2)
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r1,#0x20,00214$
	sjmp	00141$
00214$:
	cjne	r1,#0x09,00163$
00141$:
;	strtoul.c:67: ptr++;
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00163$:
	mov	ar0,r2
	mov	ar1,r3
	mov	ar7,r4
;	strtoul.c:70: switch(*ptr)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	cjne	r6,#0x2b,00218$
	sjmp	00105$
00218$:
	cjne	r6,#0x2d,00106$
;	strtoul.c:73: neg = true;
	mov	_strtoul_neg_65536_140,#0x01
;	strtoul.c:74: case '+':
00105$:
;	strtoul.c:75: ptr++;
	inc	r0
	cjne	r0,#0x00,00221$
	inc	r1
00221$:
;	strtoul.c:76: }
00106$:
;	strtoul.c:79: if (!base)
	mov	a,_strtoul_PARM_3
	orl	a,(_strtoul_PARM_3 + 1)
	jz	00222$
	ljmp	00119$
00222$:
;	strtoul.c:81: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
	mov	_strncmp_PARM_2,#___str_0
	mov	(_strncmp_PARM_2 + 1),#(___str_0 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	_strncmp_PARM_3,#0x02
	mov	(_strncmp_PARM_3 + 1),#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	push	ar7
	push	ar1
	push	ar0
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
	pop	ar7
	orl	a,b
	jz	00110$
	mov	_strncmp_PARM_2,#___str_1
	mov	(_strncmp_PARM_2 + 1),#(___str_1 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	_strncmp_PARM_3,#0x02
	mov	(_strncmp_PARM_3 + 1),#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	push	ar7
	push	ar1
	push	ar0
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
	pop	ar7
	orl	a,b
	jnz	00111$
00110$:
;	strtoul.c:83: base = 16;
	mov	_strtoul_PARM_3,#0x10
	mov	(_strtoul_PARM_3 + 1),#0x00
;	strtoul.c:84: ptr += 2;
	mov	a,#0x02
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	ljmp	00120$
00111$:
;	strtoul.c:86: else if (*ptr == '0')
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	cjne	r6,#0x30,00108$
;	strtoul.c:88: base = 8;
	mov	_strtoul_PARM_3,#0x08
	mov	(_strtoul_PARM_3 + 1),#0x00
;	strtoul.c:89: ptr++;
	inc	r0
	cjne	r0,#0x00,00120$
	inc	r1
	sjmp	00120$
00108$:
;	strtoul.c:92: base = 10;
	mov	_strtoul_PARM_3,#0x0a
	mov	(_strtoul_PARM_3 + 1),#0x00
	sjmp	00120$
00119$:
;	strtoul.c:95: else if (base == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
	mov	a,#0x10
	cjne	a,_strtoul_PARM_3,00228$
	clr	a
	cjne	a,(_strtoul_PARM_3 + 1),00228$
	sjmp	00229$
00228$:
	sjmp	00120$
00229$:
	mov	_strncmp_PARM_2,#___str_0
	mov	(_strncmp_PARM_2 + 1),#(___str_0 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	_strncmp_PARM_3,#0x02
	mov	(_strncmp_PARM_3 + 1),#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	push	ar7
	push	ar1
	push	ar0
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
	pop	ar7
	orl	a,b
	jz	00114$
	mov	_strncmp_PARM_2,#___str_1
	mov	(_strncmp_PARM_2 + 1),#(___str_1 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	_strncmp_PARM_3,#0x02
	mov	(_strncmp_PARM_3 + 1),#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	push	ar7
	push	ar1
	push	ar0
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
	pop	ar7
	orl	a,b
	jnz	00120$
00114$:
;	strtoul.c:96: ptr += 2;
	mov	a,#0x02
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
00120$:
;	strtoul.c:100: if (_isdigit (*ptr, base) < 0)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	mov	r5,_strtoul_PARM_3
	mov	__isdigit_PARM_2,r5
	mov	dpl,r6
	push	ar7
	push	ar5
	push	ar1
	push	ar0
	lcall	__isdigit
	mov	r6,dpl
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar7
	mov	a,r6
	jnb	acc.7,00124$
;	strtoul.c:102: if (endptr)
	mov	a,_strtoul_PARM_2
	orl	a,(_strtoul_PARM_2 + 1)
	jz	00122$
;	strtoul.c:103: *endptr = (char*)nptr;
	mov	r3,_strtoul_PARM_2
	mov	r4,(_strtoul_PARM_2 + 1)
	mov	r6,(_strtoul_PARM_2 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	mov	a,_strtoul_nptr_65536_139
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtoul_nptr_65536_139 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtoul_nptr_65536_139 + 2)
	lcall	__gptrput
00122$:
;	strtoul.c:104: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00124$:
;	strtoul.c:107: for (ret = 0;; ptr++)
	clr	a
	mov	_strtoul_ret_65536_140,a
	mov	(_strtoul_ret_65536_140 + 1),a
	mov	(_strtoul_ret_65536_140 + 2),a
	mov	(_strtoul_ret_65536_140 + 3),a
	mov	_strtoul_sloc0_1_0,r0
	mov	(_strtoul_sloc0_1_0 + 1),r1
	mov	(_strtoul_sloc0_1_0 + 2),r7
00136$:
;	strtoul.c:110: signed char digit = _isdigit (*ptr, base);
	mov	dpl,_strtoul_sloc0_1_0
	mov	dph,(_strtoul_sloc0_1_0 + 1)
	mov	b,(_strtoul_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	__isdigit_PARM_2,r5
	mov	dpl,r3
	push	ar5
	lcall	__isdigit
	mov	_strtoul_digit_196608_147,dpl
	pop	ar5
;	strtoul.c:112: if (digit < 0)
	mov	a,_strtoul_digit_196608_147
	jnb	acc.7,00234$
	ljmp	00127$
00234$:
;	strtoul.c:117: range_error |= ckd_mul(&ret, ret, base);
	push	ar5
	mov	__mullonglong_PARM_2,_strtoul_PARM_3
	mov	a,(_strtoul_PARM_3 + 1)
	mov	(__mullonglong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullonglong_PARM_2 + 2),a
	mov	(__mullonglong_PARM_2 + 3),a
	mov	(__mullonglong_PARM_2 + 4),a
	mov	(__mullonglong_PARM_2 + 5),a
	mov	(__mullonglong_PARM_2 + 6),a
	mov	(__mullonglong_PARM_2 + 7),a
	mov	_strtoul___2621440014_262144_155,_strtoul_ret_65536_140
	mov	(_strtoul___2621440014_262144_155 + 1),(_strtoul_ret_65536_140 + 1)
	mov	(_strtoul___2621440014_262144_155 + 2),(_strtoul_ret_65536_140 + 2)
	mov	(_strtoul___2621440014_262144_155 + 3),(_strtoul_ret_65536_140 + 3)
	mov	(_strtoul___2621440014_262144_155 + 4),#0x00
	mov	(_strtoul___2621440014_262144_155 + 5),#0x00
	mov	(_strtoul___2621440014_262144_155 + 6),#0x00
	mov	(_strtoul___2621440014_262144_155 + 7),#0x00
;	../../device/include/stdckdint.h:76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
	push	ar5
	mov	dpl,_strtoul___2621440014_262144_155
	mov	dph,(_strtoul___2621440014_262144_155 + 1)
	mov	b,(_strtoul___2621440014_262144_155 + 2)
	mov	a,(_strtoul___2621440014_262144_155 + 3)
	mov	r4,(_strtoul___2621440014_262144_155 + 4)
	mov	r5,(_strtoul___2621440014_262144_155 + 5)
	mov	r6,(_strtoul___2621440014_262144_155 + 6)
	mov	r7,(_strtoul___2621440014_262144_155 + 7)
	lcall	__mullonglong
	mov	_strtoul_result_393216_157,dpl
	mov	(_strtoul_result_393216_157 + 1),dph
	mov	(_strtoul_result_393216_157 + 2),b
	mov	(_strtoul_result_393216_157 + 3),a
	mov	(_strtoul_result_393216_157 + 4),r4
	mov	(_strtoul_result_393216_157 + 5),r5
	mov	(_strtoul_result_393216_157 + 6),r6
	mov	(_strtoul_result_393216_157 + 7),r7
	pop	ar5
	mov	r1,_strtoul_result_393216_157
	mov	r2,(_strtoul_result_393216_157 + 1)
	mov	r3,(_strtoul_result_393216_157 + 2)
	mov	r7,(_strtoul_result_393216_157 + 3)
	mov	(_strtoul_ret_65536_140 + 0),r1
	mov	(_strtoul_ret_65536_140 + 1),r2
	mov	(_strtoul_ret_65536_140 + 2),r3
	mov	(_strtoul_ret_65536_140 + 3),r7
	mov	ar0,r7
	clr	a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r1
	cjne	a,_strtoul_result_393216_157,00235$
	mov	a,r2
	cjne	a,(_strtoul_result_393216_157 + 1),00235$
	mov	a,r3
	cjne	a,(_strtoul_result_393216_157 + 2),00235$
	mov	a,r0
	cjne	a,(_strtoul_result_393216_157 + 3),00235$
	mov	a,r4
	cjne	a,(_strtoul_result_393216_157 + 4),00235$
	mov	a,r5
	cjne	a,(_strtoul_result_393216_157 + 5),00235$
	mov	a,r6
	cjne	a,(_strtoul_result_393216_157 + 6),00235$
	mov	a,r7
	cjne	a,(_strtoul_result_393216_157 + 7),00235$
	setb	c
	sjmp	00236$
00235$:
	clr	c
00236$:
	mov  _strtoul_sloc1_1_0,c
	cpl	c
	clr	a
	rlc	a
;	strtoul.c:117: range_error |= ckd_mul(&ret, ret, base);
	mov	_strtoul___2621440012_262144_147,a
	orl	_strtoul_range_error_65536_140,a
;	strtoul.c:125: ret += (unsigned char)digit;
	mov	r3,_strtoul_digit_196608_147
	clr	a
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	a,r3
	add	a,_strtoul_ret_65536_140
	mov	_strtoul_ret_65536_140,a
	mov	a,r7
	addc	a,(_strtoul_ret_65536_140 + 1)
	mov	(_strtoul_ret_65536_140 + 1),a
	mov	a,r6
	addc	a,(_strtoul_ret_65536_140 + 2)
	mov	(_strtoul_ret_65536_140 + 2),a
	mov	a,r5
	addc	a,(_strtoul_ret_65536_140 + 3)
	mov	(_strtoul_ret_65536_140 + 3),a
;	strtoul.c:107: for (ret = 0;; ptr++)
	inc	_strtoul_sloc0_1_0
	clr	a
	cjne	a,_strtoul_sloc0_1_0,00237$
	inc	(_strtoul_sloc0_1_0 + 1)
00237$:
	pop	ar5
	ljmp	00136$
00127$:
;	strtoul.c:128: if (endptr)
	mov	a,_strtoul_PARM_2
	orl	a,(_strtoul_PARM_2 + 1)
	jz	00129$
;	strtoul.c:129: *endptr = (char*)ptr;
	mov	r5,_strtoul_PARM_2
	mov	r6,(_strtoul_PARM_2 + 1)
	mov	r7,(_strtoul_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_strtoul_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtoul_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtoul_sloc0_1_0 + 2)
	lcall	__gptrput
00129$:
;	strtoul.c:131: if (range_error)
	mov	a,_strtoul_range_error_65536_140
	jz	00131$
;	strtoul.c:133: errno = ERANGE;
	mov	_errno,#0x22
	mov	(_errno + 1),#0x00
;	strtoul.c:134: return (ULONG_MAX);
	mov	dptr,#0xffff
	mov	a,#0xff
	mov	b,a
	ret
00131$:
;	strtoul.c:137: return (neg ? -ret : ret);
	mov	a,_strtoul_neg_65536_140
	jz	00143$
	clr	c
	clr	a
	subb	a,_strtoul_ret_65536_140
	mov	r4,a
	clr	a
	subb	a,(_strtoul_ret_65536_140 + 1)
	mov	r5,a
	clr	a
	subb	a,(_strtoul_ret_65536_140 + 2)
	mov	r6,a
	clr	a
	subb	a,(_strtoul_ret_65536_140 + 3)
	mov	r7,a
	sjmp	00144$
00143$:
	mov	r4,_strtoul_ret_65536_140
	mov	r5,(_strtoul_ret_65536_140 + 1)
	mov	r6,(_strtoul_ret_65536_140 + 2)
	mov	r7,(_strtoul_ret_65536_140 + 3)
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
