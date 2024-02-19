;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module time
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___day
	.globl ___month
	.globl _RtcRead
	.globl _sprintf
	.globl _time
	.globl _asctime
	.globl _ctime
	.globl _localtime
	.globl _gmtime
	.globl _mktime
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_ascTimeBuffer:
	.ds 32
_lastTime:
	.ds 12
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
;Allocation info for local variables in function 'RtcRead'
;------------------------------------------------------------
;timeptr                   Allocated to registers 
;------------------------------------------------------------
;	../time.c: 42: unsigned char RtcRead(struct tm *timeptr) {
;	-----------------------------------------
;	 function RtcRead
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RtcRead:
;	../time.c: 45: return 0;
	lda	#0x00
;	../time.c: 46: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'time'
;------------------------------------------------------------
;timeptr                   Allocated to stack - sp +19
;now                       Allocated to stack - sp +5
;t                         Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +17
;------------------------------------------------------------
;	../time.c: 50: time_t time(time_t *timeptr) {
;	-----------------------------------------
;	 function time
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 20 bytes.
_time:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
;	../time.c: 52: time_t t=(time_t) -1;
	tsx
	lda	#0xff
	sta	0x101,x
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
;	../time.c: 54: if (RtcRead(&now)) {
	txa
	clc
	adc	#0x05
	sta	0x111,x
	lda	#0x01
	sta	0x112,x
	lda	0x111,x
	sta	*(__TEMP+0)
	lda	0x112,x
	tax
	lda	*(__TEMP+0)
	jsr	_RtcRead
	cmp	#0x00
	beq	00102$
;	../time.c: 55: t=mktime(&now);
	tsx
	lda	0x111,x
	sta	*(__TEMP+0)
	lda	0x112,x
	tax
	lda	*(__TEMP+0)
	jsr	_mktime
	stx	*(__TEMP+0)
	tsx
	sta	0x101,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x102,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x103,x
	lda	*___SDCC_m6502_ret3
	sta	0x104,x
00102$:
;	../time.c: 57: if (timeptr) {
	tsx
	lda	0x113,x
	ora	0x114,x
	beq	00104$
;	../time.c: 58: *timeptr=t;
	lda	0x113,x
	sta	*(__DPTR+0)
	lda	0x114,x
	sta	*(__DPTR+1)
	lda	0x101,x
	ldy	#0x00
	sta	[__DPTR],y
	lda	0x102,x
	iny
	sta	[__DPTR],y
	lda	0x103,x
	iny
	sta	[__DPTR],y
	lda	0x104,x
	iny
	sta	[__DPTR],y
00104$:
;	../time.c: 60: return t;
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
;	../time.c: 61: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckTime'
;------------------------------------------------------------
;timeptr                   Allocated to stack - sp +3
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../time.c: 73: static void CheckTime(struct tm *timeptr) {
;	-----------------------------------------
;	 function CheckTime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_CheckTime:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	pha
	pha
;	../time.c: 84: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
	tsx
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	cmp	#0x3b
	beq	00102$
	bcc	00102$
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	lda	#0x3b
	sta	[__DPTR],y
00102$:
;	../time.c: 85: if (timeptr->tm_min>59) timeptr->tm_min=59;
	tsx
	lda	0x103,x
	sta	0x101,x
	lda	0x104,x
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	cmp	#0x3b
	beq	00104$
	bcc	00104$
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	#0x3b
	sta	[__DPTR],y
00104$:
;	../time.c: 86: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
	tsx
	lda	0x103,x
	sta	0x101,x
	lda	0x104,x
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x02
	lda	[__DPTR],y
	cmp	#0x17
	beq	00106$
	bcc	00106$
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	#0x17
	sta	[__DPTR],y
00106$:
;	../time.c: 87: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
	tsx
	lda	0x103,x
	sta	0x101,x
	lda	0x104,x
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x07
	lda	[__DPTR],y
	cmp	#0x06
	beq	00108$
	bcc	00108$
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	#0x06
	sta	[__DPTR],y
00108$:
;	../time.c: 88: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
	tsx
	lda	0x103,x
	sta	0x101,x
	lda	0x104,x
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x03
	lda	[__DPTR],y
	cmp	#0x01
	bcs	00112$
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	#0x01
	sta	[__DPTR],y
	jmp	00113$
00112$:
;	../time.c: 89: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
	cmp	#0x1f
	beq	00113$
	bcc	00113$
	tsx
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	#0x1f
	ldy	#0x03
	sta	[__DPTR],y
00113$:
;	../time.c: 90: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
	tsx
	lda	0x103,x
	sta	0x101,x
	lda	0x104,x
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x04
	lda	[__DPTR],y
	cmp	#0x0b
	beq	00115$
	bcc	00115$
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	#0x0b
	sta	[__DPTR],y
00115$:
;	../time.c: 91: if (timeptr->tm_year<0) timeptr->tm_year=0;
	tsx
	lda	0x103,x
	sta	0x101,x
	lda	0x104,x
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x06
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	txa
	sec
	sbc	#0x00
	bvc	00166$
	bpl	00165$
	bmi	00118$
00166$:
	bpl	00118$
00165$:
	tsx
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	lda	#0x00
	sta	[__DPTR],y
	iny
	sta	[__DPTR],y
00118$:
;	../time.c: 92: }
	sta	*(__TEMP+0)
	pla
	pla
	pla
	pla
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'asctime'
;------------------------------------------------------------
;timeptr                   Allocated to stack - sp +15
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +11
;sloc2                     Allocated to stack - sp +9
;sloc3                     Allocated to stack - sp +7
;sloc4                     Allocated to stack - sp +5
;sloc5                     Allocated to stack - sp +3
;sloc6                     Allocated to stack - sp +1
;------------------------------------------------------------
;	../time.c: 95: char *asctime(struct tm *timeptr) {
;	-----------------------------------------
;	 function asctime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_asctime:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xf2
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../time.c: 96: CheckTime(timeptr);
	tsx
	lda	0x110,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x10f,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_CheckTime
;	../time.c: 100: timeptr->tm_year+1900);
	tsx
	lda	0x10f,x
	sta	0x10d,x
	lda	0x110,x
	sta	0x10e,x
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	ldy	#0x06
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	clc
	adc	#0x6c
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	adc	#0x07
	stx	*(__TEMP+0)
	tsx
	sta	0x10e,x
;	../time.c: 99: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
	tsx
	lda	0x10f,x
	sta	*(__DPTR+0)
	lda	0x110,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	sta	0x10b,x
	lda	#0x00
	sta	0x10c,x
	lda	0x10f,x
	sta	0x109,x
	lda	0x110,x
	sta	0x10a,x
	lda	0x109,x
	sta	*(__DPTR+0)
	lda	0x10a,x
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	tay
	sta	0x109,x
	lda	#0x00
	sta	0x10a,x
	lda	0x10f,x
	sta	0x107,x
	lda	0x110,x
	sta	0x108,x
	lda	0x107,x
	sta	*(__DPTR+0)
	lda	0x108,x
	sta	*(__DPTR+1)
	ldy	#0x02
	lda	[__DPTR],y
	tay
	sta	0x107,x
	lda	#0x00
	sta	0x108,x
;	../time.c: 98: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
	lda	0x10f,x
	sta	0x105,x
	lda	0x110,x
	sta	0x106,x
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	ldy	#0x03
	lda	[__DPTR],y
	tay
	sta	0x105,x
	lda	#0x00
	sta	0x106,x
	lda	0x10f,x
	sta	0x103,x
	lda	0x110,x
	sta	0x104,x
	lda	0x103,x
	sta	*(__DPTR+0)
	lda	0x104,x
	sta	*(__DPTR+1)
	ldy	#0x04
	lda	[__DPTR],y
	ldx	#0x00
	stx	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	ldx	*(__TEMP+0)
	clc
	adc	#<(___month+0)
	sta	*(__DPTR+0)
	txa
	adc	#>(___month+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x103,x
	ldx	*(__TEMP+0)
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x104,x
	tsx
	lda	0x10f,x
	sta	0x101,x
	lda	0x110,x
	sta	0x102,x
	lda	0x101,x
	sta	*(__DPTR+0)
	lda	0x102,x
	sta	*(__DPTR+1)
	ldy	#0x07
	lda	[__DPTR],y
	ldx	#0x00
	stx	*(__TEMP+0)
	asl	a
	rol	*(__TEMP+0)
	ldx	*(__TEMP+0)
	clc
	adc	#<(___day+0)
	sta	*(__DPTR+0)
	txa
	adc	#>(___day+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x101,x
	ldx	*(__TEMP+0)
	iny
	lda	[__DPTR],y
	stx	*(__TEMP+0)
	tsx
	sta	0x102,x
;	../time.c: 97: sprintf (ascTimeBuffer, "%s %s %2d %02d:%02d:%02d %04d\n",
	tsx
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
	lda	#>_ascTimeBuffer
	pha
	lda	#_ascTimeBuffer
	pha
	jsr	_sprintf
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x12
	tax
	txs
;	../time.c: 101: return ascTimeBuffer;
	ldx	#>_ascTimeBuffer
	lda	#_ascTimeBuffer
;	../time.c: 102: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'ctime'
;------------------------------------------------------------
;timep                     Allocated to registers a x 
;------------------------------------------------------------
;	../time.c: 104: char *ctime(time_t *timep) {
;	-----------------------------------------
;	 function ctime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ctime:
;	../time.c: 105: return asctime(localtime(timep));
	jsr	_localtime
;	../time.c: 106: }
	jmp	_asctime
;------------------------------------------------------------
;Allocation info for local variables in function 'localtime'
;------------------------------------------------------------
;timep                     Allocated to registers a x 
;------------------------------------------------------------
;	../time.c: 121: struct tm *localtime(time_t *timep) {
;	-----------------------------------------
;	 function localtime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_localtime:
;	../time.c: 122: return gmtime(timep);
;	../time.c: 123: }
	jmp	_gmtime
;------------------------------------------------------------
;Allocation info for local variables in function 'gmtime'
;------------------------------------------------------------
;timep                     Allocated to registers a x 
;epoch                     Allocated to stack - sp +5
;year                      Allocated to stack - sp +22
;month                     Allocated to stack - sp +21
;monthLength               Allocated to registers y 
;days                      Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +17
;sloc1                     Allocated to stack - sp +13
;sloc2                     Allocated to stack - sp +9
;------------------------------------------------------------
;	../time.c: 125: struct tm *gmtime(time_t *timep) {
;	-----------------------------------------
;	 function gmtime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 23 bytes.
_gmtime:
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xe9
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../time.c: 126: unsigned long epoch=*timep;
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tsx
	sta	0x111,x
	iny
	lda	[__DPTR],y
	sta	0x112,x
	iny
	lda	[__DPTR],y
	sta	0x113,x
	iny
	lda	[__DPTR],y
	sta	0x114,x
;	../time.c: 131: lastTime.tm_sec=epoch%60;
	lda	#0x00
	pha
	pha
	pha
	lda	#0x3c
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	jsr	__modulong
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x10d,x
	sta	_lastTime
;	../time.c: 132: epoch/=60; // now it is minutes
	lda	#0x00
	pha
	pha
	pha
	lda	#0x3c
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	../time.c: 133: lastTime.tm_min=epoch%60;
	jsr	__divulong
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	#0x00
	pha
	pha
	pha
	lda	#0x3c
	pha
	tsx
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	jsr	__modulong
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x111,x
	sta	(_lastTime + 0x0001)
;	../time.c: 134: epoch/=60; // now it is hours
	lda	#0x00
	pha
	pha
	pha
	lda	#0x3c
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	../time.c: 135: lastTime.tm_hour=epoch%24;
	jsr	__divulong
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	#0x00
	pha
	pha
	pha
	lda	#0x18
	pha
	tsx
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	jsr	__modulong
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x111,x
	sta	(_lastTime + 0x0002)
;	../time.c: 136: epoch/=24; // now it is days
	lda	#0x00
	pha
	pha
	pha
	lda	#0x18
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	../time.c: 137: lastTime.tm_wday=(epoch+4)%7;
	jsr	__divulong
	stx	*(__TEMP+0)
	tsx
	sta	0x115,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x116,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x10d,x
	clc
	adc	#0x04
	sta	0x111,x
	lda	0x10e,x
	adc	#0x00
	sta	0x112,x
	lda	0x10f,x
	adc	#0x00
	sta	0x113,x
	lda	0x110,x
	adc	#0x00
	sta	0x114,x
	lda	#0x00
	pha
	pha
	pha
	lda	#0x07
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	jsr	__modulong
	stx	*(__TEMP+0)
	tsx
	sta	0x119,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x11a,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x111,x
	sta	(_lastTime + 0x0007)
;	../time.c: 140: days=0;
	lda	#0x00
	sta	0x101,x
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
;	../time.c: 141: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
	lda	#0xb2
	sta	0x116,x
	lda	#0x07
	sta	0x117,x
00101$:
	tsx
	lda	#0x03
	and	0x116,x
	bne	00118$
	lda	#0x6e
	ldx	#0x01
	jmp	00119$
00118$:
	lda	#0x6d
	ldx	#0x01
00119$:
	pha
	txa
	tsx
	sta	0x113,x
	pla
	sta	0x112,x
	lda	0x113,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x114,x
	sta	0x115,x
	lda	0x102,x
	clc
	adc	0x112,x
	sta	0x112,x
	lda	0x103,x
	adc	0x113,x
	sta	0x113,x
	lda	0x104,x
	adc	0x114,x
	sta	0x114,x
	lda	0x105,x
	adc	0x115,x
	sta	0x115,x
	lda	0x112,x
	sta	0x102,x
	lda	0x113,x
	sta	0x103,x
	lda	0x114,x
	sta	0x104,x
	lda	0x115,x
	sta	0x105,x
	lda	0x10e,x
	sec
	sbc	0x112,x
	lda	0x10f,x
	sbc	0x113,x
	lda	0x110,x
	sbc	0x114,x
	lda	0x111,x
	sbc	0x115,x
	bcc	00103$
;	../time.c: 142: year++;
	lda	0x117,x
	clc
	adc	#0x01
	sta	0x117,x
	lda	0x118,x
	adc	#0x00
	sta	0x118,x
	jmp	00101$
00103$:
;	../time.c: 144: lastTime.tm_year=year-1900;
	tsx
	lda	0x116,x
	sec
	sbc	#0x6c
	pha
	lda	0x117,x
	sbc	#0x07
	tax
	pla
	stx	((_lastTime + 0x0005) + 1)
	sta	(_lastTime + 0x0005)
;	../time.c: 146: days -= LEAP_YEAR(year) ? 366 : 365;
	tsx
	lda	0x116,x
	and	#0x03
	sta	0x111,x
	pha
	lda	#0x00
	sta	0x112,x
	pla
	lda	0x111,x
	ora	0x112,x
	bne	00120$
	lda	#0x6e
	ldx	#0x01
	jmp	00121$
00120$:
	lda	#0x6d
	ldx	#0x01
00121$:
	pha
	txa
	tsx
	sta	0x10b,x
	pla
	sta	0x10a,x
	lda	0x10b,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x10c,x
	sta	0x10d,x
	lda	0x102,x
	sec
	sbc	0x10a,x
	sta	0x102,x
	lda	0x103,x
	sbc	0x10b,x
	sta	0x103,x
	lda	0x104,x
	sbc	0x10c,x
	sta	0x104,x
	lda	0x105,x
	sbc	0x10d,x
	sta	0x105,x
;	../time.c: 147: epoch -= days; // now it is days in this year, starting at 0
	lda	0x10e,x
	sec
	sbc	0x102,x
	sta	0x10a,x
	lda	0x10f,x
	sbc	0x103,x
	sta	0x10b,x
	lda	0x110,x
	sbc	0x104,x
	sta	0x10c,x
	lda	0x111,x
	sbc	0x105,x
	sta	0x10d,x
	lda	0x10a,x
	sta	0x106,x
	lda	0x10b,x
	sta	0x107,x
	lda	0x10c,x
	sta	0x108,x
	lda	0x10d,x
	sta	0x109,x
;	../time.c: 148: lastTime.tm_yday=epoch;
	lda	0x10a,x
	sta	*(__TEMP+0)
	lda	0x10b,x
	tax
	lda	*(__TEMP+0)
	stx	((_lastTime + 0x0008) + 1)
	sta	(_lastTime + 0x0008)
;	../time.c: 153: for (month=0; month<12; month++) {
	tsx
	lda	#0x00
	sta	0x115,x
00114$:
;	../time.c: 154: if (month==1) { // februari
	tsx
	lda	0x115,x
	cmp	#0x01
	bne	00108$
;	../time.c: 155: if (LEAP_YEAR(year)) {
	lda	0x111,x
	ora	0x112,x
	bne	00105$
;	../time.c: 156: monthLength=29;
	ldy	#0x1d
	jmp	00109$
00105$:
;	../time.c: 158: monthLength=28;
	ldy	#0x1c
	jmp	00109$
00108$:
;	../time.c: 161: monthLength = monthDays[month];
	tsx
	lda	0x115,x
	tax
	ldy	(_monthDays+0+0x0000),x
00109$:
;	../time.c: 164: if (epoch>=monthLength) {
	tsx
	tya
	sta	0x109,x
	lda	#0x00
	sta	0x10a,x
	sta	0x10b,x
	sta	0x10c,x
	lda	0x105,x
	sec
	sbc	0x109,x
	lda	0x106,x
	sbc	0x10a,x
	lda	0x107,x
	sbc	0x10b,x
	lda	0x108,x
	sbc	0x10c,x
	bcc	00113$
;	../time.c: 165: epoch-=monthLength;
	lda	0x105,x
	sec
	sbc	0x109,x
	sta	0x105,x
	lda	0x106,x
	sbc	0x10a,x
	sta	0x106,x
	lda	0x107,x
	sbc	0x10b,x
	sta	0x107,x
	lda	0x108,x
	sbc	0x10c,x
	sta	0x108,x
;	../time.c: 153: for (month=0; month<12; month++) {
	lda	0x115,x
	clc
	adc	#0x01
	sta	0x115, x
	cmp	#0x0c
	bcc	00114$
00113$:
;	../time.c: 170: lastTime.tm_mon=month;
	tsx
	lda	0x115,x
	sta	(_lastTime + 0x0004)
;	../time.c: 171: lastTime.tm_mday=epoch+1;
	lda	0x105,x
	tax
	inx
	stx	(_lastTime + 0x0003)
;	../time.c: 173: lastTime.tm_isdst=0;
	ldx	#0x00
	stx	(_lastTime + 0x000a)
;	../time.c: 175: return &lastTime;
	ldx	#>_lastTime
	lda	#_lastTime
;	../time.c: 176: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x17
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'mktime'
;------------------------------------------------------------
;timeptr                   Allocated to stack - sp +21
;year                      Allocated to stack - sp +19
;month                     Allocated to stack - sp +17
;i                         Allocated to stack - sp +15
;seconds                   Allocated to stack - sp +1
;sloc0                     Allocated to stack - sp +13
;sloc1                     Allocated to stack - sp +9
;sloc2                     Allocated to stack - sp +5
;------------------------------------------------------------
;	../time.c: 179: time_t mktime(struct tm *timeptr) {
;	-----------------------------------------
;	 function mktime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 22 bytes.
_mktime:
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0xec
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
;	../time.c: 180: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
	tsx
	lda	0x115,x
	sta	0x10d,x
	lda	0x116,x
	sta	0x10e,x
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	ldy	#0x06
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	clc
	adc	#0x6c
	stx	*(__TEMP+0)
	tsx
	sta	0x113,x
	ldx	*(__TEMP+0)
	txa
	adc	#0x07
	stx	*(__TEMP+0)
	tsx
	sta	0x114,x
	tsx
	lda	0x115,x
	sta	0x10d,x
	lda	0x116,x
	sta	0x10e,x
	lda	0x10d,x
	sta	*(__DPTR+0)
	lda	0x10e,x
	sta	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	tay
	sta	0x111,x
	lda	#0x00
	sta	0x112,x
;	../time.c: 183: CheckTime(timeptr);
	lda	0x116,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x115,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	_CheckTime
;	../time.c: 186: seconds= (year-1970)*(60*60*24L*365);
	tsx
	lda	0x113,x
	sec
	sbc	#0xb2
	sta	0x10d,x
	lda	0x114,x
	sbc	#0x07
	sta	0x10e,x
	lda	0x10d,x
	sta	0x109,x
	lda	0x10e,x
	sta	0x10a,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x10b,x
	sta	0x10c, x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	#0x01
	pha
	lda	#0xe1
	pha
	lda	#0x33
	pha
	lda	#0x80
	pha
;	../time.c: 189: for (i=1970; i<year; i++) {
	jsr	__mullong
	stx	*(__TEMP+0)
	tsx
	sta	0x111,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x112,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x113,x
	lda	*___SDCC_m6502_ret3
	sta	0x114,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	tsx
	lda	#0xb2
	sta	0x10f,x
	lda	#0x07
	sta	0x110,x
00110$:
	tsx
	lda	0x10f,x
	sec
	sbc	0x113,x
	lda	0x110,x
	sbc	0x114,x
	bvc	00148$
	bpl	00147$
	bmi	00124$
00148$:
	bpl	00124$
00147$:
;	../time.c: 190: if (LEAP_YEAR(i)) {
	lda	#0x00
	pha
	lda	#0x04
	pha
	lda	0x110,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x111,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__modsint
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	bne	00150$
	cpx	#0x00
00150$:
	bne	00111$
;	../time.c: 191: seconds+= 60*60*24L;
	tsx
	lda	0x109,x
	clc
	adc	#0x80
	sta	0x109,x
	lda	0x10a,x
	adc	#0x51
	sta	0x10a,x
	lda	0x10b,x
	adc	#0x01
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
00111$:
;	../time.c: 189: for (i=1970; i<year; i++) {
	tsx
	lda	0x10f,x
	clc
	adc	#0x01
	sta	0x10f,x
	lda	0x110,x
	adc	#0x00
	sta	0x110,x
	jmp	00110$
00124$:
	tsx
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10c,x
	sta	0x104,x
;	../time.c: 196: for (i=0; i<month; i++) {
	lda	#0x00
	pha
	lda	#0x04
	pha
	lda	0x114,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x115,x
	php
	ldx	*(__TEMP+0)
	plp
	jsr	__modsint
	stx	*(__TEMP+0)
	tsx
	sta	0x10b,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10c,x
	ldx	*(__TEMP+0)
	sta	*(__TEMP+0)
	pla
	pla
	tsx 
	lda	#0x00
	sta	0x10f,x
	sta	0x110,x
00113$:
	tsx
	lda	0x10f,x
	sec
	sbc	0x111,x
	lda	0x110,x
	sbc	0x112,x
	bvc	00153$
	bpl	00152$
	bmi	00154$
00153$:
	bmi	00152$
00154$:
	jmp	00108$
00152$:
;	../time.c: 197: if (i==1 && LEAP_YEAR(year)) { 
	lda	0x10f,x
	cmp	#0x01
	bne	00105$
	lda	0x110,x
	bne	00105$
	lda	0x109,x
	ora	0x10a,x
	bne	00105$
;	../time.c: 198: seconds+= 60*60*24L*29;
	lda	0x101,x
	clc
	adc	#0x80
	sta	0x101,x
	lda	0x102,x
	adc	#0x3b
	sta	0x102,x
	lda	0x103,x
	adc	#0x26
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
	jmp	00114$
00105$:
;	../time.c: 200: seconds+= 60*60*24L*monthDays[i];
	tsx
	lda	0x10f,x
	sta	0x10d,x
	lda	0x110,x
	sta	0x10e,x
	clc
	lda	0x10d,x
	adc	#<(_monthDays+0)
	sta	*(__DPTR+0)
	lda	0x10e,x
	adc	#>(_monthDays+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	tay
	sta	0x105,x
	lda	#0x00
	sta	0x106,x
	sta	0x107,x
	sta	0x108, x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	#0x00
	pha
	lda	#0x01
	pha
	lda	#0x51
	pha
	lda	#0x80
	pha
	jsr	__mullong
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x101,x
	clc
	adc	0x105,x
	sta	0x101,x
	lda	0x102,x
	adc	0x106,x
	sta	0x102,x
	lda	0x103,x
	adc	0x107,x
	sta	0x103,x
	lda	0x104,x
	adc	0x108,x
	sta	0x104,x
00114$:
;	../time.c: 196: for (i=0; i<month; i++) {
	tsx
	lda	0x10f,x
	clc
	adc	#0x01
	sta	0x10f,x
	lda	0x110,x
	adc	#0x00
	sta	0x110,x
	jmp	00113$
00108$:
;	../time.c: 204: seconds+= (timeptr->tm_mday-1)*60*60*24L;
	tsx
	lda	0x115,x
	sta	0x105,x
	lda	0x116,x
	sta	0x106,x
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	ldy	#0x03
	lda	[__DPTR],y
	ldx	#0x00
	sec
	sbc	#0x01
	bcs	00159$
	dex
00159$:
	pha
	txa
	tsx
	sta	0x107,x
	pla
	sta	0x106,x
	lda	0x107,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x108,x
	sta	0x109, x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	#0x00
	pha
	lda	#0x01
	pha
	lda	#0x51
	pha
	lda	#0x80
	pha
	jsr	__mullong
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x101,x
	clc
	adc	0x105,x
	sta	0x101,x
	lda	0x102,x
	adc	0x106,x
	sta	0x102,x
	lda	0x103,x
	adc	0x107,x
	sta	0x103,x
	lda	0x104,x
	adc	0x108,x
	sta	0x104,x
;	../time.c: 205: seconds+= timeptr->tm_hour*60*60L;
	lda	0x115,x
	sta	0x105,x
	lda	0x116,x
	sta	0x106,x
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	ldy	#0x02
	lda	[__DPTR],y
	tay
	sta	0x105,x
	lda	#0x00
	sta	0x106,x
	sta	0x107,x
	sta	0x108, x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	#0x00
	pha
	pha
	lda	#0x0e
	pha
	lda	#0x10
	pha
	jsr	__mullong
	stx	*(__TEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(__TEMP+0)
	txa
	tsx
	sta	0x10e,x
	ldx	*(__TEMP+0)
	lda	*___SDCC_m6502_ret2
	tsx
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	tsx
	lda	0x101,x
	clc
	adc	0x105,x
	sta	0x101,x
	lda	0x102,x
	adc	0x106,x
	sta	0x102,x
	lda	0x103,x
	adc	0x107,x
	sta	0x103,x
	lda	0x104,x
	adc	0x108,x
	sta	0x104,x
;	../time.c: 206: seconds+= timeptr->tm_min*60;
	lda	0x115,x
	sta	0x105,x
	lda	0x116,x
	sta	0x106,x
	lda	0x105,x
	sta	*(__DPTR+0)
	lda	0x106,x
	sta	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	ldx	#0x00
	sta	*(__TEMP+0)
	txa
	pha
	lda	*(__TEMP+0)
	pha
	lda	#0x3c
	jsr	__mulint
	sta	*(__TEMP+0)
	pla
	pla
	lda	*(__TEMP+0)
	pha
	txa
	tsx
	sta	0x107,x
	pla
	sta	0x106,x
	lda	0x107,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x108,x
	sta	0x109,x
	lda	0x102,x
	clc
	adc	0x106,x
	sta	0x102,x
	lda	0x103,x
	adc	0x107,x
	sta	0x103,x
	lda	0x104,x
	adc	0x108,x
	sta	0x104,x
	lda	0x105,x
	adc	0x109,x
	sta	0x105,x
;	../time.c: 207: seconds+= timeptr->tm_sec;
	lda	0x116,x
	sta	*(__DPTR+0)
	lda	0x117,x
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	ldx	#0x00
	pha
	txa
	tsx
	sta	0x107,x
	pla
	sta	0x106,x
	lda	0x107,x
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	0x108,x
	sta	0x109,x
	lda	0x102,x
	clc
	adc	0x106,x
	sta	0x102,x
	lda	0x103,x
	adc	0x107,x
	sta	0x103,x
	lda	0x104,x
	adc	0x108,x
	sta	0x104,x
	lda	0x105,x
	adc	0x109,x
;	../time.c: 208: return seconds;
	sta	0x105, x
	sta	*___SDCC_m6502_ret3
	lda	0x104,x
	sta	*___SDCC_m6502_ret2
	lda	0x103,x
	tax
	stx	*(__TEMP+0)
	tsx
	lda	0x101,x
	php
	ldx	*(__TEMP+0)
	plp
;	../time.c: 209: }
	sta	*(__TEMP+0)
	stx	*(__TEMP+1)
	tsx
	txa
	clc
	adc	#0x16
	tax
	txs
	ldx	*(__TEMP+1)
	lda	*(__TEMP+0)
	rts
	.area CODE
	.area RODATA
_monthDays:
	.db #0x1f	; 31
	.db #0x1c	; 28
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x1f	; 31
___month:
	.dw __str_1
	.dw __str_2
	.dw __str_3
	.dw __str_4
	.dw __str_5
	.dw __str_6
	.dw __str_7
	.dw __str_8
	.dw __str_9
	.dw __str_10
	.dw __str_11
	.dw __str_12
___day:
	.dw __str_13
	.dw __str_14
	.dw __str_15
	.dw __str_16
	.dw __str_17
	.dw __str_18
	.dw __str_19
	.area RODATA
___str_0:
	.ascii "%s %s %2d %02d:%02d:%02d %04d"
	.db 0x0a
	.db 0x00
	.area CODE
	.area RODATA
__str_1:
	.ascii "Jan"
	.db 0x00
	.area CODE
	.area RODATA
__str_2:
	.ascii "Feb"
	.db 0x00
	.area CODE
	.area RODATA
__str_3:
	.ascii "Mar"
	.db 0x00
	.area CODE
	.area RODATA
__str_4:
	.ascii "Apr"
	.db 0x00
	.area CODE
	.area RODATA
__str_5:
	.ascii "May"
	.db 0x00
	.area CODE
	.area RODATA
__str_6:
	.ascii "Jun"
	.db 0x00
	.area CODE
	.area RODATA
__str_7:
	.ascii "Jul"
	.db 0x00
	.area CODE
	.area RODATA
__str_8:
	.ascii "Aug"
	.db 0x00
	.area CODE
	.area RODATA
__str_9:
	.ascii "Sep"
	.db 0x00
	.area CODE
	.area RODATA
__str_10:
	.ascii "Oct"
	.db 0x00
	.area CODE
	.area RODATA
__str_11:
	.ascii "Nov"
	.db 0x00
	.area CODE
	.area RODATA
__str_12:
	.ascii "Dec"
	.db 0x00
	.area CODE
	.area RODATA
__str_13:
	.ascii "Sun"
	.db 0x00
	.area CODE
	.area RODATA
__str_14:
	.ascii "Mon"
	.db 0x00
	.area CODE
	.area RODATA
__str_15:
	.ascii "Tue"
	.db 0x00
	.area CODE
	.area RODATA
__str_16:
	.ascii "Wed"
	.db 0x00
	.area CODE
	.area RODATA
__str_17:
	.ascii "Thu"
	.db 0x00
	.area CODE
	.area RODATA
__str_18:
	.ascii "Fri"
	.db 0x00
	.area CODE
	.area RODATA
__str_19:
	.ascii "Sat"
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
