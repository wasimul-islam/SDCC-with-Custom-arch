;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _logexpf
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __fs_natural_log_table
	.globl __fs_cordic_rshift_r765_unsigned
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
;Allocation info for local variables in function '_fs_cordic_rshift_r765_unsigned'
;------------------------------------------------------------
;	_logexpf.c:39: void _fs_cordic_rshift_r765_unsigned(void) __naked
;	-----------------------------------------
;	 function _fs_cordic_rshift_r765_unsigned
;	-----------------------------------------
__fs_cordic_rshift_r765_unsigned:
;	naked function: no prologue.
;	_logexpf.c:93: __endasm;
	ar2	= 0x02
	ar3	= 0x03
	ar4	= 0x04
	ar5	= 0x05
	ar6	= 0x06
	ar7	= 0x07
	ar0	= 0x00
	ar1	= 0x01
	add	a, #248
	jnc	00003$
	mov	b, r5
	mov	r5, ar6
	mov	r6, ar7
	mov	r7, #0
	add	a, #248
	jnc	00003$
	mov	b, r5
	mov	r5, ar6
	mov	r6, #0
	add	a, #248
	jnc	00003$
	mov	b, r5
	mov	r5, #0
	add	a, #248
	jnc	00003$
	mov	b, #0
	ret
00003$:
	add	a, #8
	jz	00030$
	push	ar0
	mov	r0, a
00010$:
	clr	c
	mov	a, r7
	rrc	a
	mov	r7, a
	mov	a, r6
	rrc	a
	mov	r6, a
	mov	a, r5
	rrc	a
	mov	r5, a
	mov	a, b
	rrc	a
	mov	b, a
	djnz	r0, 00010$
	pop	ar0
00030$:
	ret
;	_logexpf.c:94: }
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
__fs_natural_log_table:
	.db #0xff	; 255
	.db #0x42	; 66	'B'
	.db #0x2e	; 46
	.db #0x16	; 22
	.db #0xf6	; 246
	.db #0x91	; 145
	.db #0xf9	; 249
	.db #0x0c	; 12
	.db #0xf2	; 242
	.db #0xfd	; 253
	.db #0x23	; 35
	.db #0x07	; 7
	.db #0xee	; 238
	.db #0xe0	; 224
	.db #0xc4	; 196
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0xa3	; 163
	.db #0xf0	; 240
	.db #0x01	; 1
	.db #0xd8	; 216
	.db #0x14	; 20
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xa3	; 163
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x0b	; 11
	.db #0xf0	; 240
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xfc	; 252
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
