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
_asctime_sloc0_1_0:
	.ds 2
_asctime_sloc1_1_0:
	.ds 2
_asctime_sloc2_1_0:
	.ds 2
_asctime_sloc3_1_0:
	.ds 2
_asctime_sloc4_1_0:
	.ds 2
_asctime_sloc5_1_0:
	.ds 2
_asctime_sloc6_1_0:
	.ds 2
_gmtime_sloc0_1_0:
	.ds 4
_gmtime_sloc1_1_0:
	.ds 4
_gmtime_sloc2_1_0:
	.ds 2
_gmtime_sloc3_1_0:
	.ds 4
_mktime_sloc0_1_0:
	.ds 4
_mktime_sloc1_1_0:
	.ds 2
_mktime_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_CheckTime_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_time_timeptr_65536_19:
	.ds 2
_time_now_65536_20:
	.ds 12
_time_t_65536_20:
	.ds 4
_ascTimeBuffer:
	.ds 32
_CheckTime_timeptr_65536_23:
	.ds 2
_asctime_timeptr_65536_25:
	.ds 2
_lastTime:
	.ds 12
_gmtime_epoch_65536_32:
	.ds 4
_gmtime_days_65536_32:
	.ds 4
_mktime_timeptr_65536_42:
	.ds 2
_mktime_year_65536_43:
	.ds 2
_mktime_month_65536_43:
	.ds 2
_mktime_seconds_65536_43:
	.ds 4
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
;timeptr                   Allocated with name '_time_timeptr_65536_19'
;now                       Allocated with name '_time_now_65536_20'
;t                         Allocated with name '_time_t_65536_20'
;------------------------------------------------------------
;	../time.c: 50: time_t time(time_t *timeptr) {
;	-----------------------------------------
;	 function time
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_time:
	sta	_time_timeptr_65536_19
	stx	(_time_timeptr_65536_19 + 1)
;	../time.c: 52: time_t t=(time_t) -1;
	ldx	#0xff
	stx	_time_t_65536_20
	stx	(_time_t_65536_20 + 1)
	stx	(_time_t_65536_20 + 2)
	stx	(_time_t_65536_20 + 3)
;	../time.c: 54: if (RtcRead(&now)) {
	ldx	#>_time_now_65536_20
	lda	#_time_now_65536_20
	jsr	_RtcRead
	cmp	#0x00
	beq	00102$
;	../time.c: 55: t=mktime(&now);
	ldx	#>_time_now_65536_20
	lda	#_time_now_65536_20
	jsr	_mktime
	sta	_time_t_65536_20
	stx	(_time_t_65536_20 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_time_t_65536_20 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_time_t_65536_20 + 3)
00102$:
;	../time.c: 57: if (timeptr) {
	lda	(_time_timeptr_65536_19 + 1)
	ora	_time_timeptr_65536_19
	beq	00104$
;	../time.c: 58: *timeptr=t;
	lda	_time_timeptr_65536_19
	sta	*(__DPTR+0)
	lda	(_time_timeptr_65536_19 + 1)
	sta	*(__DPTR+1)
	lda	_time_t_65536_20
	ldy	#0x00
	sta	[__DPTR],y
	lda	(_time_t_65536_20 + 1)
	iny
	sta	[__DPTR],y
	lda	(_time_t_65536_20 + 2)
	iny
	sta	[__DPTR],y
	lda	(_time_t_65536_20 + 3)
	iny
	sta	[__DPTR],y
00104$:
;	../time.c: 60: return t;
	lda	(_time_t_65536_20 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_time_t_65536_20 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_time_t_65536_20 + 1)
	lda	_time_t_65536_20
;	../time.c: 61: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckTime'
;------------------------------------------------------------
;timeptr                   Allocated with name '_CheckTime_timeptr_65536_23'
;sloc0                     Allocated with name '_CheckTime_sloc0_1_0'
;------------------------------------------------------------
;	../time.c: 73: static void CheckTime(struct tm *timeptr) {
;	-----------------------------------------
;	 function CheckTime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CheckTime:
;	../time.c: 84: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
	sta	_CheckTime_timeptr_65536_23
	stx	(_CheckTime_timeptr_65536_23 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	cmp	#0x3b
	beq	00102$
	bcc	00102$
	lda	_CheckTime_timeptr_65536_23
	sta	*(__DPTR+0)
	lda	(_CheckTime_timeptr_65536_23 + 1)
	sta	*(__DPTR+1)
	lda	#0x3b
	sta	[__DPTR],y
00102$:
;	../time.c: 85: if (timeptr->tm_min>59) timeptr->tm_min=59;
	lda	_CheckTime_timeptr_65536_23
	sta	*_CheckTime_sloc0_1_0
	lda	(_CheckTime_timeptr_65536_23 + 1)
	sta	*(_CheckTime_sloc0_1_0 + 1)
	ldy	#0x01
	lda	[*_CheckTime_sloc0_1_0],y
	cmp	#0x3b
	beq	00104$
	bcc	00104$
	lda	#0x3b
	sta	[*_CheckTime_sloc0_1_0],y
00104$:
;	../time.c: 86: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
	lda	_CheckTime_timeptr_65536_23
	sta	*_CheckTime_sloc0_1_0
	lda	(_CheckTime_timeptr_65536_23 + 1)
	sta	*(_CheckTime_sloc0_1_0 + 1)
	ldy	#0x02
	lda	[*_CheckTime_sloc0_1_0],y
	cmp	#0x17
	beq	00106$
	bcc	00106$
	lda	#0x17
	sta	[*_CheckTime_sloc0_1_0],y
00106$:
;	../time.c: 87: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
	lda	_CheckTime_timeptr_65536_23
	sta	*_CheckTime_sloc0_1_0
	lda	(_CheckTime_timeptr_65536_23 + 1)
	sta	*(_CheckTime_sloc0_1_0 + 1)
	ldy	#0x07
	lda	[*_CheckTime_sloc0_1_0],y
	cmp	#0x06
	beq	00108$
	bcc	00108$
	lda	#0x06
	sta	[*_CheckTime_sloc0_1_0],y
00108$:
;	../time.c: 88: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
	lda	_CheckTime_timeptr_65536_23
	sta	*_CheckTime_sloc0_1_0
	lda	(_CheckTime_timeptr_65536_23 + 1)
	sta	*(_CheckTime_sloc0_1_0 + 1)
	ldy	#0x03
	lda	[*_CheckTime_sloc0_1_0],y
	cmp	#0x01
	bcs	00112$
	lda	#0x01
	sta	[*_CheckTime_sloc0_1_0],y
	jmp	00113$
00112$:
;	../time.c: 89: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
	cmp	#0x1f
	beq	00113$
	bcc	00113$
	lda	#0x1f
	ldy	#0x03
	sta	[*_CheckTime_sloc0_1_0],y
00113$:
;	../time.c: 90: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
	lda	_CheckTime_timeptr_65536_23
	sta	*_CheckTime_sloc0_1_0
	lda	(_CheckTime_timeptr_65536_23 + 1)
	sta	*(_CheckTime_sloc0_1_0 + 1)
	ldy	#0x04
	lda	[*_CheckTime_sloc0_1_0],y
	cmp	#0x0b
	beq	00115$
	bcc	00115$
	lda	#0x0b
	sta	[*_CheckTime_sloc0_1_0],y
00115$:
;	../time.c: 91: if (timeptr->tm_year<0) timeptr->tm_year=0;
	lda	_CheckTime_timeptr_65536_23
	sta	*_CheckTime_sloc0_1_0
	lda	(_CheckTime_timeptr_65536_23 + 1)
	sta	*(_CheckTime_sloc0_1_0 + 1)
	ldy	#0x06
	lda	[*_CheckTime_sloc0_1_0],y
	tax
	dey
	lda	[*_CheckTime_sloc0_1_0],y
	txa
	sec
	sbc	#0x00
	bvc	00166$
	bpl	00165$
	bmi	00118$
00166$:
	bmi	00165$
	rts
00165$:
	lda	#0x00
	sta	[*_CheckTime_sloc0_1_0],y
	iny
	sta	[*_CheckTime_sloc0_1_0],y
00118$:
;	../time.c: 92: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'asctime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_asctime_sloc0_1_0'
;sloc1                     Allocated with name '_asctime_sloc1_1_0'
;sloc2                     Allocated with name '_asctime_sloc2_1_0'
;sloc3                     Allocated with name '_asctime_sloc3_1_0'
;sloc4                     Allocated with name '_asctime_sloc4_1_0'
;sloc5                     Allocated with name '_asctime_sloc5_1_0'
;sloc6                     Allocated with name '_asctime_sloc6_1_0'
;timeptr                   Allocated with name '_asctime_timeptr_65536_25'
;------------------------------------------------------------
;	../time.c: 95: char *asctime(struct tm *timeptr) {
;	-----------------------------------------
;	 function asctime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_asctime:
	sta	_asctime_timeptr_65536_25
;	../time.c: 96: CheckTime(timeptr);
	stx	(_asctime_timeptr_65536_25 + 1)
	lda	_asctime_timeptr_65536_25
	jsr	_CheckTime
;	../time.c: 100: timeptr->tm_year+1900);
	lda	_asctime_timeptr_65536_25
	ldx	(_asctime_timeptr_65536_25 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x06
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	clc
	adc	#0x6c
	sta	*_asctime_sloc0_1_0
	txa
	adc	#0x07
	sta	*(_asctime_sloc0_1_0 + 1)
;	../time.c: 99: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
	lda	_asctime_timeptr_65536_25
	sta	*(__DPTR+0)
	lda	(_asctime_timeptr_65536_25 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*_asctime_sloc1_1_0
	sty	*(_asctime_sloc1_1_0 + 1)
	lda	_asctime_timeptr_65536_25
	ldx	(_asctime_timeptr_65536_25 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	sta	*_asctime_sloc2_1_0
	ldx	#0x00
	stx	*(_asctime_sloc2_1_0 + 1)
	lda	_asctime_timeptr_65536_25
	ldx	(_asctime_timeptr_65536_25 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	sta	*_asctime_sloc3_1_0
	ldx	#0x00
	stx	*(_asctime_sloc3_1_0 + 1)
;	../time.c: 98: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
	lda	_asctime_timeptr_65536_25
	ldx	(_asctime_timeptr_65536_25 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	iny
	lda	[__DPTR],y
	sta	*_asctime_sloc4_1_0
	ldx	#0x00
	stx	*(_asctime_sloc4_1_0 + 1)
	lda	_asctime_timeptr_65536_25
	ldx	(_asctime_timeptr_65536_25 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	iny
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
	sta	*_asctime_sloc5_1_0
	iny
	lda	[__DPTR],y
	sta	*(_asctime_sloc5_1_0 + 1)
	lda	_asctime_timeptr_65536_25
	ldx	(_asctime_timeptr_65536_25 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
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
	sta	*_asctime_sloc6_1_0
	iny
	lda	[__DPTR],y
	sta	*(_asctime_sloc6_1_0 + 1)
;	../time.c: 97: sprintf (ascTimeBuffer, "%s %s %2d %02d:%02d:%02d %04d\n",
	lda	*(_asctime_sloc0_1_0 + 1)
	pha
	lda	*_asctime_sloc0_1_0
	pha
	lda	*(_asctime_sloc1_1_0 + 1)
	pha
	lda	*_asctime_sloc1_1_0
	pha
	lda	*(_asctime_sloc2_1_0 + 1)
	pha
	lda	*_asctime_sloc2_1_0
	pha
	lda	*(_asctime_sloc3_1_0 + 1)
	pha
	lda	*_asctime_sloc3_1_0
	pha
	lda	*(_asctime_sloc4_1_0 + 1)
	pha
	lda	*_asctime_sloc4_1_0
	pha
	lda	*(_asctime_sloc5_1_0 + 1)
	pha
	lda	*_asctime_sloc5_1_0
	pha
	lda	*(_asctime_sloc6_1_0 + 1)
	pha
	lda	*_asctime_sloc6_1_0
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
;sloc0                     Allocated with name '_gmtime_sloc0_1_0'
;sloc1                     Allocated with name '_gmtime_sloc1_1_0'
;sloc2                     Allocated with name '_gmtime_sloc2_1_0'
;sloc3                     Allocated with name '_gmtime_sloc3_1_0'
;timep                     Allocated to registers a x 
;epoch                     Allocated with name '_gmtime_epoch_65536_32'
;year                      Allocated to registers 
;month                     Allocated to registers 
;monthLength               Allocated to registers a 
;days                      Allocated with name '_gmtime_days_65536_32'
;------------------------------------------------------------
;	../time.c: 125: struct tm *gmtime(time_t *timep) {
;	-----------------------------------------
;	 function gmtime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_gmtime:
;	../time.c: 126: unsigned long epoch=*timep;
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	*_gmtime_sloc0_1_0
	iny
	lda	[__DPTR],y
	sta	*(_gmtime_sloc0_1_0 + 1)
	iny
	lda	[__DPTR],y
	sta	*(_gmtime_sloc0_1_0 + 2)
	iny
	lda	[__DPTR],y
	sta	*(_gmtime_sloc0_1_0 + 3)
;	../time.c: 131: lastTime.tm_sec=epoch%60;
	lda	*_gmtime_sloc0_1_0
	sta	__modulong_PARM_1
	lda	*(_gmtime_sloc0_1_0 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	*(_gmtime_sloc0_1_0 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	*(_gmtime_sloc0_1_0 + 3)
	sta	(__modulong_PARM_1 + 3)
	ldx	#0x3c
	stx	__modulong_PARM_2
	ldx	#0x00
	stx	(__modulong_PARM_2 + 1)
	stx	(__modulong_PARM_2 + 2)
	stx	(__modulong_PARM_2 + 3)
	jsr	__modulong
	sta	*_gmtime_sloc1_1_0
	stx	*(_gmtime_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc1_1_0 + 3)
	lda	*_gmtime_sloc1_1_0
	sta	_lastTime
;	../time.c: 132: epoch/=60; // now it is minutes
	lda	*_gmtime_sloc0_1_0
	sta	__divulong_PARM_1
	lda	*(_gmtime_sloc0_1_0 + 1)
	sta	(__divulong_PARM_1 + 1)
	lda	*(_gmtime_sloc0_1_0 + 2)
	sta	(__divulong_PARM_1 + 2)
	lda	*(_gmtime_sloc0_1_0 + 3)
	sta	(__divulong_PARM_1 + 3)
	ldx	#0x3c
	stx	__divulong_PARM_2
	ldx	#0x00
	stx	(__divulong_PARM_2 + 1)
	stx	(__divulong_PARM_2 + 2)
	stx	(__divulong_PARM_2 + 3)
;	../time.c: 133: lastTime.tm_min=epoch%60;
	jsr	__divulong
	sta	*_gmtime_sloc1_1_0
	stx	*(_gmtime_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc1_1_0 + 3)
	lda	*_gmtime_sloc1_1_0
	sta	__modulong_PARM_1
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sta	(__modulong_PARM_1 + 3)
	ldx	#0x3c
	stx	__modulong_PARM_2
	ldx	#0x00
	stx	(__modulong_PARM_2 + 1)
	stx	(__modulong_PARM_2 + 2)
	stx	(__modulong_PARM_2 + 3)
	jsr	__modulong
	sta	*_gmtime_sloc0_1_0
	stx	*(_gmtime_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc0_1_0 + 3)
	lda	*_gmtime_sloc0_1_0
	sta	(_lastTime + 0x0001)
;	../time.c: 134: epoch/=60; // now it is hours
	lda	*_gmtime_sloc1_1_0
	sta	__divulong_PARM_1
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(__divulong_PARM_1 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(__divulong_PARM_1 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sta	(__divulong_PARM_1 + 3)
	ldx	#0x3c
	stx	__divulong_PARM_2
	ldx	#0x00
	stx	(__divulong_PARM_2 + 1)
	stx	(__divulong_PARM_2 + 2)
	stx	(__divulong_PARM_2 + 3)
;	../time.c: 135: lastTime.tm_hour=epoch%24;
	jsr	__divulong
	sta	*_gmtime_sloc1_1_0
	stx	*(_gmtime_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc1_1_0 + 3)
	lda	*_gmtime_sloc1_1_0
	sta	__modulong_PARM_1
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sta	(__modulong_PARM_1 + 3)
	ldx	#0x18
	stx	__modulong_PARM_2
	ldx	#0x00
	stx	(__modulong_PARM_2 + 1)
	stx	(__modulong_PARM_2 + 2)
	stx	(__modulong_PARM_2 + 3)
	jsr	__modulong
	sta	*_gmtime_sloc0_1_0
	stx	*(_gmtime_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc0_1_0 + 3)
	lda	*_gmtime_sloc0_1_0
	sta	(_lastTime + 0x0002)
;	../time.c: 136: epoch/=24; // now it is days
	lda	*_gmtime_sloc1_1_0
	sta	__divulong_PARM_1
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(__divulong_PARM_1 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(__divulong_PARM_1 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sta	(__divulong_PARM_1 + 3)
	ldx	#0x18
	stx	__divulong_PARM_2
	ldx	#0x00
	stx	(__divulong_PARM_2 + 1)
	stx	(__divulong_PARM_2 + 2)
	stx	(__divulong_PARM_2 + 3)
;	../time.c: 137: lastTime.tm_wday=(epoch+4)%7;
	jsr	__divulong
	sta	*_gmtime_sloc1_1_0
	stx	*(_gmtime_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc1_1_0 + 3)
	lda	*_gmtime_sloc1_1_0
	clc
	adc	#0x04
	sta	__modulong_PARM_1
	lda	*(_gmtime_sloc1_1_0 + 1)
	adc	#0x00
	sta	(__modulong_PARM_1 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	adc	#0x00
	sta	(__modulong_PARM_1 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	adc	#0x00
	sta	(__modulong_PARM_1 + 3)
	ldx	#0x07
	stx	__modulong_PARM_2
	ldx	#0x00
	stx	(__modulong_PARM_2 + 1)
	stx	(__modulong_PARM_2 + 2)
	stx	(__modulong_PARM_2 + 3)
	jsr	__modulong
	sta	*_gmtime_sloc0_1_0
	stx	*(_gmtime_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc0_1_0 + 3)
	lda	*_gmtime_sloc0_1_0
	sta	(_lastTime + 0x0007)
;	../time.c: 140: days=0;
	ldx	#0x00
	stx	_gmtime_days_65536_32
	stx	(_gmtime_days_65536_32 + 1)
	stx	(_gmtime_days_65536_32 + 2)
	stx	(_gmtime_days_65536_32 + 3)
;	../time.c: 141: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
	ldx	#0xb2
	stx	*_gmtime_sloc0_1_0
	ldx	#0x07
	stx	*(_gmtime_sloc0_1_0 + 1)
00101$:
	lda	#0x03
	and	*_gmtime_sloc0_1_0
	bne	00118$
	lda	#0x6e
	ldx	#0x01
	jmp	00119$
00118$:
	lda	#0x6d
	ldx	#0x01
00119$:
	sta	*_gmtime_sloc3_1_0
	stx	*(_gmtime_sloc3_1_0 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(_gmtime_sloc3_1_0 + 2)
	sta	*(_gmtime_sloc3_1_0 + 3)
	lda	_gmtime_days_65536_32
	clc
	adc	*_gmtime_sloc3_1_0
	sta	*_gmtime_sloc3_1_0
	lda	(_gmtime_days_65536_32 + 1)
	adc	*(_gmtime_sloc3_1_0 + 1)
	sta	*(_gmtime_sloc3_1_0 + 1)
	lda	(_gmtime_days_65536_32 + 2)
	adc	*(_gmtime_sloc3_1_0 + 2)
	sta	*(_gmtime_sloc3_1_0 + 2)
	lda	(_gmtime_days_65536_32 + 3)
	adc	*(_gmtime_sloc3_1_0 + 3)
	sta	*(_gmtime_sloc3_1_0 + 3)
	lda	*_gmtime_sloc3_1_0
	sta	_gmtime_days_65536_32
	lda	*(_gmtime_sloc3_1_0 + 1)
	sta	(_gmtime_days_65536_32 + 1)
	lda	*(_gmtime_sloc3_1_0 + 2)
	sta	(_gmtime_days_65536_32 + 2)
	lda	*(_gmtime_sloc3_1_0 + 3)
	sta	(_gmtime_days_65536_32 + 3)
	lda	*_gmtime_sloc1_1_0
	sec
	sbc	*_gmtime_sloc3_1_0
	lda	*(_gmtime_sloc1_1_0 + 1)
	sbc	*(_gmtime_sloc3_1_0 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sbc	*(_gmtime_sloc3_1_0 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sbc	*(_gmtime_sloc3_1_0 + 3)
	bcc	00103$
;	../time.c: 142: year++;
	inc	*_gmtime_sloc0_1_0
	bne	00101$
	inc	*(_gmtime_sloc0_1_0 + 1)
	jmp	00101$
00103$:
;	../time.c: 144: lastTime.tm_year=year-1900;
	lda	*_gmtime_sloc0_1_0
	sec
	sbc	#0x6c
	pha
	lda	*(_gmtime_sloc0_1_0 + 1)
	sbc	#0x07
	tax
	pla
	stx	((_lastTime + 0x0005) + 1)
	sta	(_lastTime + 0x0005)
;	../time.c: 146: days -= LEAP_YEAR(year) ? 366 : 365;
	lda	*_gmtime_sloc0_1_0
	and	#0x03
	sta	*_gmtime_sloc3_1_0
	ldx	#0x00
	stx	*(_gmtime_sloc3_1_0 + 1)
	lda	*(_gmtime_sloc3_1_0 + 1)
	ora	*_gmtime_sloc3_1_0
	bne	00120$
	lda	#0x6e
	inx
	jmp	00121$
00120$:
	lda	#0x6d
	ldx	#0x01
00121$:
	sta	*_gmtime_sloc0_1_0
	stx	*(_gmtime_sloc0_1_0 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(_gmtime_sloc0_1_0 + 2)
	sta	*(_gmtime_sloc0_1_0 + 3)
	lda	_gmtime_days_65536_32
	sec
	sbc	*_gmtime_sloc0_1_0
	sta	_gmtime_days_65536_32
	lda	(_gmtime_days_65536_32 + 1)
	sbc	*(_gmtime_sloc0_1_0 + 1)
	sta	(_gmtime_days_65536_32 + 1)
	lda	(_gmtime_days_65536_32 + 2)
	sbc	*(_gmtime_sloc0_1_0 + 2)
	sta	(_gmtime_days_65536_32 + 2)
	lda	(_gmtime_days_65536_32 + 3)
	sbc	*(_gmtime_sloc0_1_0 + 3)
	sta	(_gmtime_days_65536_32 + 3)
;	../time.c: 147: epoch -= days; // now it is days in this year, starting at 0
	lda	*_gmtime_sloc1_1_0
	sec
	sbc	_gmtime_days_65536_32
	sta	*_gmtime_sloc1_1_0
	lda	*(_gmtime_sloc1_1_0 + 1)
	sbc	(_gmtime_days_65536_32 + 1)
	sta	*(_gmtime_sloc1_1_0 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sbc	(_gmtime_days_65536_32 + 2)
	sta	*(_gmtime_sloc1_1_0 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sbc	(_gmtime_days_65536_32 + 3)
	sta	*(_gmtime_sloc1_1_0 + 3)
	lda	*_gmtime_sloc1_1_0
	sta	_gmtime_epoch_65536_32
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(_gmtime_epoch_65536_32 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(_gmtime_epoch_65536_32 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sta	(_gmtime_epoch_65536_32 + 3)
;	../time.c: 148: lastTime.tm_yday=epoch;
	lda	*_gmtime_sloc1_1_0
	ldx	*(_gmtime_sloc1_1_0 + 1)
	stx	((_lastTime + 0x0008) + 1)
	sta	(_lastTime + 0x0008)
;	../time.c: 153: for (month=0; month<12; month++) {
	ldx	#0x00
00114$:
;	../time.c: 154: if (month==1) { // februari
	cpx	#0x01
	bne	00108$
;	../time.c: 155: if (LEAP_YEAR(year)) {
	lda	*(_gmtime_sloc3_1_0 + 1)
	ora	*_gmtime_sloc3_1_0
	bne	00105$
;	../time.c: 156: monthLength=29;
	lda	#0x1d
	jmp	00109$
00105$:
;	../time.c: 158: monthLength=28;
	lda	#0x1c
	jmp	00109$
00108$:
;	../time.c: 161: monthLength = monthDays[month];
	stx	*_gmtime_sloc2_1_0
	ldy	#0x00
	sty	*(_gmtime_sloc2_1_0 + 1)
	stx	*(__TEMP+0)
	clc
	lda	*_gmtime_sloc2_1_0
	adc	#<(_monthDays+0)
	sta	*(__DPTR+0)
	lda	*(_gmtime_sloc2_1_0 + 1)
	adc	#>(_monthDays+0)
	sta	*(__DPTR+1)
	lda	[__DPTR],y
	ldx	*(__TEMP+0)
00109$:
;	../time.c: 164: if (epoch>=monthLength) {
	sta	*_gmtime_sloc1_1_0
	ldy	#0x00
	sty	*(_gmtime_sloc1_1_0 + 1)
	sty	*(_gmtime_sloc1_1_0 + 2)
	sty	*(_gmtime_sloc1_1_0 + 3)
	lda	_gmtime_epoch_65536_32
	sec
	sbc	*_gmtime_sloc1_1_0
	lda	(_gmtime_epoch_65536_32 + 1)
	sbc	*(_gmtime_sloc1_1_0 + 1)
	lda	(_gmtime_epoch_65536_32 + 2)
	sbc	*(_gmtime_sloc1_1_0 + 2)
	lda	(_gmtime_epoch_65536_32 + 3)
	sbc	*(_gmtime_sloc1_1_0 + 3)
	bcc	00113$
;	../time.c: 165: epoch-=monthLength;
	lda	_gmtime_epoch_65536_32
	sec
	sbc	*_gmtime_sloc1_1_0
	sta	_gmtime_epoch_65536_32
	lda	(_gmtime_epoch_65536_32 + 1)
	sbc	*(_gmtime_sloc1_1_0 + 1)
	sta	(_gmtime_epoch_65536_32 + 1)
	lda	(_gmtime_epoch_65536_32 + 2)
	sbc	*(_gmtime_sloc1_1_0 + 2)
	sta	(_gmtime_epoch_65536_32 + 2)
	lda	(_gmtime_epoch_65536_32 + 3)
	sbc	*(_gmtime_sloc1_1_0 + 3)
	sta	(_gmtime_epoch_65536_32 + 3)
;	../time.c: 153: for (month=0; month<12; month++) {
	inx
	cpx	#0x0c
	bcc	00114$
00113$:
;	../time.c: 170: lastTime.tm_mon=month;
	stx	(_lastTime + 0x0004)
;	../time.c: 171: lastTime.tm_mday=epoch+1;
	ldx	_gmtime_epoch_65536_32
	inx
	stx	(_lastTime + 0x0003)
;	../time.c: 173: lastTime.tm_isdst=0;
	ldx	#0x00
	stx	(_lastTime + 0x000a)
;	../time.c: 175: return &lastTime;
	ldx	#>_lastTime
	lda	#_lastTime
;	../time.c: 176: }
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'mktime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_mktime_sloc0_1_0'
;sloc1                     Allocated with name '_mktime_sloc1_1_0'
;sloc2                     Allocated with name '_mktime_sloc2_1_0'
;timeptr                   Allocated with name '_mktime_timeptr_65536_42'
;year                      Allocated with name '_mktime_year_65536_43'
;month                     Allocated with name '_mktime_month_65536_43'
;i                         Allocated to registers 
;seconds                   Allocated with name '_mktime_seconds_65536_43'
;------------------------------------------------------------
;	../time.c: 179: time_t mktime(struct tm *timeptr) {
;	-----------------------------------------
;	 function mktime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mktime:
;	../time.c: 180: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
	sta	_mktime_timeptr_65536_42
	stx	(_mktime_timeptr_65536_42 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x06
	lda	[__DPTR],y
	tax
	dey
	lda	[__DPTR],y
	clc
	adc	#0x6c
	sta	_mktime_year_65536_43
	txa
	adc	#0x07
	sta	(_mktime_year_65536_43 + 1)
	lda	_mktime_timeptr_65536_42
	ldx	(_mktime_timeptr_65536_42 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	dey
	lda	[__DPTR],y
	sta	_mktime_month_65536_43
	ldx	#0x00
	stx	(_mktime_month_65536_43 + 1)
;	../time.c: 183: CheckTime(timeptr);
	ldx	(_mktime_timeptr_65536_42 + 1)
	lda	_mktime_timeptr_65536_42
	jsr	_CheckTime
;	../time.c: 186: seconds= (year-1970)*(60*60*24L*365);
	lda	_mktime_year_65536_43
	sec
	sbc	#0xb2
	pha
	lda	(_mktime_year_65536_43 + 1)
	sbc	#0x07
	tax
	pla
	sta	__mullong_PARM_2
	stx	(__mullong_PARM_2 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	(__mullong_PARM_2 + 2)
	sta	(__mullong_PARM_2 + 3)
	ldx	#0x80
	stx	__mullong_PARM_1
	ldx	#0x33
	stx	(__mullong_PARM_1 + 1)
	ldx	#0xe1
	stx	(__mullong_PARM_1 + 2)
	ldx	#0x01
	stx	(__mullong_PARM_1 + 3)
;	../time.c: 189: for (i=1970; i<year; i++) {
	jsr	__mullong
	sta	*_mktime_sloc0_1_0
	stx	*(_mktime_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_mktime_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_mktime_sloc0_1_0 + 3)
	ldx	#0xb2
	stx	*_mktime_sloc1_1_0
	ldx	#0x07
	stx	*(_mktime_sloc1_1_0 + 1)
00110$:
	lda	*_mktime_sloc1_1_0
	sec
	sbc	_mktime_year_65536_43
	lda	*(_mktime_sloc1_1_0 + 1)
	sbc	(_mktime_year_65536_43 + 1)
	bvc	00148$
	bpl	00147$
	bmi	00124$
00148$:
	bpl	00124$
00147$:
;	../time.c: 190: if (LEAP_YEAR(i)) {
	ldx	#0x04
	stx	__modsint_PARM_2
	ldx	#0x00
	stx	(__modsint_PARM_2 + 1)
	ldx	*(_mktime_sloc1_1_0 + 1)
	lda	*_mktime_sloc1_1_0
	jsr	__modsint
	cmp	#0x00
	bne	00150$
	cpx	#0x00
00150$:
	bne	00111$
;	../time.c: 191: seconds+= 60*60*24L;
	lda	*_mktime_sloc0_1_0
	clc
	adc	#0x80
	sta	*_mktime_sloc0_1_0
	lda	*(_mktime_sloc0_1_0 + 1)
	adc	#0x51
	sta	*(_mktime_sloc0_1_0 + 1)
	lda	*(_mktime_sloc0_1_0 + 2)
	adc	#0x01
	sta	*(_mktime_sloc0_1_0 + 2)
	lda	*(_mktime_sloc0_1_0 + 3)
	adc	#0x00
	sta	*(_mktime_sloc0_1_0 + 3)
00111$:
;	../time.c: 189: for (i=1970; i<year; i++) {
	inc	*_mktime_sloc1_1_0
	bne	00110$
	inc	*(_mktime_sloc1_1_0 + 1)
	jmp	00110$
00124$:
	lda	*_mktime_sloc0_1_0
	sta	_mktime_seconds_65536_43
	lda	*(_mktime_sloc0_1_0 + 1)
	sta	(_mktime_seconds_65536_43 + 1)
	lda	*(_mktime_sloc0_1_0 + 2)
	sta	(_mktime_seconds_65536_43 + 2)
	lda	*(_mktime_sloc0_1_0 + 3)
	sta	(_mktime_seconds_65536_43 + 3)
;	../time.c: 196: for (i=0; i<month; i++) {
	ldx	#0x04
	stx	__modsint_PARM_2
	ldx	#0x00
	stx	(__modsint_PARM_2 + 1)
	ldx	(_mktime_year_65536_43 + 1)
	lda	_mktime_year_65536_43
	jsr	__modsint
	sta	*_mktime_sloc1_1_0
	stx	*(_mktime_sloc1_1_0 + 1)
	ldx	#0x00
	stx	*_mktime_sloc0_1_0
	stx	*(_mktime_sloc0_1_0 + 1)
00113$:
	lda	*_mktime_sloc0_1_0
	sec
	sbc	_mktime_month_65536_43
	lda	*(_mktime_sloc0_1_0 + 1)
	sbc	(_mktime_month_65536_43 + 1)
	bvc	00154$
	bpl	00153$
	bmi	00155$
00154$:
	bmi	00153$
00155$:
	jmp	00108$
00153$:
;	../time.c: 197: if (i==1 && LEAP_YEAR(year)) { 
	lda	*_mktime_sloc0_1_0
	cmp	#0x01
	bne	00105$
	lda	*(_mktime_sloc0_1_0 + 1)
	bne	00105$
	lda	*(_mktime_sloc1_1_0 + 1)
	ora	*_mktime_sloc1_1_0
	bne	00105$
;	../time.c: 198: seconds+= 60*60*24L*29;
	lda	_mktime_seconds_65536_43
	clc
	adc	#0x80
	sta	_mktime_seconds_65536_43
	lda	(_mktime_seconds_65536_43 + 1)
	adc	#0x3b
	sta	(_mktime_seconds_65536_43 + 1)
	lda	(_mktime_seconds_65536_43 + 2)
	adc	#0x26
	sta	(_mktime_seconds_65536_43 + 2)
	lda	(_mktime_seconds_65536_43 + 3)
	adc	#0x00
	sta	(_mktime_seconds_65536_43 + 3)
	jmp	00114$
00105$:
;	../time.c: 200: seconds+= 60*60*24L*monthDays[i];
	lda	*_mktime_sloc0_1_0
	ldx	*(_mktime_sloc0_1_0 + 1)
	clc
	adc	#<(_monthDays+0)
	sta	*(__DPTR+0)
	txa
	adc	#>(_monthDays+0)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	sta	__mullong_PARM_2
	sty	(__mullong_PARM_2 + 1)
	sty	(__mullong_PARM_2 + 2)
	sty	(__mullong_PARM_2 + 3)
	ldx	#0x80
	stx	__mullong_PARM_1
	ldx	#0x51
	stx	(__mullong_PARM_1 + 1)
	ldx	#0x01
	stx	(__mullong_PARM_1 + 2)
	sty	(__mullong_PARM_1 + 3)
	jsr	__mullong
	sta	*_mktime_sloc2_1_0
	stx	*(_mktime_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_mktime_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_mktime_sloc2_1_0 + 3)
	lda	_mktime_seconds_65536_43
	clc
	adc	*_mktime_sloc2_1_0
	sta	_mktime_seconds_65536_43
	lda	(_mktime_seconds_65536_43 + 1)
	adc	*(_mktime_sloc2_1_0 + 1)
	sta	(_mktime_seconds_65536_43 + 1)
	lda	(_mktime_seconds_65536_43 + 2)
	adc	*(_mktime_sloc2_1_0 + 2)
	sta	(_mktime_seconds_65536_43 + 2)
	lda	(_mktime_seconds_65536_43 + 3)
	adc	*(_mktime_sloc2_1_0 + 3)
	sta	(_mktime_seconds_65536_43 + 3)
00114$:
;	../time.c: 196: for (i=0; i<month; i++) {
	inc	*_mktime_sloc0_1_0
	bne	00160$
	inc	*(_mktime_sloc0_1_0 + 1)
00160$:
	jmp	00113$
00108$:
;	../time.c: 204: seconds+= (timeptr->tm_mday-1)*60*60*24L;
	lda	_mktime_timeptr_65536_42
	ldx	(_mktime_timeptr_65536_42 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x03
	lda	[__DPTR],y
	ldx	#0x00
	sec
	sbc	#0x01
	bcs	00161$
	dex
00161$:
	sta	__mullong_PARM_2
	stx	(__mullong_PARM_2 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	(__mullong_PARM_2 + 2)
	sta	(__mullong_PARM_2 + 3)
	ldx	#0x80
	stx	__mullong_PARM_1
	ldx	#0x51
	stx	(__mullong_PARM_1 + 1)
	ldx	#0x01
	stx	(__mullong_PARM_1 + 2)
	dex
	stx	(__mullong_PARM_1 + 3)
	jsr	__mullong
	sta	*_mktime_sloc2_1_0
	stx	*(_mktime_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_mktime_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_mktime_sloc2_1_0 + 3)
	lda	_mktime_seconds_65536_43
	clc
	adc	*_mktime_sloc2_1_0
	sta	_mktime_seconds_65536_43
	lda	(_mktime_seconds_65536_43 + 1)
	adc	*(_mktime_sloc2_1_0 + 1)
	sta	(_mktime_seconds_65536_43 + 1)
	lda	(_mktime_seconds_65536_43 + 2)
	adc	*(_mktime_sloc2_1_0 + 2)
	sta	(_mktime_seconds_65536_43 + 2)
	lda	(_mktime_seconds_65536_43 + 3)
	adc	*(_mktime_sloc2_1_0 + 3)
	sta	(_mktime_seconds_65536_43 + 3)
;	../time.c: 205: seconds+= timeptr->tm_hour*60*60L;
	lda	_mktime_timeptr_65536_42
	ldx	(_mktime_timeptr_65536_42 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x02
	lda	[__DPTR],y
	sta	__mullong_PARM_2
	ldx	#0x00
	stx	(__mullong_PARM_2 + 1)
	stx	(__mullong_PARM_2 + 2)
	stx	(__mullong_PARM_2 + 3)
	ldx	#0x10
	stx	__mullong_PARM_1
	ldx	#0x0e
	stx	(__mullong_PARM_1 + 1)
	ldx	#0x00
	stx	(__mullong_PARM_1 + 2)
	stx	(__mullong_PARM_1 + 3)
	jsr	__mullong
	sta	*_mktime_sloc2_1_0
	stx	*(_mktime_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_mktime_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_mktime_sloc2_1_0 + 3)
	lda	_mktime_seconds_65536_43
	clc
	adc	*_mktime_sloc2_1_0
	sta	_mktime_seconds_65536_43
	lda	(_mktime_seconds_65536_43 + 1)
	adc	*(_mktime_sloc2_1_0 + 1)
	sta	(_mktime_seconds_65536_43 + 1)
	lda	(_mktime_seconds_65536_43 + 2)
	adc	*(_mktime_sloc2_1_0 + 2)
	sta	(_mktime_seconds_65536_43 + 2)
	lda	(_mktime_seconds_65536_43 + 3)
	adc	*(_mktime_sloc2_1_0 + 3)
	sta	(_mktime_seconds_65536_43 + 3)
;	../time.c: 206: seconds+= timeptr->tm_min*60;
	lda	_mktime_timeptr_65536_42
	ldx	(_mktime_timeptr_65536_42 + 1)
	sta	*(__DPTR+0)
	stx	*(__DPTR+1)
	ldy	#0x01
	lda	[__DPTR],y
	sta	__mulint_PARM_2
	ldx	#0x00
	stx	(__mulint_PARM_2 + 1)
	lda	#0x3c
	jsr	__mulint
	sta	*_mktime_sloc2_1_0
	stx	*(_mktime_sloc2_1_0 + 1)
	txa
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(_mktime_sloc2_1_0 + 2)
	sta	*(_mktime_sloc2_1_0 + 3)
	lda	_mktime_seconds_65536_43
	clc
	adc	*_mktime_sloc2_1_0
	sta	_mktime_seconds_65536_43
	lda	(_mktime_seconds_65536_43 + 1)
	adc	*(_mktime_sloc2_1_0 + 1)
	sta	(_mktime_seconds_65536_43 + 1)
	lda	(_mktime_seconds_65536_43 + 2)
	adc	*(_mktime_sloc2_1_0 + 2)
	sta	(_mktime_seconds_65536_43 + 2)
	lda	(_mktime_seconds_65536_43 + 3)
	adc	*(_mktime_sloc2_1_0 + 3)
	sta	(_mktime_seconds_65536_43 + 3)
;	../time.c: 207: seconds+= timeptr->tm_sec;
	lda	_mktime_timeptr_65536_42
	sta	*(__DPTR+0)
	lda	(_mktime_timeptr_65536_42 + 1)
	sta	*(__DPTR+1)
	ldy	#0x00
	lda	[__DPTR],y
	ldx	#0x00
	sta	*_mktime_sloc2_1_0
	stx	*(_mktime_sloc2_1_0 + 1)
	txa
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	*(_mktime_sloc2_1_0 + 2)
	sta	*(_mktime_sloc2_1_0 + 3)
	lda	_mktime_seconds_65536_43
	clc
	adc	*_mktime_sloc2_1_0
	sta	_mktime_seconds_65536_43
	lda	(_mktime_seconds_65536_43 + 1)
	adc	*(_mktime_sloc2_1_0 + 1)
	sta	(_mktime_seconds_65536_43 + 1)
	lda	(_mktime_seconds_65536_43 + 2)
	adc	*(_mktime_sloc2_1_0 + 2)
	sta	(_mktime_seconds_65536_43 + 2)
	lda	(_mktime_seconds_65536_43 + 3)
	adc	*(_mktime_sloc2_1_0 + 3)
;	../time.c: 208: return seconds;
	sta	(_mktime_seconds_65536_43 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_mktime_seconds_65536_43 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_mktime_seconds_65536_43 + 1)
	lda	_mktime_seconds_65536_43
;	../time.c: 209: }
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
