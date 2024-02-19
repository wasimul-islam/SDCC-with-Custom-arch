;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module sprintf
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
	.globl __print_format
	.globl _vsprintf_PARM_3
	.globl _vsprintf_PARM_2
	.globl _vsprintf
	.globl _sprintf
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
_vsprintf_PARM_2:
	.ds 2
_vsprintf_PARM_3:
	.ds 2
_vsprintf_buf_65536_13:
	.ds 2
_vsprintf_i_65536_14:
	.ds 2
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
;Allocation info for local variables in function 'put_char_to_string'
;------------------------------------------------------------
;p                         Allocated to stack - sp +7
;c                         Allocated to registers a 
;buf                       Allocated to registers x h 
;sloc0                     Allocated to stack - sp +3
;sloc1                     Allocated to stack - sp +1
;------------------------------------------------------------
;../sprintf.c:34: put_char_to_string (char c, void* p) _REENTRANT
;	-----------------------------------------
;	 function put_char_to_string
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_put_char_to_string:
	ais	#-4
;../sprintf.c:36: char **buf = (char **)p;
	ldx	7,s
	pshx
	pulh
	ldx	8,s
;../sprintf.c:37: *(*buf)++ = c;
	psha
	lda	,x
	sta	4,s
	lda	1,x
	sta	5,s
	lda	5,s
	add	#0x01
	sta	3,s
	lda	4,s
	adc	#0
	sta	2,s
	lda	2,s
	sta	,x
	lda	3,s
	sta	1,x
	pula
	ldx	3,s
	pshx
	pulh
	ldx	4,s
	sta	,x
;../sprintf.c:38: }
	ais	#4
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'vsprintf'
;------------------------------------------------------------
;format                    Allocated with name '_vsprintf_PARM_2'
;ap                        Allocated with name '_vsprintf_PARM_3'
;buf                       Allocated with name '_vsprintf_buf_65536_13'
;i                         Allocated with name '_vsprintf_i_65536_14'
;------------------------------------------------------------
;../sprintf.c:41: vsprintf (char *buf, const char *format, va_list ap)
;	-----------------------------------------
;	 function vsprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_vsprintf:
	sta	(_vsprintf_buf_65536_13 + 1)
	stx	_vsprintf_buf_65536_13
;../sprintf.c:44: i = _print_format (put_char_to_string, &buf, format, ap);
	lda	#_vsprintf_buf_65536_13
	sta	(__print_format_PARM_2 + 1)
	lda	#>_vsprintf_buf_65536_13
	sta	__print_format_PARM_2
	lda	_vsprintf_PARM_2
	sta	__print_format_PARM_3
	lda	(_vsprintf_PARM_2 + 1)
	sta	(__print_format_PARM_3 + 1)
	lda	_vsprintf_PARM_3
	sta	__print_format_PARM_4
	lda	(_vsprintf_PARM_3 + 1)
	sta	(__print_format_PARM_4 + 1)
	lda	#_put_char_to_string
	ldx	#>_put_char_to_string
	jsr	__print_format
	sta	(_vsprintf_i_65536_14 + 1)
	stx	_vsprintf_i_65536_14
;../sprintf.c:45: *buf = 0;
	lda	_vsprintf_buf_65536_13
	ldx	(_vsprintf_buf_65536_13 + 1)
	psha
	pulh
	clra
	sta	,x
;../sprintf.c:46: return i;
	ldx	_vsprintf_i_65536_14
	lda	(_vsprintf_i_65536_14 + 1)
;../sprintf.c:47: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'sprintf'
;------------------------------------------------------------
;buf                       Allocated to stack - sp +5
;format                    Allocated to stack - sp +7
;arg                       Allocated to registers 
;i                         Allocated to stack - sp +1
;------------------------------------------------------------
;../sprintf.c:50: sprintf (char *buf, const char *format, ...)
;	-----------------------------------------
;	 function sprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_sprintf:
	ais	#-2
;../sprintf.c:55: va_start (arg, format);
	tsx
	aix	#6
	aix	#2
	pshh
	pula
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
;../sprintf.c:56: i = _print_format (put_char_to_string, &buf, format, arg);
	tsx
	aix	#4
	stx	(__print_format_PARM_2 + 1)
	pshh
	pula
	sta	__print_format_PARM_2
	tsx
	lda	6,x
	sta	__print_format_PARM_3
	lda	7,x
	sta	(__print_format_PARM_3 + 1)
	lda	#_put_char_to_string
	ldx	#>_put_char_to_string
	jsr	__print_format
	sta	2,s
	stx	1,s
;../sprintf.c:57: *buf = 0;
	lda	5,s
	ldx	6,s
	psha
	pulh
	clra
	sta	,x
;../sprintf.c:60: return i;
	tsx
	ldx	,x
	lda	2,s
;../sprintf.c:61: }
	ais	#2
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
