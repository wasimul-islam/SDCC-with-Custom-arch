;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _atof
	.optsdcc -mmcs51 --model-small
	
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
_atof_value_65536_60:
	.ds 4
_atof_fraction_65536_60:
	.ds 4
_atof_sign_65536_60:
	.ds 1
_atof_sloc1_1_0:
	.ds 3
_atof_sloc2_1_0:
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
_atof_sloc0_1_0:
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
;Allocation info for local variables in function 'atof'
;------------------------------------------------------------
;s                         Allocated to registers 
;__1310720004              Allocated to registers 
;value                     Allocated with name '_atof_value_65536_60'
;fraction                  Allocated with name '_atof_fraction_65536_60'
;iexp                      Allocated to registers r6 
;sign                      Allocated with name '_atof_sign_65536_60'
;__1966080005              Allocated to registers 
;c                         Allocated to registers 
;__1966080007              Allocated to registers 
;__2621440008              Allocated to registers 
;c                         Allocated to registers 
;sloc1                     Allocated with name '_atof_sloc1_1_0'
;sloc2                     Allocated with name '_atof_sloc2_1_0'
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
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	_atof.c:43: if (*s == '-')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x2d,00107$
;	_atof.c:45: sign=1;
;	_atof.c:46: s++;
	mov	a,#0x01
	mov	_atof_sign_65536_60,a
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	sjmp	00108$
00107$:
;	_atof.c:50: sign=0;
	mov	_atof_sign_65536_60,#0x00
;	_atof.c:51: if (*s == '+') s++;
	cjne	r1,#0x2b,00108$
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
00108$:
;	_atof.c:55: for (value=0.0; isdigit(*s); s++)
	clr	a
	mov	_atof_value_65536_60,a
	mov	(_atof_value_65536_60 + 1),a
	mov	(_atof_value_65536_60 + 2),a
	mov	(_atof_value_65536_60 + 3),a
	mov	_atof_sloc1_1_0,r2
	mov	(_atof_sloc1_1_0 + 1),r3
	mov	(_atof_sloc1_1_0 + 2),r4
00126$:
	mov	dpl,_atof_sloc1_1_0
	mov	dph,(_atof_sloc1_1_0 + 1)
	mov	b,(_atof_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r0,#0x30,00226$
00226$:
	mov	_atof_sloc0_1_0,c
	jnc	00227$
	ljmp	00156$
00227$:
	mov	a,r0
	add	a,#0xff - 0x39
	mov	_atof_sloc0_1_0,c
	jc	00156$
;	_atof.c:57: value=10.0*value+(*s-'0');
	push	_atof_value_65536_60
	push	(_atof_value_65536_60 + 1)
	push	(_atof_value_65536_60 + 2)
	push	(_atof_value_65536_60 + 3)
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	_atof_sloc2_1_0,dpl
	mov	(_atof_sloc2_1_0 + 1),dph
	mov	(_atof_sloc2_1_0 + 2),b
	mov	(_atof_sloc2_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_atof_sloc1_1_0
	mov	dph,(_atof_sloc1_1_0 + 1)
	mov	b,(_atof_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	_atof_sloc1_1_0,dpl
	mov	(_atof_sloc1_1_0 + 1),dph
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xd0
	mov	dpl,a
	mov	a,r3
	addc	a,#0xff
	mov	dph,a
	lcall	___sint2fs
	mov	r0,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	push	ar0
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_atof_sloc2_1_0
	mov	dph,(_atof_sloc2_1_0 + 1)
	mov	b,(_atof_sloc2_1_0 + 2)
	mov	a,(_atof_sloc2_1_0 + 3)
	lcall	___fsadd
	mov	_atof_value_65536_60,dpl
	mov	(_atof_value_65536_60 + 1),dph
	mov	(_atof_value_65536_60 + 2),b
	mov	(_atof_value_65536_60 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	_atof.c:55: for (value=0.0; isdigit(*s); s++)
	ljmp	00126$
00156$:
	mov	r2,_atof_sloc1_1_0
	mov	r3,(_atof_sloc1_1_0 + 1)
	mov	r4,(_atof_sloc1_1_0 + 2)
;	_atof.c:61: if (*s == '.')
	mov	dpl,_atof_sloc1_1_0
	mov	dph,(_atof_sloc1_1_0 + 1)
	mov	b,(_atof_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x2e,00229$
	sjmp	00230$
00229$:
	ljmp	00112$
00230$:
;	_atof.c:63: s++;
	mov	a,#0x01
	add	a,_atof_sloc1_1_0
	mov	_atof_sloc2_1_0,a
	clr	a
	addc	a,(_atof_sloc1_1_0 + 1)
	mov	(_atof_sloc2_1_0 + 1),a
	mov	(_atof_sloc2_1_0 + 2),(_atof_sloc1_1_0 + 2)
;	_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	mov	_atof_fraction_65536_60,#0xcd
	mov	(_atof_fraction_65536_60 + 1),#0xcc
	mov	(_atof_fraction_65536_60 + 2),#0xcc
	mov	(_atof_fraction_65536_60 + 3),#0x3d
00129$:
	mov	dpl,_atof_sloc2_1_0
	mov	dph,(_atof_sloc2_1_0 + 1)
	mov	b,(_atof_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r5,#0x30,00231$
00231$:
	mov	_atof_sloc0_1_0,c
	jnc	00232$
	ljmp	00157$
00232$:
	mov	a,r5
	add	a,#0xff - 0x39
	mov	_atof_sloc0_1_0,c
	jnc	00233$
	ljmp	00157$
00233$:
;	_atof.c:66: value+=(*s-'0')*fraction;
	mov	dpl,_atof_sloc2_1_0
	mov	dph,(_atof_sloc2_1_0 + 1)
	mov	b,(_atof_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	mov	_atof_sloc2_1_0,dpl
	mov	(_atof_sloc2_1_0 + 1),dph
	mov	ar1,r5
	mov	r5,#0x00
	mov	a,r1
	add	a,#0xd0
	mov	dpl,a
	mov	a,r5
	addc	a,#0xff
	mov	dph,a
	lcall	___sint2fs
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	_atof_fraction_65536_60
	push	(_atof_fraction_65536_60 + 1)
	push	(_atof_fraction_65536_60 + 2)
	push	(_atof_fraction_65536_60 + 3)
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar1
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_atof_value_65536_60
	mov	dph,(_atof_value_65536_60 + 1)
	mov	b,(_atof_value_65536_60 + 2)
	mov	a,(_atof_value_65536_60 + 3)
	lcall	___fsadd
	mov	_atof_value_65536_60,dpl
	mov	(_atof_value_65536_60 + 1),dph
	mov	(_atof_value_65536_60 + 2),b
	mov	(_atof_value_65536_60 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	_atof.c:67: fraction*=0.1;
	push	_atof_fraction_65536_60
	push	(_atof_fraction_65536_60 + 1)
	push	(_atof_fraction_65536_60 + 2)
	push	(_atof_fraction_65536_60 + 3)
	mov	dptr,#0xcccd
	mov	b,#0xcc
	mov	a,#0x3d
	lcall	___fsmul
	mov	_atof_fraction_65536_60,dpl
	mov	(_atof_fraction_65536_60 + 1),dph
	mov	(_atof_fraction_65536_60 + 2),b
	mov	(_atof_fraction_65536_60 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	ljmp	00129$
00157$:
	mov	r2,_atof_sloc2_1_0
	mov	r3,(_atof_sloc2_1_0 + 1)
	mov	r4,(_atof_sloc2_1_0 + 2)
00112$:
;	_atof.c:72: if (toupper(*s)=='E')
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	push	ar4
	push	ar3
	push	ar2
	lcall	_toupper
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	cjne	r6,#0x45,00120$
	cjne	r7,#0x00,00120$
;	_atof.c:74: s++;
	inc	r2
	cjne	r2,#0x00,00236$
	inc	r3
00236$:
;	_atof.c:75: iexp=(signed char)atoi(s);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_atoi
	mov	r6,dpl
	mov	r7,dph
;	_atof.c:77: while(iexp!=0)
00116$:
	mov	a,r6
	jz	00120$
;	_atof.c:79: if(iexp<0)
	mov	a,r6
	jnb	acc.7,00114$
;	_atof.c:81: value*=0.1;
	push	ar6
	push	_atof_value_65536_60
	push	(_atof_value_65536_60 + 1)
	push	(_atof_value_65536_60 + 2)
	push	(_atof_value_65536_60 + 3)
	mov	dptr,#0xcccd
	mov	b,#0xcc
	mov	a,#0x3d
	lcall	___fsmul
	mov	_atof_value_65536_60,dpl
	mov	(_atof_value_65536_60 + 1),dph
	mov	(_atof_value_65536_60 + 2),b
	mov	(_atof_value_65536_60 + 3),a
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
	push	_atof_value_65536_60
	push	(_atof_value_65536_60 + 1)
	push	(_atof_value_65536_60 + 2)
	push	(_atof_value_65536_60 + 3)
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	_atof_value_65536_60,dpl
	mov	(_atof_value_65536_60 + 1),dph
	mov	(_atof_value_65536_60 + 2),b
	mov	(_atof_value_65536_60 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
;	_atof.c:87: iexp--;
	dec	r6
	sjmp	00116$
00120$:
;	_atof.c:93: if(sign) value*=-1.0;
	mov	a,_atof_sign_65536_60
	jz	00122$
	mov	a,(_atof_value_65536_60 + 3)
	cpl	acc.7
	mov	(_atof_value_65536_60 + 3),a
00122$:
;	_atof.c:94: return (value);
	mov	dpl,_atof_value_65536_60
	mov	dph,(_atof_value_65536_60 + 1)
	mov	b,(_atof_value_65536_60 + 2)
	mov	a,(_atof_value_65536_60 + 3)
;	_atof.c:95: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
