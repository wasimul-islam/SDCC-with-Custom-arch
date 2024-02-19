;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtoul
	.optsdcc -mhc08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
	.globl _strtoul_PARM_3
	.globl _strtoul_PARM_2
	.globl _strtoul
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_strtoul_sloc0_1_0:
	.ds 1
_strtoul_sloc1_1_0:
	.ds 2
_strtoul_sloc2_1_0:
	.ds 2
_strtoul_sloc3_1_0:
	.ds 2
_strtoul_sloc4_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
__isdigit_base_65536_134:
	.ds 1
_strtoul_PARM_2:
	.ds 2
_strtoul_PARM_3:
	.ds 2
_strtoul_nptr_65536_136:
	.ds 2
_strtoul_ptr_65536_137:
	.ds 2
_strtoul_ret_65536_137:
	.ds 4
_strtoul_range_error_65536_137:
	.ds 1
_strtoul_neg_65536_137:
	.ds 1
_strtoul_digit_196608_144:
	.ds 1
_strtoul_result_393216_154:
	.ds 8
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
;base                      Allocated with name '__isdigit_base_65536_134'
;c                         Allocated to registers a 
;v                         Allocated to registers a 
;------------------------------------------------------------
;../strtoul.c:40: static signed char _isdigit(const char c, unsigned char base)
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__isdigit:
	stx	__isdigit_base_65536_134
;../strtoul.c:45: v = c - '0';
	tax
;../strtoul.c:44: if (c >= '0' && c <= '9')
	cmp	#0x30
	bcs	00110$
	cmp	#0x39
	bhi	00110$
;../strtoul.c:45: v = c - '0';
	txa
	sub	#0x30
	bra	00111$
00110$:
;../strtoul.c:46: else if (c >= 'a' && c <='z')
	cmp	#0x61
	bcs	00106$
	cmp	#0x7a
	bhi	00106$
;../strtoul.c:47: v = c - 'a' + 10;
	txa
	add	#0xa9
	bra	00111$
00106$:
;../strtoul.c:48: else if (c >= 'A' && c <='Z')
	cmp	#0x41
	bcs	00102$
	cmp	#0x5a
	bhi	00102$
;../strtoul.c:49: v = c - 'A' + 10;
	txa
	add	#0xc9
	bra	00111$
00102$:
;../strtoul.c:51: return (-1);
	lda	#0xff
	rts
00111$:
;../strtoul.c:53: if (v >= base)
	cmp	__isdigit_base_65536_134
	bcs	00114$
;../strtoul.c:54: return (-1);
	lda	#0xff
	rts
00114$:
;../strtoul.c:56: return (v);
;../strtoul.c:57: }
	rts
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
;nptr                      Allocated with name '_strtoul_nptr_65536_136'
;__1310720004              Allocated to registers 
;ptr                       Allocated with name '_strtoul_ptr_65536_137'
;ret                       Allocated with name '_strtoul_ret_65536_137'
;range_error               Allocated with name '_strtoul_range_error_65536_137'
;neg                       Allocated with name '_strtoul_neg_65536_137'
;__1310720005              Allocated to registers 
;c                         Allocated to registers 
;__2621440017              Allocated with name '_strtoul___2621440017_262144_144'
;__2621440012              Allocated to registers a 
;__2621440007              Allocated with name '_strtoul___2621440007_262144_144'
;oldret                    Allocated with name '_strtoul_oldret_196608_144'
;digit                     Allocated with name '_strtoul_digit_196608_144'
;__2621440008              Allocated with name '_strtoul___2621440008_262144_149'
;__2621440009              Allocated with name '_strtoul___2621440009_262144_149'
;__2621440010              Allocated with name '_strtoul___2621440010_262144_149'
;r                         Allocated with name '_strtoul_r_327680_150'
;a                         Allocated with name '_strtoul_a_327680_150'
;b                         Allocated with name '_strtoul_b_327680_150'
;result                    Allocated with name '_strtoul_result_393216_151'
;__2621440013              Allocated to registers 
;__2621440014              Allocated with name '_strtoul___2621440014_262144_152'
;__2621440015              Allocated with name '_strtoul___2621440015_262144_152'
;r                         Allocated to registers 
;a                         Allocated with name '_strtoul_a_327680_153'
;b                         Allocated with name '_strtoul_b_327680_153'
;result                    Allocated with name '_strtoul_result_393216_154'
;__2621440018              Allocated with name '_strtoul___2621440018_262144_155'
;__2621440019              Allocated with name '_strtoul___2621440019_262144_155'
;__2621440020              Allocated with name '_strtoul___2621440020_262144_155'
;r                         Allocated with name '_strtoul_r_327680_156'
;a                         Allocated with name '_strtoul_a_327680_156'
;b                         Allocated with name '_strtoul_b_327680_156'
;result                    Allocated with name '_strtoul_result_393216_157'
;------------------------------------------------------------
;../strtoul.c:59: unsigned long int strtoul(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtoul
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strtoul:
	sta	(_strtoul_nptr_65536_136 + 1)
	stx	_strtoul_nptr_65536_136
;../strtoul.c:63: bool range_error = false;
	clra
	sta	_strtoul_range_error_65536_137
;../strtoul.c:64: bool neg = false;
	sta	_strtoul_neg_65536_137
;../strtoul.c:66: while (isblank (*ptr))
	lda	_strtoul_nptr_65536_136
	psha
	pulh
	ldx	(_strtoul_nptr_65536_136 + 1)
00101$:
	lda	,x
	sta	*_strtoul_sloc0_1_0
	lda	*_strtoul_sloc0_1_0
;./../../include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cbeqa	#0x20,00141$
	cmp	#0x09
	bne	00163$
00141$:
;../strtoul.c:67: ptr++;
	aix	#1
	bra	00101$
00163$:
	pshh
	pula
	sta	_strtoul_ptr_65536_137
	stx	(_strtoul_ptr_65536_137 + 1)
;../strtoul.c:70: switch(*ptr)
	lda	*_strtoul_sloc0_1_0
	cbeqa	#0x2b,00105$
	lda	*_strtoul_sloc0_1_0
	cmp	#0x2d
	bne	00106$
;../strtoul.c:73: neg = true;
	lda	#0x01
	sta	_strtoul_neg_65536_137
;../strtoul.c:74: case '+':
00105$:
;../strtoul.c:75: ptr++;
	ldhx	#_strtoul_ptr_65536_137
	inc	1,x
	bne	00235$
	inc	,x
00235$:
;../strtoul.c:76: }
00106$:
;../strtoul.c:84: ptr += 2;
	ldhx	#_strtoul_ptr_65536_137
	lda	1,x
	add	#0x02
	sta	*(_strtoul_sloc1_1_0 + 1)
	lda	,x
	adc	#0x00
	sta	*_strtoul_sloc1_1_0
;../strtoul.c:79: if (!base)
	lda	_strtoul_PARM_3
	ora	(_strtoul_PARM_3 + 1)
	beq	00236$
	jmp	00119$
00236$:
;../strtoul.c:81: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
	lda	#___str_0
	sta	(_strncmp_PARM_2 + 1)
	lda	#>___str_0
	sta	_strncmp_PARM_2
	clra
	sta	_strncmp_PARM_3
	lda	#0x02
	sta	(_strncmp_PARM_3 + 1)
	lda	(_strtoul_ptr_65536_137 + 1)
	ldx	_strtoul_ptr_65536_137
	jsr	_strncmp
	tsta
	bne	00237$
	tstx
00237$:
	beq	00110$
	lda	#___str_1
	sta	(_strncmp_PARM_2 + 1)
	lda	#>___str_1
	sta	_strncmp_PARM_2
	clra
	sta	_strncmp_PARM_3
	lda	#0x02
	sta	(_strncmp_PARM_3 + 1)
	lda	(_strtoul_ptr_65536_137 + 1)
	ldx	_strtoul_ptr_65536_137
	jsr	_strncmp
	tsta
	bne	00239$
	tstx
00239$:
	bne	00111$
00110$:
;../strtoul.c:83: base = 16;
	clra
	sta	_strtoul_PARM_3
	lda	#0x10
	sta	(_strtoul_PARM_3 + 1)
;../strtoul.c:84: ptr += 2;
	lda	*_strtoul_sloc1_1_0
	sta	_strtoul_ptr_65536_137
	lda	*(_strtoul_sloc1_1_0 + 1)
	sta	(_strtoul_ptr_65536_137 + 1)
	jmp	00120$
00111$:
;../strtoul.c:86: else if (*ptr == '0')
	lda	_strtoul_ptr_65536_137
	psha
	pulh
	ldx	(_strtoul_ptr_65536_137 + 1)
	lda	,x
	cmp	#0x30
	bne	00108$
;../strtoul.c:88: base = 8;
	clra
	sta	_strtoul_PARM_3
	lda	#0x08
	sta	(_strtoul_PARM_3 + 1)
;../strtoul.c:89: ptr++;
	ldhx	#_strtoul_ptr_65536_137
	inc	1,x
	bne	00242$
	inc	,x
00242$:
	bra	00120$
00108$:
;../strtoul.c:92: base = 10;
	clra
	sta	_strtoul_PARM_3
	lda	#0x0a
	sta	(_strtoul_PARM_3 + 1)
	bra	00120$
00119$:
;../strtoul.c:95: else if (base == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
	lda	(_strtoul_PARM_3 + 1)
	cmp	#0x10
	bne	00243$
	lda	_strtoul_PARM_3
	cbeqa	#0x00,00244$
00243$:
	bra	00120$
00244$:
	lda	#___str_0
	sta	(_strncmp_PARM_2 + 1)
	lda	#>___str_0
	sta	_strncmp_PARM_2
	clra
	sta	_strncmp_PARM_3
	lda	#0x02
	sta	(_strncmp_PARM_3 + 1)
	lda	(_strtoul_ptr_65536_137 + 1)
	ldx	_strtoul_ptr_65536_137
	jsr	_strncmp
	tsta
	bne	00245$
	tstx
00245$:
	beq	00114$
	lda	#___str_1
	sta	(_strncmp_PARM_2 + 1)
	lda	#>___str_1
	sta	_strncmp_PARM_2
	clra
	sta	_strncmp_PARM_3
	lda	#0x02
	sta	(_strncmp_PARM_3 + 1)
	lda	(_strtoul_ptr_65536_137 + 1)
	ldx	_strtoul_ptr_65536_137
	jsr	_strncmp
	tsta
	bne	00247$
	tstx
00247$:
	bne	00120$
00114$:
;../strtoul.c:96: ptr += 2;
	lda	*_strtoul_sloc1_1_0
	sta	_strtoul_ptr_65536_137
	lda	*(_strtoul_sloc1_1_0 + 1)
	sta	(_strtoul_ptr_65536_137 + 1)
00120$:
;../strtoul.c:100: if (_isdigit (*ptr, base) < 0)
	lda	_strtoul_ptr_65536_137
	psha
	pulh
	ldx	(_strtoul_ptr_65536_137 + 1)
	lda	,x
	ldx	(_strtoul_PARM_3 + 1)
	stx	*_strtoul_sloc1_1_0
	ldx	*_strtoul_sloc1_1_0
	jsr	__isdigit
	tax
;../strtoul.c:103: *endptr = (char*)nptr;
	lda	_strtoul_PARM_2
	sta	*_strtoul_sloc2_1_0
	lda	(_strtoul_PARM_2 + 1)
	sta	*(_strtoul_sloc2_1_0 + 1)
;../strtoul.c:100: if (_isdigit (*ptr, base) < 0)
	cpx	#0x00
	bge	00124$
;../strtoul.c:102: if (endptr)
	lda	_strtoul_PARM_2
	ora	(_strtoul_PARM_2 + 1)
	beq	00122$
;../strtoul.c:103: *endptr = (char*)nptr;
	ldhx	*_strtoul_sloc2_1_0
	lda	_strtoul_nptr_65536_136
	sta	,x
	lda	(_strtoul_nptr_65536_136 + 1)
	sta	1,x
00122$:
;../strtoul.c:104: return (0);
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00124$:
;../strtoul.c:107: for (ret = 0;; ptr++)
	ldhx	#_strtoul_ret_65536_137
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	lda	_strtoul_ptr_65536_137
	sta	*_strtoul_sloc3_1_0
	lda	(_strtoul_ptr_65536_137 + 1)
	sta	*(_strtoul_sloc3_1_0 + 1)
00136$:
;../strtoul.c:110: signed char digit = _isdigit (*ptr, base);
	ldhx	*_strtoul_sloc3_1_0
	lda	,x
	ldx	*_strtoul_sloc1_1_0
	jsr	__isdigit
	sta	_strtoul_digit_196608_144
;../strtoul.c:112: if (digit < 0)
	lda	_strtoul_digit_196608_144
	cmp	#0x00
	bge	00251$
	jmp	00127$
00251$:
;../strtoul.c:117: range_error |= ckd_mul(&ret, ret, base);
	lda	(_strtoul_PARM_3 + 1)
	sta	(__mullonglong_PARM_2 + 7)
	lda	_strtoul_PARM_3
	sta	(__mullonglong_PARM_2 + 6)
	rola	
	clra	
	sbc	#0x00
	sta	(__mullonglong_PARM_2 + 5)
	sta	(__mullonglong_PARM_2 + 4)
	sta	(__mullonglong_PARM_2 + 3)
	sta	(__mullonglong_PARM_2 + 2)
	sta	(__mullonglong_PARM_2 + 1)
	sta	__mullonglong_PARM_2
	lda	(_strtoul_ret_65536_137 + 3)
	sta	(__mullonglong_PARM_1 + 7)
	lda	(_strtoul_ret_65536_137 + 2)
	sta	(__mullonglong_PARM_1 + 6)
	lda	(_strtoul_ret_65536_137 + 1)
	sta	(__mullonglong_PARM_1 + 5)
	lda	_strtoul_ret_65536_137
	sta	(__mullonglong_PARM_1 + 4)
	clra
	sta	(__mullonglong_PARM_1 + 3)
	sta	(__mullonglong_PARM_1 + 2)
	sta	(__mullonglong_PARM_1 + 1)
	sta	__mullonglong_PARM_1
;./../../include/stdckdint.h:76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
	jsr	__mullonglong
	sta	*(_strtoul_sloc4_1_0 + 7)
	stx	*(_strtoul_sloc4_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(_strtoul_sloc4_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(_strtoul_sloc4_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(_strtoul_sloc4_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(_strtoul_sloc4_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(_strtoul_sloc4_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*_strtoul_sloc4_1_0
	ldhx	#_strtoul_result_393216_154
	mov	*_strtoul_sloc4_1_0,x+
	mov	*(_strtoul_sloc4_1_0 + 1),x+
	mov	*(_strtoul_sloc4_1_0 + 2),x+
	mov	*(_strtoul_sloc4_1_0 + 3),x+
	mov	*(_strtoul_sloc4_1_0 + 4),x+
	mov	*(_strtoul_sloc4_1_0 + 5),x+
	mov	*(_strtoul_sloc4_1_0 + 6),x+
	mov	*(_strtoul_sloc4_1_0 + 7),x+
	mov	*(_strtoul_sloc4_1_0 + 7),*(_strtoul_sloc4_1_0 + 3)
	mov	*(_strtoul_sloc4_1_0 + 6),*(_strtoul_sloc4_1_0 + 2)
	mov	*(_strtoul_sloc4_1_0 + 5),*(_strtoul_sloc4_1_0 + 1)
	mov	*(_strtoul_sloc4_1_0 + 4),*_strtoul_sloc4_1_0
	lda	*_strtoul_sloc4_1_0
	sta	_strtoul_ret_65536_137
	lda	*(_strtoul_sloc4_1_0 + 1)
	sta	(_strtoul_ret_65536_137 + 1)
	lda	*(_strtoul_sloc4_1_0 + 2)
	sta	(_strtoul_ret_65536_137 + 2)
	lda	*(_strtoul_sloc4_1_0 + 3)
	sta	(_strtoul_ret_65536_137 + 3)
	mov	*(_strtoul_sloc4_1_0 + 3),*(_strtoul_sloc4_1_0 + 7)
	mov	*(_strtoul_sloc4_1_0 + 2),*(_strtoul_sloc4_1_0 + 6)
	mov	*(_strtoul_sloc4_1_0 + 1),*(_strtoul_sloc4_1_0 + 5)
	mov	*_strtoul_sloc4_1_0,*(_strtoul_sloc4_1_0 + 4)
	mov	#0x00,*(_strtoul_sloc4_1_0 + 3)
	mov	#0x00,*(_strtoul_sloc4_1_0 + 2)
	mov	#0x00,*(_strtoul_sloc4_1_0 + 1)
	mov	#0x00,*_strtoul_sloc4_1_0
	lda	*(_strtoul_sloc4_1_0 + 7)
	cmp	(_strtoul_result_393216_154 + 7)
	bne	00252$
	lda	*(_strtoul_sloc4_1_0 + 6)
	cmp	(_strtoul_result_393216_154 + 6)
	bne	00252$
	lda	*(_strtoul_sloc4_1_0 + 5)
	cmp	(_strtoul_result_393216_154 + 5)
	bne	00252$
	lda	*(_strtoul_sloc4_1_0 + 4)
	cmp	(_strtoul_result_393216_154 + 4)
	bne	00252$
	lda	*(_strtoul_sloc4_1_0 + 3)
	cmp	(_strtoul_result_393216_154 + 3)
	bne	00252$
	lda	*(_strtoul_sloc4_1_0 + 2)
	cmp	(_strtoul_result_393216_154 + 2)
	bne	00252$
	lda	*(_strtoul_sloc4_1_0 + 1)
	cmp	(_strtoul_result_393216_154 + 1)
	bne	00252$
	lda	*_strtoul_sloc4_1_0
	cmp	_strtoul_result_393216_154
	beq	00254$
00252$:
	clra
	bra	00253$
00254$:
	lda	#0x01
00253$:
	eor	#0x01
;../strtoul.c:117: range_error |= ckd_mul(&ret, ret, base);
	ora	_strtoul_range_error_65536_137
	sta	_strtoul_range_error_65536_137
;../strtoul.c:125: ret += (unsigned char)digit;
	lda	_strtoul_digit_196608_144
	sta	*(_strtoul_sloc4_1_0 + 3)
	mov	#0x00,*(_strtoul_sloc4_1_0 + 2)
	mov	#0x00,*(_strtoul_sloc4_1_0 + 1)
	mov	#0x00,*_strtoul_sloc4_1_0
	ldhx	#_strtoul_ret_65536_137
	lda	3,x
	add	*(_strtoul_sloc4_1_0 + 3)
	sta	3,x
	lda	2,x
	adc	*(_strtoul_sloc4_1_0 + 2)
	sta	2,x
	lda	1,x
	adc	*(_strtoul_sloc4_1_0 + 1)
	sta	1,x
	lda	,x
	adc	*_strtoul_sloc4_1_0
	sta	,x
;../strtoul.c:107: for (ret = 0;; ptr++)
	ldhx	*_strtoul_sloc3_1_0
	aix	#1
	sthx	*_strtoul_sloc3_1_0
	jmp	00136$
00127$:
;../strtoul.c:128: if (endptr)
	lda	_strtoul_PARM_2
	ora	(_strtoul_PARM_2 + 1)
	beq	00129$
;../strtoul.c:129: *endptr = (char*)ptr;
	ldhx	*_strtoul_sloc2_1_0
	lda	*_strtoul_sloc3_1_0
	sta	,x
	lda	*(_strtoul_sloc3_1_0 + 1)
	sta	1,x
00129$:
;../strtoul.c:131: if (range_error)
	lda	_strtoul_range_error_65536_137
	beq	00131$
;../strtoul.c:133: errno = ERANGE;
	clra
	sta	_errno
	lda	#0x22
	sta	(_errno + 1)
;../strtoul.c:134: return (ULONG_MAX);
	lda	#0xff
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00131$:
;../strtoul.c:137: return (neg ? -ret : ret);
	lda	_strtoul_neg_65536_137
	beq	00143$
	clra
	sub	(_strtoul_ret_65536_137 + 3)
	sta	*(_strtoul_sloc4_1_0 + 3)
	clra
	sbc	(_strtoul_ret_65536_137 + 2)
	sta	*(_strtoul_sloc4_1_0 + 2)
	clra
	sbc	(_strtoul_ret_65536_137 + 1)
	sta	*(_strtoul_sloc4_1_0 + 1)
	clra
	sbc	_strtoul_ret_65536_137
	sta	*_strtoul_sloc4_1_0
	bra	00144$
00143$:
	ldhx	#_strtoul_ret_65536_137
	mov	,x+,*_strtoul_sloc4_1_0
	mov	,x+,*(_strtoul_sloc4_1_0 + 1)
	mov	,x+,*(_strtoul_sloc4_1_0 + 2)
	mov	,x+,*(_strtoul_sloc4_1_0 + 3)
00144$:
	mov	*_strtoul_sloc4_1_0,*___SDCC_hc08_ret3
	mov	*(_strtoul_sloc4_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_strtoul_sloc4_1_0 + 2)
	lda	*(_strtoul_sloc4_1_0 + 3)
;../strtoul.c:138: }
	rts
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
