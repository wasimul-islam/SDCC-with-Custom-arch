;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtoul
	.optsdcc -mmcs51 --model-huge
	
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
	.ds 3
_strtoul_sloc1_1_0:
	.ds 2
_strtoul_sloc2_1_0:
	.ds 3
_strtoul_sloc3_1_0:
	.ds 8
_strtoul_sloc4_1_0:
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
_strtoul_sloc5_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
__isdigit_PARM_2:
	.ds 1
__isdigit_c_65536_137:
	.ds 1
__isdigit_v_65536_138:
	.ds 1
_strtoul_PARM_2:
	.ds 3
_strtoul_PARM_3:
	.ds 2
_strtoul_nptr_65536_139:
	.ds 3
_strtoul_ptr_65536_140:
	.ds 3
_strtoul_ret_65536_140:
	.ds 4
_strtoul_range_error_65536_140:
	.ds 1
_strtoul_neg_65536_140:
	.ds 1
_strtoul___2621440012_262144_147:
	.ds 1
_strtoul_result_393216_157:
	.ds 8
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
;c                         Allocated with name '__isdigit_c_65536_137'
;v                         Allocated with name '__isdigit_v_65536_138'
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
	mov	a,dpl
	mov	dptr,#__isdigit_c_65536_137
	movx	@dptr,a
;	strtoul.c:44: if (c >= '0' && c <= '9')
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00145$
00145$:
	jc	00110$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00110$
;	strtoul.c:45: v = c - '0';
	mov	a,r7
	add	a,#0xd0
	mov	dptr,#__isdigit_v_65536_138
	movx	@dptr,a
	sjmp	00111$
00110$:
;	strtoul.c:46: else if (c >= 'a' && c <='z')
	mov	dptr,#__isdigit_c_65536_137
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x61,00148$
00148$:
	jc	00106$
	mov	a,r7
	add	a,#0xff - 0x7a
	jc	00106$
;	strtoul.c:47: v = c - 'a' + 10;
	mov	dptr,#__isdigit_v_65536_138
	mov	a,#0xa9
	add	a,r7
	movx	@dptr,a
	sjmp	00111$
00106$:
;	strtoul.c:48: else if (c >= 'A' && c <='Z')
	mov	dptr,#__isdigit_c_65536_137
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00151$
00151$:
	jc	00102$
	mov	a,r7
	add	a,#0xff - 0x5a
	jc	00102$
;	strtoul.c:49: v = c - 'A' + 10;
	mov	dptr,#__isdigit_v_65536_138
	mov	a,#0xc9
	add	a,r7
	movx	@dptr,a
	sjmp	00111$
00102$:
;	strtoul.c:51: return (-1);
	mov	dpl,#0xff
	sjmp	00115$
00111$:
;	strtoul.c:53: if (v >= base)
	mov	dptr,#__isdigit_v_65536_138
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__isdigit_PARM_2
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00114$
;	strtoul.c:54: return (-1);
	mov	dpl,#0xff
	sjmp	00115$
00114$:
;	strtoul.c:56: return (v);
	mov	dpl,r7
00115$:
;	strtoul.c:57: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'strtoul'
;------------------------------------------------------------
;sloc0                     Allocated with name '_strtoul_sloc0_1_0'
;sloc1                     Allocated with name '_strtoul_sloc1_1_0'
;sloc2                     Allocated with name '_strtoul_sloc2_1_0'
;sloc3                     Allocated with name '_strtoul_sloc3_1_0'
;sloc4                     Allocated with name '_strtoul_sloc4_1_0'
;endptr                    Allocated with name '_strtoul_PARM_2'
;base                      Allocated with name '_strtoul_PARM_3'
;nptr                      Allocated with name '_strtoul_nptr_65536_139'
;__1310720004              Allocated with name '_strtoul___1310720004_131072_140'
;ptr                       Allocated with name '_strtoul_ptr_65536_140'
;ret                       Allocated with name '_strtoul_ret_65536_140'
;range_error               Allocated with name '_strtoul_range_error_65536_140'
;neg                       Allocated with name '_strtoul_neg_65536_140'
;__1310720005              Allocated with name '_strtoul___1310720005_131072_149'
;c                         Allocated with name '_strtoul_c_196608_150'
;__2621440017              Allocated with name '_strtoul___2621440017_262144_147'
;__2621440012              Allocated with name '_strtoul___2621440012_262144_147'
;__2621440007              Allocated with name '_strtoul___2621440007_262144_147'
;oldret                    Allocated with name '_strtoul_oldret_196608_147'
;digit                     Allocated with name '_strtoul_digit_196608_147'
;__2621440008              Allocated with name '_strtoul___2621440008_262144_152'
;__2621440009              Allocated with name '_strtoul___2621440009_262144_152'
;__2621440010              Allocated with name '_strtoul___2621440010_262144_152'
;r                         Allocated with name '_strtoul_r_327680_153'
;a                         Allocated with name '_strtoul_a_327680_153'
;b                         Allocated with name '_strtoul_b_327680_153'
;result                    Allocated with name '_strtoul_result_393216_154'
;__2621440013              Allocated with name '_strtoul___2621440013_262144_155'
;__2621440014              Allocated with name '_strtoul___2621440014_262144_155'
;__2621440015              Allocated with name '_strtoul___2621440015_262144_155'
;r                         Allocated with name '_strtoul_r_327680_156'
;a                         Allocated with name '_strtoul_a_327680_156'
;b                         Allocated with name '_strtoul_b_327680_156'
;result                    Allocated with name '_strtoul_result_393216_157'
;__2621440018              Allocated with name '_strtoul___2621440018_262144_158'
;__2621440019              Allocated with name '_strtoul___2621440019_262144_158'
;__2621440020              Allocated with name '_strtoul___2621440020_262144_158'
;r                         Allocated with name '_strtoul_r_327680_159'
;a                         Allocated with name '_strtoul_a_327680_159'
;b                         Allocated with name '_strtoul_b_327680_159'
;result                    Allocated with name '_strtoul_result_393216_160'
;------------------------------------------------------------
;	strtoul.c:59: unsigned long int strtoul(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtoul
;	-----------------------------------------
_strtoul:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_strtoul_nptr_65536_139
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	strtoul.c:61: const char *ptr = nptr;
	mov	dptr,#_strtoul_nptr_65536_139
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	strtoul.c:63: bool range_error = false;
	mov	dptr,#_strtoul_range_error_65536_140
	clr	a
	movx	@dptr,a
;	strtoul.c:64: bool neg = false;
	mov	dptr,#_strtoul_neg_65536_140
	movx	@dptr,a
;	strtoul.c:66: while (isblank (*ptr))
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r4,#0x20,00214$
	sjmp	00141$
00214$:
	cjne	r4,#0x09,00163$
00141$:
;	strtoul.c:67: ptr++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00163$:
	mov	dptr,#_strtoul_ptr_65536_140
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	strtoul.c:70: switch(*ptr)
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x2b,00218$
	sjmp	00105$
00218$:
	cjne	r7,#0x2d,00106$
;	strtoul.c:73: neg = true;
	mov	dptr,#_strtoul_neg_65536_140
	mov	a,#0x01
	movx	@dptr,a
;	strtoul.c:74: case '+':
00105$:
;	strtoul.c:75: ptr++;
	mov	dptr,#_strtoul_ptr_65536_140
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	strtoul.c:76: }
00106$:
;	strtoul.c:79: if (!base)
	mov	dptr,#_strtoul_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strtoul_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00221$
	ljmp	00119$
00221$:
;	strtoul.c:81: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
	mov	dptr,#_strtoul_ptr_65536_140
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strncmp_PARM_2
	mov	a,#___str_0
	movx	@dptr,a
	mov	a,#(___str_0 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strncmp_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_strncmp
	mov	r1,#(_strncmp >> 8)
	mov	r2,#(_strncmp >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00110$
	mov	dptr,#_strtoul_ptr_65536_140
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strncmp_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strncmp_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_strncmp
	mov	r1,#(_strncmp >> 8)
	mov	r2,#(_strncmp >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00111$
00110$:
;	strtoul.c:83: base = 16;
	mov	dptr,#_strtoul_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	strtoul.c:84: ptr += 2;
	mov	dptr,#_strtoul_ptr_65536_140
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtoul_ptr_65536_140
	mov	a,#0x02
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00120$
00111$:
;	strtoul.c:86: else if (*ptr == '0')
	mov	dptr,#_strtoul_ptr_65536_140
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x30,00108$
;	strtoul.c:88: base = 8;
	mov	dptr,#_strtoul_PARM_3
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	strtoul.c:89: ptr++;
	mov	dptr,#_strtoul_ptr_65536_140
	inc	a
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00120$
00108$:
;	strtoul.c:92: base = 10;
	mov	dptr,#_strtoul_PARM_3
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	ljmp	00120$
00119$:
;	strtoul.c:95: else if (base == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
	cjne	r6,#0x10,00226$
	cjne	r7,#0x00,00226$
	sjmp	00227$
00226$:
	ljmp	00120$
00227$:
	mov	dptr,#_strtoul_ptr_65536_140
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strncmp_PARM_2
	mov	a,#___str_0
	movx	@dptr,a
	mov	a,#(___str_0 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strncmp_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_strncmp
	mov	r1,#(_strncmp >> 8)
	mov	r2,#(_strncmp >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00114$
	mov	dptr,#_strtoul_ptr_65536_140
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strncmp_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strncmp_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_strncmp
	mov	r1,#(_strncmp >> 8)
	mov	r2,#(_strncmp >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00120$
00114$:
;	strtoul.c:96: ptr += 2;
	mov	dptr,#_strtoul_ptr_65536_140
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strtoul_ptr_65536_140
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00120$:
;	strtoul.c:100: if (_isdigit (*ptr, base) < 0)
	mov	dptr,#_strtoul_ptr_65536_140
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_strtoul_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__isdigit_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	mov	r0,#__isdigit
	mov	r1,#(__isdigit >> 8)
	mov	r2,#(__isdigit >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	jnb	acc.7,00124$
;	strtoul.c:102: if (endptr)
	mov	dptr,#_strtoul_PARM_2
	movx	a,@dptr
	mov	_strtoul_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strtoul_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strtoul_sloc0_1_0 + 2),a
	mov	dptr,#_strtoul_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00122$
;	strtoul.c:103: *endptr = (char*)nptr;
	mov	dptr,#_strtoul_nptr_65536_139
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,_strtoul_sloc0_1_0
	mov	dph,(_strtoul_sloc0_1_0 + 1)
	mov	b,(_strtoul_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00122$:
;	strtoul.c:104: return (0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ljmp	__sdcc_banked_ret
00124$:
;	strtoul.c:107: for (ret = 0;; ptr++)
	mov	dptr,#_strtoul_ret_65536_140
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	_strtoul_sloc1_1_0,r2
	mov	(_strtoul_sloc1_1_0 + 1),r3
	mov	_strtoul_sloc2_1_0,r5
	mov	(_strtoul_sloc2_1_0 + 1),r6
	mov	(_strtoul_sloc2_1_0 + 2),r7
00136$:
;	strtoul.c:110: signed char digit = _isdigit (*ptr, base);
	mov	dpl,_strtoul_sloc2_1_0
	mov	dph,(_strtoul_sloc2_1_0 + 1)
	mov	b,(_strtoul_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#__isdigit_PARM_2
	mov	a,_strtoul_sloc1_1_0
	movx	@dptr,a
	mov	dpl,r2
	mov	r0,#__isdigit
	mov	r1,#(__isdigit >> 8)
	mov	r2,#(__isdigit >> 16)
	lcall	__sdcc_banked_call
;	strtoul.c:112: if (digit < 0)
	mov	a,dpl
	mov	_strtoul_sloc0_1_0,a
	jnb	acc.7,00232$
	ljmp	00127$
00232$:
;	strtoul.c:117: range_error |= ckd_mul(&ret, ret, base);
	mov	_strtoul_sloc3_1_0,_strtoul_sloc1_1_0
	mov	a,(_strtoul_sloc1_1_0 + 1)
	mov	(_strtoul_sloc3_1_0 + 1),a
	rlc	a
	subb	a,acc
	mov	(_strtoul_sloc3_1_0 + 2),a
	mov	(_strtoul_sloc3_1_0 + 3),a
	mov	(_strtoul_sloc3_1_0 + 4),a
	mov	(_strtoul_sloc3_1_0 + 5),a
	mov	(_strtoul_sloc3_1_0 + 6),a
	mov	(_strtoul_sloc3_1_0 + 7),a
	mov	dptr,#_strtoul_ret_65536_140
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar0,r4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	../../device/include/stdckdint.h:76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
	mov	dptr,#__mullonglong_PARM_2
	mov	a,_strtoul_sloc3_1_0
	movx	@dptr,a
	mov	a,(_strtoul_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_strtoul_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_strtoul_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,(_strtoul_sloc3_1_0 + 4)
	inc	dptr
	movx	@dptr,a
	mov	a,(_strtoul_sloc3_1_0 + 5)
	inc	dptr
	movx	@dptr,a
	mov	a,(_strtoul_sloc3_1_0 + 6)
	inc	dptr
	movx	@dptr,a
	mov	a,(_strtoul_sloc3_1_0 + 7)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__mullonglong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	dptr,#_strtoul_result_393216_157
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	_strtoul_sloc3_1_0,r0
	mov	(_strtoul_sloc3_1_0 + 1),r1
	mov	(_strtoul_sloc3_1_0 + 2),r2
	mov	(_strtoul_sloc3_1_0 + 3),r3
	mov	dptr,#_strtoul_ret_65536_140
	mov	a,_strtoul_sloc3_1_0
	movx	@dptr,a
	mov	a,(_strtoul_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_strtoul_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_strtoul_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strtoul_result_393216_157
	movx	a,@dptr
	mov	_strtoul_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strtoul_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strtoul_sloc4_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_strtoul_sloc4_1_0 + 3),a
	inc	dptr
	movx	a,@dptr
	mov	(_strtoul_sloc4_1_0 + 4),a
	inc	dptr
	movx	a,@dptr
	mov	(_strtoul_sloc4_1_0 + 5),a
	inc	dptr
	movx	a,@dptr
	mov	(_strtoul_sloc4_1_0 + 6),a
	inc	dptr
	movx	a,@dptr
	mov	(_strtoul_sloc4_1_0 + 7),a
	mov	r0,_strtoul_sloc3_1_0
	mov	r1,(_strtoul_sloc3_1_0 + 1)
	mov	r2,(_strtoul_sloc3_1_0 + 2)
	mov	r3,(_strtoul_sloc3_1_0 + 3)
	clr	a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	cjne	a,_strtoul_sloc4_1_0,00233$
	mov	a,r1
	cjne	a,(_strtoul_sloc4_1_0 + 1),00233$
	mov	a,r2
	cjne	a,(_strtoul_sloc4_1_0 + 2),00233$
	mov	a,r3
	cjne	a,(_strtoul_sloc4_1_0 + 3),00233$
	mov	a,r4
	cjne	a,(_strtoul_sloc4_1_0 + 4),00233$
	mov	a,r5
	cjne	a,(_strtoul_sloc4_1_0 + 5),00233$
	mov	a,r6
	cjne	a,(_strtoul_sloc4_1_0 + 6),00233$
	mov	a,r7
	cjne	a,(_strtoul_sloc4_1_0 + 7),00233$
	setb	c
	sjmp	00234$
00233$:
	clr	c
00234$:
	mov	_strtoul_sloc5_1_0,c
	mov	dptr,#_strtoul___2621440012_262144_147
	cpl	c
	clr	a
	rlc	a
	movx	@dptr,a
;	strtoul.c:117: range_error |= ckd_mul(&ret, ret, base);
	mov	dptr,#_strtoul___2621440012_262144_147
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strtoul_range_error_65536_140
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
;	strtoul.c:125: ret += (unsigned char)digit;
	mov	r2,_strtoul_sloc0_1_0
	mov	dptr,#_strtoul_ret_65536_140
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar0,r2
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	dptr,#_strtoul_ret_65536_140
	mov	a,r0
	add	a,r4
	movx	@dptr,a
	mov	a,r1
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	strtoul.c:107: for (ret = 0;; ptr++)
	inc	_strtoul_sloc2_1_0
	clr	a
	cjne	a,_strtoul_sloc2_1_0,00235$
	inc	(_strtoul_sloc2_1_0 + 1)
00235$:
	ljmp	00136$
00127$:
;	strtoul.c:128: if (endptr)
	mov	dptr,#_strtoul_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strtoul_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00129$
;	strtoul.c:129: *endptr = (char*)ptr;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_strtoul_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtoul_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_strtoul_sloc2_1_0 + 2)
	lcall	__gptrput
00129$:
;	strtoul.c:131: if (range_error)
	mov	dptr,#_strtoul_range_error_65536_140
	movx	a,@dptr
	jz	00131$
;	strtoul.c:133: errno = ERANGE;
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	strtoul.c:134: return (ULONG_MAX);
	mov	dptr,#0xffff
	mov	a,#0xff
	mov	b,a
	sjmp	00138$
00131$:
;	strtoul.c:137: return (neg ? -ret : ret);
	mov	dptr,#_strtoul_neg_65536_140
	movx	a,@dptr
	jz	00143$
	mov	dptr,#_strtoul_ret_65536_140
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	sjmp	00144$
00143$:
	mov	dptr,#_strtoul_ret_65536_140
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00144$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
00138$:
;	strtoul.c:138: }
	ljmp	__sdcc_banked_ret
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
