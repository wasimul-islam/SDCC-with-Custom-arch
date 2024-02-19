;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtoul
	.optsdcc -mds400 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
	.DS80C390
	.amode	2	; 24 bit flat addressing
dpl	=	0x82
dph	=	0x83
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
acc1	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
acon	=	0x9D
mcon	=	0xC6
F1	=	0xD1	; user flag
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
_strtoul_sloc2_1_0:
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
_strtoul_PARM_2:
	.ds 4
_strtoul_PARM_3:
	.ds 2
_strtoul_nptr_65536_137:
	.ds 4
_strtoul_ret_65536_138:
	.ds 4
_strtoul_range_error_65536_138:
	.ds 1
_strtoul_neg_65536_138:
	.ds 1
_strtoul_digit_196608_145:
	.ds 1
_strtoul___2621440013_262144_153:
	.ds 4
_strtoul___2621440015_262144_153:
	.ds 8
_strtoul_result_393216_155:
	.ds 8
_strtoul_sloc0_1_0:
	.ds 4
_strtoul_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;c                         Allocated to registers r2 
;v                         Allocated to registers r3 
;------------------------------------------------------------
;	strtoul.c:40: static signed char _isdigit(const char c, unsigned char base)
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
__isdigit:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
;	strtoul.c:44: if (c >= '0' && c <= '9')
	cjne	r2,#0x30,00145$
00145$:
	jc   00110$
00146$:
	clr	c
	mov	a,#0x39
	subb	a,r2
	jc   00110$
00147$:
;	strtoul.c:45: v = c - '0';
	mov	ar3,r2
	mov	a,r3
	add	a,#0xd0
;	genAssign: resultIsFar = TRUE
	mov	r3,a
	sjmp 00111$
00110$:
;	strtoul.c:46: else if (c >= 'a' && c <='z')
	cjne	r2,#0x61,00148$
00148$:
	jc   00106$
00149$:
	clr	c
	mov	a,#0x7a
	subb	a,r2
	jc   00106$
00150$:
;	strtoul.c:47: v = c - 'a' + 10;
	mov	ar4,r2
	mov	a,#0xa9
	add	a,r4
	mov	r3,a
	sjmp 00111$
00106$:
;	strtoul.c:48: else if (c >= 'A' && c <='Z')
	cjne	r2,#0x41,00151$
00151$:
	jc   00102$
00152$:
	clr	c
	mov	a,#0x5a
	subb	a,r2
	jc   00102$
00153$:
;	strtoul.c:49: v = c - 'A' + 10;
	mov	a,#0xc9
	add	a,r2
	mov	r3,a
	sjmp 00111$
00102$:
;	strtoul.c:51: return (-1);
	mov	dpl,#0xff
	sjmp 00115$
00111$:
;	strtoul.c:53: if (v >= base)
	mov	dptr,#__isdigit_PARM_2
	clr	c
	mov	a,r3
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc   00114$
00154$:
;	strtoul.c:54: return (-1);
	mov	dpl,#0xff
;	strtoul.c:56: return (v);
;	strtoul.c:57: }
	ret
00114$:
	mov     dpl,r3
00115$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'strtoul'
;------------------------------------------------------------
;endptr                    Allocated with name '_strtoul_PARM_2'
;base                      Allocated with name '_strtoul_PARM_3'
;nptr                      Allocated with name '_strtoul_nptr_65536_137'
;__1310720004              Allocated to registers 
;ptr                       Allocated to registers r3 r4 r5 r6 
;ret                       Allocated with name '_strtoul_ret_65536_138'
;range_error               Allocated with name '_strtoul_range_error_65536_138'
;neg                       Allocated with name '_strtoul_neg_65536_138'
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__2621440017              Allocated with name '_strtoul___2621440017_262144_145'
;__2621440012              Allocated to registers r2 
;__2621440007              Allocated with name '_strtoul___2621440007_262144_145'
;oldret                    Allocated to registers 
;digit                     Allocated with name '_strtoul_digit_196608_145'
;__2621440008              Allocated with name '_strtoul___2621440008_262144_150'
;__2621440009              Allocated with name '_strtoul___2621440009_262144_150'
;__2621440010              Allocated with name '_strtoul___2621440010_262144_150'
;r                         Allocated with name '_strtoul_r_327680_151'
;a                         Allocated with name '_strtoul_a_327680_151'
;b                         Allocated with name '_strtoul_b_327680_151'
;result                    Allocated with name '_strtoul_result_393216_152'
;__2621440013              Allocated with name '_strtoul___2621440013_262144_153'
;__2621440014              Allocated to registers 
;__2621440015              Allocated with name '_strtoul___2621440015_262144_153'
;r                         Allocated to registers 
;a                         Allocated to registers 
;b                         Allocated to registers 
;result                    Allocated with name '_strtoul_result_393216_155'
;__2621440018              Allocated with name '_strtoul___2621440018_262144_156'
;__2621440019              Allocated with name '_strtoul___2621440019_262144_156'
;__2621440020              Allocated with name '_strtoul___2621440020_262144_156'
;r                         Allocated with name '_strtoul_r_327680_157'
;a                         Allocated with name '_strtoul_a_327680_157'
;b                         Allocated with name '_strtoul_b_327680_157'
;result                    Allocated with name '_strtoul_result_393216_158'
;sloc0                     Allocated with name '_strtoul_sloc0_1_0'
;sloc1                     Allocated with name '_strtoul_sloc1_1_0'
;------------------------------------------------------------
;	strtoul.c:59: unsigned long int strtoul(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtoul
;	-----------------------------------------
_strtoul:
	mov     dps, #1
	mov     dptr, #_strtoul_nptr_65536_137
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
;	strtoul.c:63: bool range_error = false;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtoul_range_error_65536_138
;	strtoul.c:64: bool neg = false;
;	genAssign: resultIsFar = TRUE
	clr   a
	movx  @dptr,a
	mov   dptr,#_strtoul_neg_65536_138
	movx  @dptr,a
;	strtoul.c:66: while (isblank (*ptr))
	mov	dptr,#_strtoul_nptr_65536_137
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
00101$:
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r7
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r3,#0x20,00214$
	sjmp 00141$
00214$:
	cjne r3,#0x09,00163$
00216$:
00141$:
;	strtoul.c:67: ptr++;
	inc	r0
	cjne	r0,#0x00,00217$
	inc	r1
	cjne	r1,#0x00,00217$
	inc	r7
00217$:
	sjmp 00101$
00163$:
;	genAssign: resultIsFar = TRUE
	mov	ar3,r0
	mov	ar4,r1
	mov	ar5,r7
	mov	ar6,r2
;	strtoul.c:70: switch(*ptr)
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r7
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x2b,00218$
	sjmp 00105$
00218$:
	cjne r2,#0x2d,00106$
00220$:
;	strtoul.c:73: neg = true;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtoul_neg_65536_138
	mov	a,#0x01
	movx	@dptr,a
;	strtoul.c:74: case '+':
00105$:
;	strtoul.c:75: ptr++;
	inc	r3
	cjne	r3,#0x00,00221$
	inc	r4
	cjne	r4,#0x00,00221$
	inc	r5
00221$:
;	strtoul.c:76: }
00106$:
;	strtoul.c:79: if (!base)
	mov	dptr,#_strtoul_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00222$
	ljmp	00119$
00222$:
;	strtoul.c:81: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
	mov	dptr,#_strncmp_PARM_2
	mov	a,#___str_0
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_0 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_0 >> 16)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strncmp_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	lcall	_strncmp
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,dpl
	orl	a,dph
	jz  00110$
00223$:
	mov	dptr,#_strncmp_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_1 >> 16)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strncmp_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	lcall	_strncmp
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,dpl
	orl	a,dph
	jnz  00111$
00224$:
00110$:
;	strtoul.c:83: base = 16;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtoul_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	strtoul.c:84: ptr += 2;
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	ljmp	00120$
00111$:
;	strtoul.c:86: else if (*ptr == '0')
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	cjne r2,#0x30,00108$
00226$:
;	strtoul.c:88: base = 8;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtoul_PARM_3
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	strtoul.c:89: ptr++;
	inc	r3
	cjne	r3,#0x00,00227$
	inc	r4
	cjne	r4,#0x00,00227$
	inc	r5
00227$:
	ljmp	00120$
00108$:
;	strtoul.c:92: base = 10;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtoul_PARM_3
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	ljmp	00120$
00119$:
;	strtoul.c:95: else if (base == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
	mov	dptr,#_strtoul_PARM_3
	movx	a,@dptr
	cjne	a,#0x10,00228$
	inc	dptr
	movx	a,@dptr
	cjne	a,#0x00,00228$
	sjmp	00229$
00228$:
	ljmp	00120$
00229$:
	mov	dptr,#_strncmp_PARM_2
	mov	a,#___str_0
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_0 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_0 >> 16)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strncmp_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	lcall	_strncmp
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,dpl
	orl	a,dph
	jz  00114$
00230$:
	mov	dptr,#_strncmp_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_1 >> 16)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strncmp_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	lcall	_strncmp
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,dpl
	orl	a,dph
	jnz  00120$
00231$:
00114$:
;	strtoul.c:96: ptr += 2;
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
00120$:
;	strtoul.c:100: if (_isdigit (*ptr, base) < 0)
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_strtoul_PARM_3
	movx	a,@dptr
;	genAssign: resultIsFar = TRUE
	mov  r7,a
	mov  dptr,#__isdigit_PARM_2
	movx @dptr,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	lcall	__isdigit
	mov	r2,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	a,r2
	jnb  acc[7],00124$
00232$:
;	strtoul.c:102: if (endptr)
	mov	dptr,#_strtoul_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtoul_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz  00122$
00233$:
;	strtoul.c:103: *endptr = (char*)nptr;
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov     dps, #1
	mov     dptr, #_strtoul_nptr_65536_137
	movx	a,@dptr
	mov	acc1, a
	inc	dptr
	movx	a,@dptr
	dec	dps
	lcall	__gptrputWord
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	mov	acc1, a
	inc	dptr
	movx	a,@dptr
	dec	dps
	lcall	__gptrputWord
00122$:
;	strtoul.c:104: return (0);
	mov  dptr,#0x0000
	mov	b,#0x00
	ljmp	00138$
00124$:
;	strtoul.c:107: for (ret = 0;; ptr++)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtoul_ret_65536_138
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtoul_sloc0_1_0
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
00136$:
;	strtoul.c:110: signed char digit = _isdigit (*ptr, base);
	mov	dptr,#_strtoul_sloc0_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrget
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__isdigit_PARM_2
	mov	a,r7
	movx	@dptr,a
	push	ar7
	mov	dpl,r6
	lcall	__isdigit
	mov	r6,dpl
	pop	ar7
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtoul_digit_196608_145
	mov	a,r6
	movx	@dptr,a
;	strtoul.c:112: if (digit < 0)
	mov	dptr,#_strtoul_digit_196608_145
	movx	a,@dptr
	jnb	acc[7],00234$
	ljmp	00127$
00234$:
;	strtoul.c:117: range_error |= ckd_mul(&ret, ret, base);
	push	ar7
	mov	dptr,#_strtoul_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	movx	a,@dptr
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r6,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtoul___2621440015_262144_153
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_strtoul_ret_65536_138
	mov	dps, #1
	mov	dptr, #_strtoul_sloc1_1_0
	dec	dps
	movx	a,@dptr
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov     dps, #1
	inc	dptr
	clr	a
	movx	@dptr,a
	mov     dps, #1
	inc	dptr
	clr	a
	movx	@dptr,a
	mov     dps, #1
	inc	dptr
	clr	a
	movx	@dptr,a
	mov     dps, #1
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dps,#0
	mov	dptr,#_strtoul___2621440013_262144_153
	mov	a,#_strtoul_ret_65536_138
	movx	@dptr,a
	inc	dptr
	mov	a,#(_strtoul_ret_65536_138 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(_strtoul_ret_65536_138 >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../../device/include/stdckdint.h:76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
	mov	dptr,#_strtoul___2621440015_262144_153
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mullonglong_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps, #1
	mov	dptr,#_strtoul_sloc1_1_0
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	pop	acc
	mov	dps,#0
	lcall	__mullonglong
	mov	r3,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	mov	r2,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_strtoul_result_393216_155
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_strtoul_result_393216_155
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtoul___2621440013_262144_153
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	acc1, r2
	mov	a,r3
	lcall	__gptrputWord
	inc	dptr
	mov	acc1, r4
	mov	a,r5
	lcall	__gptrputWord
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
	mov	dptr,#_strtoul_result_393216_155
	mov	b,r2
	movx	a,@dptr
	cjne	a,b,00235$
	mov	b,r3
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00235$
	mov	b,r4
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00235$
	mov	b,r5
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00235$
	mov	b,r6
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00235$
	mov	b,r7
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00235$
	mov	b,r0
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00235$
	mov	b,r1
	inc	dptr
	movx	a,@dptr
	cjne	a,b,00235$
	mov	a,#0x01
	sjmp	00236$
00235$:
	clr	a
00236$:
	add	a,#0xff
	mov	_strtoul_sloc2_1_0,c
	mov	c,_strtoul_sloc2_1_0
	cpl	c
	clr	a
	rlc	a
	mov	r2,a
;	strtoul.c:117: range_error |= ckd_mul(&ret, ret, base);
	mov	dptr,#_strtoul_range_error_65536_138
	movx	a,@dptr
	orl	a,r2
	movx	@dptr,a
;	strtoul.c:125: ret += (unsigned char)digit;
	mov	dptr,#_strtoul_digit_196608_145
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dptr,#_strtoul_ret_65536_138
	movx	a,@dptr
	add	a,r2
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r3
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r4
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,r5
	movx	@dptr,a
;	strtoul.c:107: for (ret = 0;; ptr++)
	mov	dptr,#_strtoul_sloc0_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	pop	ar7
	ljmp	00136$
00127$:
;	strtoul.c:128: if (endptr)
	mov	dptr,#_strtoul_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_strtoul_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz  00129$
00237$:
;	strtoul.c:129: *endptr = (char*)ptr;
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	mov     dps, #1
	mov     dptr, #_strtoul_sloc0_1_0
	movx	a,@dptr
	mov	acc1, a
	inc	dptr
	movx	a,@dptr
	dec	dps
	lcall	__gptrputWord
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	mov	acc1, a
	inc	dptr
	movx	a,@dptr
	dec	dps
	lcall	__gptrputWord
00129$:
;	strtoul.c:131: if (range_error)
	mov	dptr,#_strtoul_range_error_65536_138
	movx	a,@dptr
	jz  00131$
00238$:
;	strtoul.c:133: errno = ERANGE;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	strtoul.c:134: return (ULONG_MAX);
	mov	dptr,#0xffffff
	mov	b,#0xff
	sjmp 00138$
00131$:
;	strtoul.c:137: return (neg ? -ret : ret);
	mov	dptr,#_strtoul_neg_65536_138
	movx	a,@dptr
	jz  00143$
00239$:
	mov	dptr,#_strtoul_ret_65536_138
	movx	a,@dptr
	setb	c
	cpl	a
	addc	a,#0x00
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	mov	r5,a
	sjmp 00144$
00143$:
	mov	dptr,#_strtoul_ret_65536_138
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00144$:
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
00138$:
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
