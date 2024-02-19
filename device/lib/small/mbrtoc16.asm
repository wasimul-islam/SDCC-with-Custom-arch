;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrtoc16
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
	.globl _mbrtoc16_PARM_4
	.globl _mbrtoc16_PARM_3
	.globl _mbrtoc16_PARM_2
	.globl _mbrtoc16
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
_mbrtoc16_sps_65536_16:
	.ds 3
_mbrtoc16_PARM_2:
	.ds 3
_mbrtoc16_PARM_3:
	.ds 2
_mbrtoc16_PARM_4:
	.ds 3
_mbrtoc16_pc16_65536_15:
	.ds 3
_mbrtoc16_codepoint_65536_16:
	.ds 4
_mbrtoc16_ret_65536_16:
	.ds 2
_mbrtoc16_low_surrogate_65536_16:
	.ds 2
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
;Allocation info for local variables in function 'mbrtoc16'
;------------------------------------------------------------
;sps                       Allocated with name '_mbrtoc16_sps_65536_16'
;s                         Allocated with name '_mbrtoc16_PARM_2'
;n                         Allocated with name '_mbrtoc16_PARM_3'
;ps                        Allocated with name '_mbrtoc16_PARM_4'
;pc16                      Allocated with name '_mbrtoc16_pc16_65536_15'
;codepoint                 Allocated with name '_mbrtoc16_codepoint_65536_16'
;ret                       Allocated with name '_mbrtoc16_ret_65536_16'
;low_surrogate             Allocated with name '_mbrtoc16_low_surrogate_65536_16'
;------------------------------------------------------------
;	mbrtoc16.c:34: size_t mbrtoc16(char16_t *restrict pc16, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc16
;	-----------------------------------------
_mbrtoc16:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_mbrtoc16_pc16_65536_15,dpl
	mov	(_mbrtoc16_pc16_65536_15 + 1),dph
	mov	(_mbrtoc16_pc16_65536_15 + 2),b
;	mbrtoc16.c:41: if(!s)
	mov	a,_mbrtoc16_PARM_2
	orl	a,(_mbrtoc16_PARM_2 + 1)
	jnz	00102$
;	mbrtoc16.c:42: return(mbrtoc16(0, "", 1, ps));
	mov	_mbrtoc16_PARM_2,#___str_0
	mov	(_mbrtoc16_PARM_2 + 1),#(___str_0 >> 8)
	mov	(_mbrtoc16_PARM_2 + 2),#0x80
	mov	_mbrtoc16_PARM_3,#0x01
	mov	(_mbrtoc16_PARM_3 + 1),#0x00
	mov	dptr,#0x0000
	mov	b,#0x00
	ljmp	_mbrtoc16
00102$:
;	mbrtoc16.c:44: if(!ps)
	mov	a,_mbrtoc16_PARM_4
	orl	a,(_mbrtoc16_PARM_4 + 1)
;	mbrtoc16.c:45: ps = &sps;
	jnz	00104$
	mov	_mbrtoc16_PARM_4,#_mbrtoc16_sps_65536_16
	mov	(_mbrtoc16_PARM_4 + 1),a
	mov	(_mbrtoc16_PARM_4 + 2),#0x40
00104$:
;	mbrtoc16.c:47: if(!ps->c[0] && (ps->c[1] || ps->c[2]))
	mov	r2,_mbrtoc16_PARM_4
	mov	r3,(_mbrtoc16_PARM_4 + 1)
	mov	r4,(_mbrtoc16_PARM_4 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00159$
	ljmp	00108$
00159$:
	mov	a,#0x01
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	jnz	00107$
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00161$
	ljmp	00108$
00161$:
00107$:
;	mbrtoc16.c:49: if(pc16)
	mov	a,_mbrtoc16_pc16_65536_15
	orl	a,(_mbrtoc16_pc16_65536_15 + 1)
	jz	00106$
;	mbrtoc16.c:50: *pc16 = ps->c[1] + (ps->c[2] << 8);
	mov	r5,_mbrtoc16_PARM_4
	mov	r6,(_mbrtoc16_PARM_4 + 1)
	mov	r7,(_mbrtoc16_PARM_4 + 2)
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	clr	a
	mov	r5,a
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dpl,_mbrtoc16_pc16_65536_15
	mov	dph,(_mbrtoc16_pc16_65536_15 + 1)
	mov	b,(_mbrtoc16_pc16_65536_15 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00106$:
;	mbrtoc16.c:51: ps->c[1] = ps->c[2] = 0;
	mov	r5,_mbrtoc16_PARM_4
	mov	r6,(_mbrtoc16_PARM_4 + 1)
	mov	r7,(_mbrtoc16_PARM_4 + 2)
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	mbrtoc16.c:52: return(-3);
	mov	dptr,#0xfffd
	ret
00108$:
;	mbrtoc16.c:55: ret = mbrtowc(&codepoint, s, n, ps);
	mov	_mbrtowc_PARM_2,_mbrtoc16_PARM_2
	mov	(_mbrtowc_PARM_2 + 1),(_mbrtoc16_PARM_2 + 1)
	mov	(_mbrtowc_PARM_2 + 2),(_mbrtoc16_PARM_2 + 2)
	mov	_mbrtowc_PARM_3,_mbrtoc16_PARM_3
	mov	(_mbrtowc_PARM_3 + 1),(_mbrtoc16_PARM_3 + 1)
	mov	_mbrtowc_PARM_4,_mbrtoc16_PARM_4
	mov	(_mbrtowc_PARM_4 + 1),(_mbrtoc16_PARM_4 + 1)
	mov	(_mbrtowc_PARM_4 + 2),(_mbrtoc16_PARM_4 + 2)
	mov	dptr,#_mbrtoc16_codepoint_65536_16
	mov	b,#0x40
	lcall	_mbrtowc
	mov	_mbrtoc16_ret_65536_16,dpl
	mov	(_mbrtoc16_ret_65536_16 + 1),dph
;	mbrtoc16.c:57: if(ret > MB_LEN_MAX)
	clr	c
	mov	a,#0x04
	subb	a,_mbrtoc16_ret_65536_16
	clr	a
	subb	a,(_mbrtoc16_ret_65536_16 + 1)
	jnc	00112$
;	mbrtoc16.c:58: return(ret);
	mov	dpl,_mbrtoc16_ret_65536_16
	mov	dph,(_mbrtoc16_ret_65536_16 + 1)
	ret
00112$:
;	mbrtoc16.c:60: if (codepoint <= 0xffff) // Basic multilingual plane
	clr	c
	mov	a,#0xff
	subb	a,_mbrtoc16_codepoint_65536_16
	mov	a,#0xff
	subb	a,(_mbrtoc16_codepoint_65536_16 + 1)
	clr	a
	subb	a,(_mbrtoc16_codepoint_65536_16 + 2)
	clr	a
	subb	a,(_mbrtoc16_codepoint_65536_16 + 3)
	jc	00116$
;	mbrtoc16.c:62: if(pc16)
	mov	a,_mbrtoc16_pc16_65536_15
	orl	a,(_mbrtoc16_pc16_65536_15 + 1)
	jz	00114$
;	mbrtoc16.c:63: *pc16 = codepoint;
	mov	r5,_mbrtoc16_codepoint_65536_16
	mov	r4,(_mbrtoc16_codepoint_65536_16 + 1)
	mov	dpl,_mbrtoc16_pc16_65536_15
	mov	dph,(_mbrtoc16_pc16_65536_15 + 1)
	mov	b,(_mbrtoc16_pc16_65536_15 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00114$:
;	mbrtoc16.c:64: return(ret);
	mov	dpl,_mbrtoc16_ret_65536_16
	mov	dph,(_mbrtoc16_ret_65536_16 + 1)
	ret
00116$:
;	mbrtoc16.c:67: codepoint -= 0x100000;
	mov	a,(_mbrtoc16_codepoint_65536_16 + 2)
	add	a,#0xf0
	mov	(_mbrtoc16_codepoint_65536_16 + 2),a
	mov	a,(_mbrtoc16_codepoint_65536_16 + 3)
	addc	a,#0xff
	mov	(_mbrtoc16_codepoint_65536_16 + 3),a
;	mbrtoc16.c:68: if(pc16)
	mov	a,_mbrtoc16_pc16_65536_15
	orl	a,(_mbrtoc16_pc16_65536_15 + 1)
	jz	00118$
;	mbrtoc16.c:69: *pc16 = ((codepoint >> 10) & 0x3ff) + 0xd800;
	mov	r2,(_mbrtoc16_codepoint_65536_16 + 1)
	mov	a,(_mbrtoc16_codepoint_65536_16 + 2)
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	a,(_mbrtoc16_codepoint_65536_16 + 3)
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r3
	mov	r3,a
	mov	a,(_mbrtoc16_codepoint_65536_16 + 3)
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r4,a
	mov	r5,#0x00
	anl	ar3,#0x03
	mov	a,#0xd8
	add	a,r3
	mov	r3,a
	mov	dpl,_mbrtoc16_pc16_65536_15
	mov	dph,(_mbrtoc16_pc16_65536_15 + 1)
	mov	b,(_mbrtoc16_pc16_65536_15 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
00118$:
;	mbrtoc16.c:70: low_surrogate = (codepoint & 0x3ff) + 0xdc00;
	mov	r4,_mbrtoc16_codepoint_65536_16
	mov	r5,(_mbrtoc16_codepoint_65536_16 + 1)
	anl	ar5,#0x03
	mov	_mbrtoc16_low_surrogate_65536_16,r4
	mov	a,#0xdc
	add	a,r5
	mov	(_mbrtoc16_low_surrogate_65536_16 + 1),a
;	mbrtoc16.c:71: ps->c[0] = 0;
	mov	r1,_mbrtoc16_PARM_4
	mov	r2,(_mbrtoc16_PARM_4 + 1)
	mov	r3,(_mbrtoc16_PARM_4 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	clr	a
	lcall	__gptrput
;	mbrtoc16.c:72: ps->c[1] = low_surrogate & 0xff;
	inc	a
	add	a,r1
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r4,a
	mov	ar5,r3
	mov	r7,_mbrtoc16_low_surrogate_65536_16
	mov	dpl,r0
	mov	dph,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
;	mbrtoc16.c:73: ps->c[2] = low_surrogate >> 8;
	mov	a,#0x02
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	r7,(_mbrtoc16_low_surrogate_65536_16 + 1)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r7
	lcall	__gptrput
;	mbrtoc16.c:75: return(ret);
	mov	dpl,_mbrtoc16_ret_65536_16
	mov	dph,(_mbrtoc16_ret_65536_16 + 1)
;	mbrtoc16.c:76: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
