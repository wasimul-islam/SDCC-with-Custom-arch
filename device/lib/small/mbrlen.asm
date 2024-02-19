;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module mbrlen
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
	.globl _mbrlen_PARM_3
	.globl _mbrlen_PARM_2
	.globl _mbrlen
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
_mbrlen_sps_65536_10:
	.ds 3
_mbrlen_PARM_2:
	.ds 2
_mbrlen_PARM_3:
	.ds 3
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
;Allocation info for local variables in function 'mbrlen'
;------------------------------------------------------------
;sps                       Allocated with name '_mbrlen_sps_65536_10'
;n                         Allocated with name '_mbrlen_PARM_2'
;ps                        Allocated with name '_mbrlen_PARM_3'
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	mbrlen.c:31: size_t mbrlen(const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrlen
;	-----------------------------------------
_mbrlen:
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
;	mbrlen.c:35: return(mbrtowc(0, s, n, ps ? ps : &sps));
	mov	a,_mbrlen_PARM_3
	orl	a,(_mbrlen_PARM_3 + 1)
	jz	00103$
	mov	r2,_mbrlen_PARM_3
	mov	r3,(_mbrlen_PARM_3 + 1)
	mov	r4,(_mbrlen_PARM_3 + 2)
	sjmp	00104$
00103$:
	mov	r2,#_mbrlen_sps_65536_10
	mov	r3,#0x00
	mov	r4,#0x40
00104$:
	mov	_mbrtowc_PARM_2,r5
	mov	(_mbrtowc_PARM_2 + 1),r6
	mov	(_mbrtowc_PARM_2 + 2),r7
	mov	_mbrtowc_PARM_3,_mbrlen_PARM_2
	mov	(_mbrtowc_PARM_3 + 1),(_mbrlen_PARM_2 + 1)
	mov	_mbrtowc_PARM_4,r2
	mov	(_mbrtowc_PARM_4 + 1),r3
	mov	(_mbrtowc_PARM_4 + 2),r4
	mov	dptr,#0x0000
	mov	b,#0x00
;	mbrlen.c:36: }
	ljmp	_mbrtowc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
