;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module strtoul
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
	.globl _strtoul_PARM_3
	.globl _strtoul_PARM_2
	.globl _strtoul
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strtoul_sloc0_1_0:
	.ds 2
_strtoul_sloc1_1_0:
	.ds 2
_strtoul_sloc2_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
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
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;------------------------------------------------------------
;Allocation info for local variables in function '_isdigit'
;------------------------------------------------------------
;base                      Allocated with name '__isdigit_base_65536_134'
;c                         Allocated to registers a 
;v                         Allocated to registers a 
;------------------------------------------------------------
;	../strtoul.c: 40: static signed char _isdigit(const char c, unsigned char base)
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__isdigit:
	stx	__isdigit_base_65536_134
;	../strtoul.c: 44: if (c >= '0' && c <= '9')
	cmp	#0x30
	bcc	00110$
	cmp	#0x39
	beq	00146$
	bcs	00110$
00146$:
;	../strtoul.c: 45: v = c - '0';
	sec
	sbc	#0x30
	jmp	00111$
00110$:
;	../strtoul.c: 46: else if (c >= 'a' && c <='z')
	cmp	#0x61
	bcc	00106$
	cmp	#0x7a
	beq	00149$
	bcs	00106$
00149$:
;	../strtoul.c: 47: v = c - 'a' + 10;
	clc
	adc	#0xa9
	jmp	00111$
00106$:
;	../strtoul.c: 48: else if (c >= 'A' && c <='Z')
	cmp	#0x41
	bcc	00102$
	cmp	#0x5a
	beq	00152$
	bcs	00102$
00152$:
;	../strtoul.c: 49: v = c - 'A' + 10;
	clc
	adc	#0xc9
	jmp	00111$
00102$:
;	../strtoul.c: 51: return (-1);
	lda	#0xff
	rts
00111$:
;	../strtoul.c: 53: if (v >= base)
	cmp	__isdigit_base_65536_134
	bcc	00114$
;	../strtoul.c: 54: return (-1);
	lda	#0xff
;	../strtoul.c: 56: return (v);
;	../strtoul.c: 57: }
00114$:
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'strtoul'
;------------------------------------------------------------
;sloc0                     Allocated with name '_strtoul_sloc0_1_0'
;sloc1                     Allocated with name '_strtoul_sloc1_1_0'
;sloc2                     Allocated with name '_strtoul_sloc2_1_0'
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
;	../strtoul.c: 59: unsigned long int strtoul(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtoul
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strtoul:
	sta	_strtoul_nptr_65536_136
	stx	(_strtoul_nptr_65536_136 + 1)
;	../strtoul.c: 63: bool range_error = false;
	ldx	#0x00
	stx	_strtoul_range_error_65536_137
;	../strtoul.c: 64: bool neg = false;
	stx	_strtoul_neg_65536_137
;	../strtoul.c: 66: while (isblank (*ptr))
	lda	_strtoul_nptr_65536_136
	sta	*_strtoul_sloc0_1_0
	lda	(_strtoul_nptr_65536_136 + 1)
	sta	*(_strtoul_sloc0_1_0 + 1)
00101$:
	ldy	#0x00
	lda	[*_strtoul_sloc0_1_0],y
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cmp	#0x20
	beq	00141$
	cmp	#0x09
	bne	00163$
00141$:
;	../strtoul.c: 67: ptr++;
	inc	*_strtoul_sloc0_1_0
	bne	00101$
	inc	*(_strtoul_sloc0_1_0 + 1)
	jmp	00101$
00163$:
	lda	*_strtoul_sloc0_1_0
	sta	_strtoul_ptr_65536_137
	lda	*(_strtoul_sloc0_1_0 + 1)
	sta	(_strtoul_ptr_65536_137 + 1)
;	../strtoul.c: 70: switch(*ptr)
	ldy	#0x00
	lda	[*_strtoul_sloc0_1_0],y
	cmp	#0x2b
	beq	00105$
	cmp	#0x2d
	bne	00106$
;	../strtoul.c: 73: neg = true;
	ldx	#0x01
	stx	_strtoul_neg_65536_137
;	../strtoul.c: 74: case '+':
00105$:
;	../strtoul.c: 75: ptr++;
	inc	_strtoul_ptr_65536_137
	bne	00219$
	inc	(_strtoul_ptr_65536_137 + 1)
00219$:
;	../strtoul.c: 76: }
00106$:
;	../strtoul.c: 79: if (!base)
	lda	(_strtoul_PARM_3 + 1)
	ora	_strtoul_PARM_3
	beq	00220$
	jmp	00119$
00220$:
;	../strtoul.c: 81: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
	lda	#___str_0
	sta	_strncmp_PARM_2
	lda	#>___str_0
	sta	(_strncmp_PARM_2 + 1)
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldx	#0x00
	stx	(_strncmp_PARM_3 + 1)
	ldx	(_strtoul_ptr_65536_137 + 1)
	lda	_strtoul_ptr_65536_137
	jsr	_strncmp
	cmp	#0x00
	bne	00221$
	cpx	#0x00
00221$:
	beq	00110$
	lda	#___str_1
	sta	_strncmp_PARM_2
	lda	#>___str_1
	sta	(_strncmp_PARM_2 + 1)
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldx	#0x00
	stx	(_strncmp_PARM_3 + 1)
	ldx	(_strtoul_ptr_65536_137 + 1)
	lda	_strtoul_ptr_65536_137
	jsr	_strncmp
	cmp	#0x00
	bne	00223$
	cpx	#0x00
00223$:
	bne	00111$
00110$:
;	../strtoul.c: 83: base = 16;
	ldx	#0x10
	stx	_strtoul_PARM_3
	ldx	#0x00
	stx	(_strtoul_PARM_3 + 1)
;	../strtoul.c: 84: ptr += 2;
	lda	_strtoul_ptr_65536_137
	clc
	adc	#0x02
	sta	_strtoul_ptr_65536_137
	bcc	00225$
	inc	(_strtoul_ptr_65536_137 + 1)
00225$:
	jmp	00120$
00111$:
;	../strtoul.c: 86: else if (*ptr == '0')
	lda	_strtoul_ptr_65536_137
	sta	*(__DPTR+0)
	lda	(_strtoul_ptr_65536_137 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	cmp	#0x30
	bne	00108$
;	../strtoul.c: 88: base = 8;
	ldx	#0x08
	stx	_strtoul_PARM_3
	sty	(_strtoul_PARM_3 + 1)
;	../strtoul.c: 89: ptr++;
	inc	_strtoul_ptr_65536_137
	bne	00120$
	inc	(_strtoul_ptr_65536_137 + 1)
	jmp	00120$
00108$:
;	../strtoul.c: 92: base = 10;
	ldx	#0x0a
	stx	_strtoul_PARM_3
	ldx	#0x00
	stx	(_strtoul_PARM_3 + 1)
	jmp	00120$
00119$:
;	../strtoul.c: 95: else if (base == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
	lda	_strtoul_PARM_3
	cmp	#0x10
	bne	00120$
	lda	(_strtoul_PARM_3 + 1)
	bne	00120$
	lda	#___str_0
	sta	_strncmp_PARM_2
	lda	#>___str_0
	sta	(_strncmp_PARM_2 + 1)
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldx	#0x00
	stx	(_strncmp_PARM_3 + 1)
	ldx	(_strtoul_ptr_65536_137 + 1)
	lda	_strtoul_ptr_65536_137
	jsr	_strncmp
	cmp	#0x00
	bne	00231$
	cpx	#0x00
00231$:
	beq	00114$
	lda	#___str_1
	sta	_strncmp_PARM_2
	lda	#>___str_1
	sta	(_strncmp_PARM_2 + 1)
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldx	#0x00
	stx	(_strncmp_PARM_3 + 1)
	ldx	(_strtoul_ptr_65536_137 + 1)
	lda	_strtoul_ptr_65536_137
	jsr	_strncmp
	cmp	#0x00
	bne	00233$
	cpx	#0x00
00233$:
	bne	00120$
00114$:
;	../strtoul.c: 96: ptr += 2;
	lda	_strtoul_ptr_65536_137
	clc
	adc	#0x02
	sta	_strtoul_ptr_65536_137
	bcc	00235$
	inc	(_strtoul_ptr_65536_137 + 1)
00235$:
00120$:
;	../strtoul.c: 100: if (_isdigit (*ptr, base) < 0)
	lda	_strtoul_ptr_65536_137
	sta	*(__DPTR+0)
	lda	(_strtoul_ptr_65536_137 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	ldx	_strtoul_PARM_3
	stx	*_strtoul_sloc0_1_0
	jsr	__isdigit
	sec
	sbc	#0x00
	bvc	00237$
	bpl	00236$
	bmi	00124$
00237$:
	bpl	00124$
00236$:
;	../strtoul.c: 102: if (endptr)
	lda	(_strtoul_PARM_2 + 1)
	ora	_strtoul_PARM_2
	beq	00122$
;	../strtoul.c: 103: *endptr = (char*)nptr;
	lda	_strtoul_PARM_2
	ldx	(_strtoul_PARM_2 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	_strtoul_nptr_65536_136
	ldy	#0x00
	sta	[__DPTR],y
	lda	(_strtoul_nptr_65536_136 + 1)
	iny
	sta	[__DPTR],y
00122$:
;	../strtoul.c: 104: return (0);
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00124$:
;	../strtoul.c: 107: for (ret = 0;; ptr++)
	ldx	#0x00
	stx	_strtoul_ret_65536_137
	stx	(_strtoul_ret_65536_137 + 1)
	stx	(_strtoul_ret_65536_137 + 2)
	stx	(_strtoul_ret_65536_137 + 3)
	lda	_strtoul_ptr_65536_137
	sta	*_strtoul_sloc1_1_0
	lda	(_strtoul_ptr_65536_137 + 1)
	sta	*(_strtoul_sloc1_1_0 + 1)
00136$:
;	../strtoul.c: 110: signed char digit = _isdigit (*ptr, base);
	ldy	#0x00
	lda	[*_strtoul_sloc1_1_0],y
	ldx	*_strtoul_sloc0_1_0
	jsr	__isdigit
;	../strtoul.c: 112: if (digit < 0)
	sta	_strtoul_digit_196608_144
	sec
	sbc	#0x00
	bvs	00241$
	bpl	00240$
	bmi	00242$
00241$:
	bmi	00240$
00242$:
	jmp	00127$
00240$:
;	../strtoul.c: 117: range_error |= ckd_mul(&ret, ret, base);
	lda	_strtoul_PARM_3
	sta	__mullonglong_PARM_2
	lda	(_strtoul_PARM_3 + 1)
	sta	(__mullonglong_PARM_2 + 1)
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	(__mullonglong_PARM_2 + 2)
	sta	(__mullonglong_PARM_2 + 3)
	sta	(__mullonglong_PARM_2 + 4)
	sta	(__mullonglong_PARM_2 + 5)
	sta	(__mullonglong_PARM_2 + 6)
	sta	(__mullonglong_PARM_2 + 7)
	lda	_strtoul_ret_65536_137
	sta	__mullonglong_PARM_1
	lda	(_strtoul_ret_65536_137 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	(_strtoul_ret_65536_137 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(_strtoul_ret_65536_137 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	ldx	#0x00
	stx	(__mullonglong_PARM_1 + 4)
	stx	(__mullonglong_PARM_1 + 5)
	stx	(__mullonglong_PARM_1 + 6)
	stx	(__mullonglong_PARM_1 + 7)
;	./../../include/stdckdint.h: 76: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
	jsr	__mullonglong
	sta	*_strtoul_sloc2_1_0
	stx	*(_strtoul_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_strtoul_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_strtoul_sloc2_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(_strtoul_sloc2_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(_strtoul_sloc2_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(_strtoul_sloc2_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(_strtoul_sloc2_1_0 + 7)
	lda	*_strtoul_sloc2_1_0
	sta	_strtoul_result_393216_154
	lda	*(_strtoul_sloc2_1_0 + 1)
	sta	(_strtoul_result_393216_154 + 1)
	lda	*(_strtoul_sloc2_1_0 + 2)
	sta	(_strtoul_result_393216_154 + 2)
	lda	*(_strtoul_sloc2_1_0 + 3)
	sta	(_strtoul_result_393216_154 + 3)
	lda	*(_strtoul_sloc2_1_0 + 4)
	sta	(_strtoul_result_393216_154 + 4)
	lda	*(_strtoul_sloc2_1_0 + 5)
	sta	(_strtoul_result_393216_154 + 5)
	lda	*(_strtoul_sloc2_1_0 + 6)
	sta	(_strtoul_result_393216_154 + 6)
	lda	*(_strtoul_sloc2_1_0 + 7)
	sta	(_strtoul_result_393216_154 + 7)
	lda	*(_strtoul_sloc2_1_0 + 3)
	sta	(_strtoul_ret_65536_137 + 3)
	lda	*(_strtoul_sloc2_1_0 + 2)
	sta	(_strtoul_ret_65536_137 + 2)
	lda	*(_strtoul_sloc2_1_0 + 1)
	sta	(_strtoul_ret_65536_137 + 1)
	lda	*_strtoul_sloc2_1_0
	sta	_strtoul_ret_65536_137
	lda	*(_strtoul_sloc2_1_0 + 3)
	ldx	#0x00
	stx	*(_strtoul_sloc2_1_0 + 4)
	stx	*(_strtoul_sloc2_1_0 + 5)
	stx	*(_strtoul_sloc2_1_0 + 6)
	stx	*(_strtoul_sloc2_1_0 + 7)
	lda	*_strtoul_sloc2_1_0
	cmp	_strtoul_result_393216_154
	bne	00244$
	lda	*(_strtoul_sloc2_1_0 + 1)
	cmp	(_strtoul_result_393216_154 + 1)
	bne	00244$
	lda	*(_strtoul_sloc2_1_0 + 2)
	cmp	(_strtoul_result_393216_154 + 2)
	bne	00244$
	lda	*(_strtoul_sloc2_1_0 + 3)
	cmp	(_strtoul_result_393216_154 + 3)
	bne	00244$
	lda	*(_strtoul_sloc2_1_0 + 4)
	cmp	(_strtoul_result_393216_154 + 4)
	bne	00244$
	lda	*(_strtoul_sloc2_1_0 + 5)
	cmp	(_strtoul_result_393216_154 + 5)
	bne	00244$
	lda	*(_strtoul_sloc2_1_0 + 6)
	cmp	(_strtoul_result_393216_154 + 6)
	bne	00244$
	lda	*(_strtoul_sloc2_1_0 + 7)
	cmp	(_strtoul_result_393216_154 + 7)
	beq	00252$
00244$:
	txa
	jmp	00251$
00252$:
	lda	#0x01
00251$:
	eor	#0x01
;	../strtoul.c: 117: range_error |= ckd_mul(&ret, ret, base);
	ora	_strtoul_range_error_65536_137
	sta	_strtoul_range_error_65536_137
;	../strtoul.c: 125: ret += (unsigned char)digit;
	lda	_strtoul_digit_196608_144
	sta	*_strtoul_sloc2_1_0
	stx	*(_strtoul_sloc2_1_0 + 1)
	stx	*(_strtoul_sloc2_1_0 + 2)
	stx	*(_strtoul_sloc2_1_0 + 3)
	lda	_strtoul_ret_65536_137
	clc
	adc	*_strtoul_sloc2_1_0
	sta	_strtoul_ret_65536_137
	lda	(_strtoul_ret_65536_137 + 1)
	adc	*(_strtoul_sloc2_1_0 + 1)
	sta	(_strtoul_ret_65536_137 + 1)
	lda	(_strtoul_ret_65536_137 + 2)
	adc	*(_strtoul_sloc2_1_0 + 2)
	sta	(_strtoul_ret_65536_137 + 2)
	lda	(_strtoul_ret_65536_137 + 3)
	adc	*(_strtoul_sloc2_1_0 + 3)
	sta	(_strtoul_ret_65536_137 + 3)
;	../strtoul.c: 107: for (ret = 0;; ptr++)
	inc	*_strtoul_sloc1_1_0
	bne	00253$
	inc	*(_strtoul_sloc1_1_0 + 1)
00253$:
	jmp	00136$
00127$:
;	../strtoul.c: 128: if (endptr)
	lda	(_strtoul_PARM_2 + 1)
	ora	_strtoul_PARM_2
	beq	00129$
;	../strtoul.c: 129: *endptr = (char*)ptr;
	lda	_strtoul_PARM_2
	ldx	(_strtoul_PARM_2 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	lda	*_strtoul_sloc1_1_0
	ldy	#0x00
	sta	[__DPTR],y
	lda	*(_strtoul_sloc1_1_0 + 1)
	iny
	sta	[__DPTR],y
00129$:
;	../strtoul.c: 131: if (range_error)
	lda	_strtoul_range_error_65536_137
	beq	00131$
;	../strtoul.c: 133: errno = ERANGE;
	ldx	#0x22
	stx	_errno
	ldx	#0x00
	stx	(_errno + 1)
;	../strtoul.c: 134: return (ULONG_MAX);
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
00131$:
;	../strtoul.c: 137: return (neg ? -ret : ret);
	lda	_strtoul_neg_65536_137
	beq	00143$
	lda	#0x00
	sec
	sbc	_strtoul_ret_65536_137
	sta	*_strtoul_sloc2_1_0
	lda	#0x00
	sbc	(_strtoul_ret_65536_137 + 1)
	sta	*(_strtoul_sloc2_1_0 + 1)
	lda	#0x00
	sbc	(_strtoul_ret_65536_137 + 2)
	sta	*(_strtoul_sloc2_1_0 + 2)
	lda	#0x00
	sbc	(_strtoul_ret_65536_137 + 3)
	sta	*(_strtoul_sloc2_1_0 + 3)
	jmp	00144$
00143$:
	lda	_strtoul_ret_65536_137
	sta	*_strtoul_sloc2_1_0
	lda	(_strtoul_ret_65536_137 + 1)
	sta	*(_strtoul_sloc2_1_0 + 1)
	lda	(_strtoul_ret_65536_137 + 2)
	sta	*(_strtoul_sloc2_1_0 + 2)
	lda	(_strtoul_ret_65536_137 + 3)
	sta	*(_strtoul_sloc2_1_0 + 3)
00144$:
	lda	*(_strtoul_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_strtoul_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_strtoul_sloc2_1_0 + 1)
	lda	*_strtoul_sloc2_1_0
;	../strtoul.c: 138: }
	rts
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.ascii "0x"
	.db 0x00
	.area CODE
	.area RODATA
___str_1:
	.ascii "0X"
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
