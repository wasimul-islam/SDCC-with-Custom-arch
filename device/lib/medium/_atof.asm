;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _atof
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
	.globl _toupper
	.globl _isspace
	.globl _atof
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
_atof_sloc0_1_0:
	.ds 1
_atof_sloc1_1_0:
	.ds 3
_atof_sloc3_1_0:
	.ds 4
_atof_sloc4_1_0:
	.ds 4
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
_atof_sloc2_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_atof_value_65536_60:
	.ds 4
_atof_sign_65536_60:
	.ds 1
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
;Allocation info for local variables in function 'atof'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atof_sloc0_1_0'
;sloc1                     Allocated with name '_atof_sloc1_1_0'
;sloc3                     Allocated with name '_atof_sloc3_1_0'
;sloc4                     Allocated with name '_atof_sloc4_1_0'
;------------------------------------------------------------
;	_atof.c:33: float atof(const char * s)
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
_atof:
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
;	_atof.c:40: while (isspace(*s)) s++;
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_isspace
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00155$
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00155$:
	mov	_atof_sloc1_1_0,r5
	mov	(_atof_sloc1_1_0 + 1),r6
	mov	(_atof_sloc1_1_0 + 2),r7
;	_atof.c:43: if (*s == '-')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_atof_sloc0_1_0,a
	mov	a,#0x2d
	cjne	a,_atof_sloc0_1_0,00107$
;	_atof.c:45: sign=1;
	mov	r0,#_atof_sign_65536_60
	mov	a,#0x01
	movx	@r0,a
;	_atof.c:46: s++;
	add	a,r5
	mov	_atof_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_atof_sloc1_1_0 + 1),a
	mov	(_atof_sloc1_1_0 + 2),r7
	sjmp	00108$
00107$:
;	_atof.c:50: sign=0;
	mov	r0,#_atof_sign_65536_60
	clr	a
	movx	@r0,a
;	_atof.c:51: if (*s == '+') s++;
	mov	a,#0x2b
	cjne	a,_atof_sloc0_1_0,00108$
	mov	a,#0x01
	add	a,r5
	mov	_atof_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_atof_sloc1_1_0 + 1),a
	mov	(_atof_sloc1_1_0 + 2),r7
00108$:
;	_atof.c:55: for (value=0.0; isdigit(*s); s++)
	mov	r0,#_atof_value_65536_60
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
00126$:
	mov	dpl,_atof_sloc1_1_0
	mov	dph,(_atof_sloc1_1_0 + 1)
	mov	b,(_atof_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r6,#0x30,00226$
00226$:
	mov	_atof_sloc2_1_0,c
	jnc	00227$
	ljmp	00156$
00227$:
	mov	a,r6
	add	a,#0xff - 0x39
	mov	_atof_sloc2_1_0,c
	jnc	00228$
	ljmp	00156$
00228$:
;	_atof.c:57: value=10.0*value+(*s-'0');
	mov	r0,#_atof_value_65536_60
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	_atof_sloc3_1_0,dpl
	mov	(_atof_sloc3_1_0 + 1),dph
	mov	(_atof_sloc3_1_0 + 2),b
	mov	(_atof_sloc3_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_atof_sloc1_1_0
	mov	dph,(_atof_sloc1_1_0 + 1)
	mov	b,(_atof_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	_atof_sloc1_1_0,dpl
	mov	(_atof_sloc1_1_0 + 1),dph
	mov	r2,#0x00
	mov	a,r3
	add	a,#0xd0
	mov	dpl,a
	mov	a,r2
	addc	a,#0xff
	mov	dph,a
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dpl,_atof_sloc3_1_0
	mov	dph,(_atof_sloc3_1_0 + 1)
	mov	b,(_atof_sloc3_1_0 + 2)
	mov	a,(_atof_sloc3_1_0 + 3)
	lcall	___fsadd
	mov	r0,#_atof_value_65536_60
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
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	_atof.c:55: for (value=0.0; isdigit(*s); s++)
	ljmp	00126$
00156$:
	mov	r5,_atof_sloc1_1_0
	mov	r6,(_atof_sloc1_1_0 + 1)
	mov	r7,(_atof_sloc1_1_0 + 2)
;	_atof.c:61: if (*s == '.')
	mov	dpl,_atof_sloc1_1_0
	mov	dph,(_atof_sloc1_1_0 + 1)
	mov	b,(_atof_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2e,00229$
	sjmp	00230$
00229$:
	ljmp	00112$
00230$:
;	_atof.c:63: s++;
	mov	a,#0x01
	add	a,_atof_sloc1_1_0
	mov	_atof_sloc3_1_0,a
	clr	a
	addc	a,(_atof_sloc1_1_0 + 1)
	mov	(_atof_sloc3_1_0 + 1),a
	mov	(_atof_sloc3_1_0 + 2),(_atof_sloc1_1_0 + 2)
;	_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	mov	r7,#0xcd
	mov	r6,#0xcc
	mov	r5,#0xcc
	mov	r2,#0x3d
00129$:
	mov	dpl,_atof_sloc3_1_0
	mov	dph,(_atof_sloc3_1_0 + 1)
	mov	b,(_atof_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r4,#0x30,00231$
00231$:
	mov	_atof_sloc2_1_0,c
	jnc	00232$
	ljmp	00157$
00232$:
	mov	a,r4
	add	a,#0xff - 0x39
	mov	_atof_sloc2_1_0,c
	jnc	00233$
	ljmp	00157$
00233$:
;	_atof.c:66: value+=(*s-'0')*fraction;
	mov	dpl,_atof_sloc3_1_0
	mov	dph,(_atof_sloc3_1_0 + 1)
	mov	b,(_atof_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	_atof_sloc3_1_0,dpl
	mov	(_atof_sloc3_1_0 + 1),dph
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	dpl,a
	mov	a,r3
	addc	a,#0xff
	mov	dph,a
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	lcall	___sint2fs
	mov	_atof_sloc4_1_0,dpl
	mov	(_atof_sloc4_1_0 + 1),dph
	mov	(_atof_sloc4_1_0 + 2),b
	mov	(_atof_sloc4_1_0 + 3),a
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	mov	dpl,_atof_sloc4_1_0
	mov	dph,(_atof_sloc4_1_0 + 1)
	mov	b,(_atof_sloc4_1_0 + 2)
	mov	a,(_atof_sloc4_1_0 + 3)
	lcall	___fsmul
	mov	_atof_sloc4_1_0,dpl
	mov	(_atof_sloc4_1_0 + 1),dph
	mov	(_atof_sloc4_1_0 + 2),b
	mov	(_atof_sloc4_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_atof_sloc4_1_0
	push	(_atof_sloc4_1_0 + 1)
	push	(_atof_sloc4_1_0 + 2)
	push	(_atof_sloc4_1_0 + 3)
	mov	r0,#_atof_value_65536_60
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
	lcall	___fsadd
	mov	r0,#_atof_value_65536_60
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
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	_atof.c:67: fraction*=0.1;
	mov	dptr,#0xcccd
	mov	b,#0xcc
	mov	a,#0x3d
	lcall	___fsmul
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	ljmp	00129$
00157$:
	mov	r5,_atof_sloc3_1_0
	mov	r6,(_atof_sloc3_1_0 + 1)
	mov	r7,(_atof_sloc3_1_0 + 2)
00112$:
;	_atof.c:72: if (toupper(*s)=='E')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_toupper
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x45,00234$
	cjne	r4,#0x00,00234$
	sjmp	00235$
00234$:
	ljmp	00120$
00235$:
;	_atof.c:74: s++;
	inc	r5
	cjne	r5,#0x00,00236$
	inc	r6
00236$:
;	_atof.c:75: iexp=(signed char)atoi(s);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_atoi
	mov	r6,dpl
	mov	r7,dph
;	_atof.c:77: while(iexp!=0)
00116$:
	mov	a,r6
	jnz	00237$
	ljmp	00120$
00237$:
;	_atof.c:79: if(iexp<0)
	mov	a,r6
	jnb	acc.7,00114$
;	_atof.c:81: value*=0.1;
	push	ar6
	mov	r0,#_atof_value_65536_60
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dptr,#0xcccd
	mov	b,#0xcc
	mov	a,#0x3d
	lcall	___fsmul
	mov	r0,#_atof_value_65536_60
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
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
;	_atof.c:82: iexp++;
	inc	r6
	sjmp	00116$
00114$:
;	_atof.c:86: value*=10.0;
	push	ar6
	mov	r0,#_atof_value_65536_60
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r0,#_atof_value_65536_60
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
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
;	_atof.c:87: iexp--;
	dec	r6
	ljmp	00116$
00120$:
;	_atof.c:93: if(sign) value*=-1.0;
	mov	r0,#_atof_sign_65536_60
	movx	a,@r0
	jz	00122$
	mov	r0,#_atof_value_65536_60
	movx	a,@r0
	movx	@r0,a
	inc	r0
	movx	a,@r0
	movx	@r0,a
	inc	r0
	movx	a,@r0
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	acc.7
	movx	@r0,a
00122$:
;	_atof.c:94: return (value);
	mov	r0,#_atof_value_65536_60
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
;	_atof.c:95: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
