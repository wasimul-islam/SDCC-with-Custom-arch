;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module time
	.optsdcc -mmcs51 --model-huge
	
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
_asctime_sloc0_1_0:
	.ds 2
_asctime_sloc1_1_0:
	.ds 2
_asctime_sloc2_1_0:
	.ds 2
_asctime_sloc3_1_0:
	.ds 2
_gmtime_sloc0_1_0:
	.ds 2
_gmtime_sloc1_1_0:
	.ds 4
_gmtime_sloc2_1_0:
	.ds 4
_mktime_sloc0_1_0:
	.ds 2
_mktime_sloc1_1_0:
	.ds 2
_mktime_sloc2_1_0:
	.ds 4
_mktime_sloc3_1_0:
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_time_timeptr_65536_22:
	.ds 3
_time_now_65536_23:
	.ds 12
_time_t_65536_23:
	.ds 4
_ascTimeBuffer:
	.ds 32
_CheckTime_timeptr_65536_26:
	.ds 3
_asctime_timeptr_65536_28:
	.ds 3
_ctime_timep_65536_30:
	.ds 3
_lastTime:
	.ds 12
_localtime_timep_65536_32:
	.ds 3
_gmtime_timep_65536_34:
	.ds 3
_gmtime_epoch_65536_35:
	.ds 4
_gmtime_monthLength_65536_35:
	.ds 1
_gmtime_days_65536_35:
	.ds 4
_mktime_timeptr_65536_45:
	.ds 3
_mktime_seconds_65536_46:
	.ds 4
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
;Allocation info for local variables in function 'RtcRead'
;------------------------------------------------------------
;timeptr                   Allocated with name '_RtcRead_timeptr_65536_20'
;------------------------------------------------------------
;	time.c:42: unsigned char RtcRead(struct tm *timeptr) {
;	-----------------------------------------
;	 function RtcRead
;	-----------------------------------------
_RtcRead:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	time.c:45: return 0;
	mov	dpl,#0x00
;	time.c:46: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'time'
;------------------------------------------------------------
;timeptr                   Allocated with name '_time_timeptr_65536_22'
;now                       Allocated with name '_time_now_65536_23'
;t                         Allocated with name '_time_t_65536_23'
;------------------------------------------------------------
;	time.c:50: time_t time(time_t *timeptr) {
;	-----------------------------------------
;	 function time
;	-----------------------------------------
_time:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_time_timeptr_65536_22
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	time.c:52: time_t t=(time_t) -1;
	mov	dptr,#_time_t_65536_23
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	time.c:54: if (RtcRead(&now)) {
	mov	dptr,#_time_now_65536_23
	mov	b,#0x00
	mov	r0,#_RtcRead
	mov	r1,#(_RtcRead >> 8)
	mov	r2,#(_RtcRead >> 16)
	lcall	__sdcc_banked_call
	mov	a,dpl
	jz	00102$
;	time.c:55: t=mktime(&now);
	mov	dptr,#_time_now_65536_23
	mov	b,#0x00
	mov	r0,#_mktime
	mov	r1,#(_mktime >> 8)
	mov	r2,#(_mktime >> 16)
	lcall	__sdcc_banked_call
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_time_t_65536_23
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00102$:
;	time.c:57: if (timeptr) {
	mov	dptr,#_time_timeptr_65536_22
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_time_timeptr_65536_22
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00104$
;	time.c:58: *timeptr=t;
	mov	dptr,#_time_t_65536_23
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00104$:
;	time.c:60: return t;
	mov	dptr,#_time_t_65536_23
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	time.c:61: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckTime'
;------------------------------------------------------------
;timeptr                   Allocated with name '_CheckTime_timeptr_65536_26'
;------------------------------------------------------------
;	time.c:73: static void CheckTime(struct tm *timeptr) {
;	-----------------------------------------
;	 function CheckTime
;	-----------------------------------------
_CheckTime:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_CheckTime_timeptr_65536_26
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	time.c:84: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
	mov	dptr,#_CheckTime_timeptr_65536_26
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a,#0xff - 0x3b
	jnc	00102$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x3b
	lcall	__gptrput
00102$:
;	time.c:85: if (timeptr->tm_min>59) timeptr->tm_min=59;
	mov	dptr,#_CheckTime_timeptr_65536_26
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00153$
	inc	r6
00153$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a,#0xff - 0x3b
	jnc	00104$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x3b
	lcall	__gptrput
00104$:
;	time.c:86: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
	mov	dptr,#_CheckTime_timeptr_65536_26
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
	add	a,#0xff - 0x17
	jnc	00106$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x17
	lcall	__gptrput
00106$:
;	time.c:87: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
	mov	dptr,#_CheckTime_timeptr_65536_26
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a,#0xff - 0x06
	jnc	00108$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x06
	lcall	__gptrput
00108$:
;	time.c:88: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
	mov	dptr,#_CheckTime_timeptr_65536_26
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x01,00157$
00157$:
	jnc	00112$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	sjmp	00113$
00112$:
;	time.c:89: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
	mov	a,r4
	add	a,#0xff - 0x1f
	jnc	00113$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x1f
	lcall	__gptrput
00113$:
;	time.c:90: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
	mov	dptr,#_CheckTime_timeptr_65536_26
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	add	a,#0xff - 0x0b
	jnc	00115$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0b
	lcall	__gptrput
00115$:
;	time.c:91: if (timeptr->tm_year<0) timeptr->tm_year=0;
	mov	dptr,#_CheckTime_timeptr_65536_26
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	jnb	acc.7,00118$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00118$:
;	time.c:92: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'asctime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_asctime_sloc0_1_0'
;sloc1                     Allocated with name '_asctime_sloc1_1_0'
;sloc2                     Allocated with name '_asctime_sloc2_1_0'
;sloc3                     Allocated with name '_asctime_sloc3_1_0'
;timeptr                   Allocated with name '_asctime_timeptr_65536_28'
;------------------------------------------------------------
;	time.c:95: char *asctime(struct tm *timeptr) {
;	-----------------------------------------
;	 function asctime
;	-----------------------------------------
_asctime:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_asctime_timeptr_65536_28
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	time.c:96: CheckTime(timeptr);
	mov	dptr,#_asctime_timeptr_65536_28
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_CheckTime
	mov	r1,#(_CheckTime >> 8)
	mov	r2,#(_CheckTime >> 16)
	lcall	__sdcc_banked_call
;	time.c:100: timeptr->tm_year+1900);
	mov	dptr,#_asctime_timeptr_65536_28
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x6c
	add	a,r2
	mov	r2,a
	mov	a,#0x07
	addc	a,r3
	mov	r3,a
;	time.c:99: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	_asctime_sloc0_1_0,r4
	mov	(_asctime_sloc0_1_0 + 1),#0x00
	mov	a,#0x01
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	_asctime_sloc1_1_0,r0
	mov	(_asctime_sloc1_1_0 + 1),#0x00
	mov	a,#0x02
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	_asctime_sloc2_1_0,r0
	mov	(_asctime_sloc2_1_0 + 1),#0x00
;	time.c:98: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
	mov	a,#0x03
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	_asctime_sloc3_1_0,r0
	mov	(_asctime_sloc3_1_0 + 1),#0x00
	mov	a,#0x04
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	b,#0x03
	mul	ab
	add	a,#___month
	mov	dpl,a
	mov	a,#(___month >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	b,#0x03
	mul	ab
	add	a,#___day
	mov	dpl,a
	mov	a,#(___day >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	time.c:97: sprintf (ascTimeBuffer, "%s %s %2d %02d:%02d:%02d %04d\n",
	push	ar2
	push	ar3
	push	_asctime_sloc0_1_0
	push	(_asctime_sloc0_1_0 + 1)
	push	_asctime_sloc1_1_0
	push	(_asctime_sloc1_1_0 + 1)
	push	_asctime_sloc2_1_0
	push	(_asctime_sloc2_1_0 + 1)
	push	_asctime_sloc3_1_0
	push	(_asctime_sloc3_1_0 + 1)
	push	ar0
	push	ar1
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_ascTimeBuffer
	push	acc
	mov	a,#(_ascTimeBuffer >> 8)
	push	acc
	clr	a
	push	acc
	mov	r0,#_sprintf
	mov	r1,#(_sprintf >> 8)
	mov	r2,#(_sprintf >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xea
	mov	sp,a
;	time.c:101: return ascTimeBuffer;
	mov	dptr,#_ascTimeBuffer
	mov	b,#0x00
;	time.c:102: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ctime'
;------------------------------------------------------------
;timep                     Allocated with name '_ctime_timep_65536_30'
;------------------------------------------------------------
;	time.c:104: char *ctime(time_t *timep) {
;	-----------------------------------------
;	 function ctime
;	-----------------------------------------
_ctime:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ctime_timep_65536_30
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	time.c:105: return asctime(localtime(timep));
	mov	dptr,#_ctime_timep_65536_30
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_localtime
	mov	r1,#(_localtime >> 8)
	mov	r2,#(_localtime >> 16)
	lcall	__sdcc_banked_call
	mov	r0,#_asctime
	mov	r1,#(_asctime >> 8)
	mov	r2,#(_asctime >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	time.c:106: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'localtime'
;------------------------------------------------------------
;timep                     Allocated with name '_localtime_timep_65536_32'
;------------------------------------------------------------
;	time.c:121: struct tm *localtime(time_t *timep) {
;	-----------------------------------------
;	 function localtime
;	-----------------------------------------
_localtime:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_localtime_timep_65536_32
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	time.c:122: return gmtime(timep);
	mov	dptr,#_localtime_timep_65536_32
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_gmtime
	mov	r1,#(_gmtime >> 8)
	mov	r2,#(_gmtime >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	time.c:123: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gmtime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_gmtime_sloc0_1_0'
;sloc1                     Allocated with name '_gmtime_sloc1_1_0'
;sloc2                     Allocated with name '_gmtime_sloc2_1_0'
;timep                     Allocated with name '_gmtime_timep_65536_34'
;epoch                     Allocated with name '_gmtime_epoch_65536_35'
;year                      Allocated with name '_gmtime_year_65536_35'
;month                     Allocated with name '_gmtime_month_65536_35'
;monthLength               Allocated with name '_gmtime_monthLength_65536_35'
;days                      Allocated with name '_gmtime_days_65536_35'
;------------------------------------------------------------
;	time.c:125: struct tm *gmtime(time_t *timep) {
;	-----------------------------------------
;	 function gmtime
;	-----------------------------------------
_gmtime:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_gmtime_timep_65536_34
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	time.c:126: unsigned long epoch=*timep;
	mov	dptr,#_gmtime_timep_65536_34
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	time.c:131: lastTime.tm_sec=epoch%60;
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x3c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
	mov	r0,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_lastTime
	mov	a,r0
	movx	@dptr,a
;	time.c:132: epoch/=60; // now it is minutes
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x3c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	time.c:133: lastTime.tm_min=epoch%60;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x3c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
	mov	r0,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#(_lastTime + 0x0001)
	mov	a,r0
	movx	@dptr,a
;	time.c:134: epoch/=60; // now it is hours
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x3c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	time.c:135: lastTime.tm_hour=epoch%24;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x18
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
	mov	r0,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#(_lastTime + 0x0002)
	mov	a,r0
	movx	@dptr,a
;	time.c:136: epoch/=24; // now it is days
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x18
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	time.c:137: lastTime.tm_wday=(epoch+4)%7;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,#0x04
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modulong
	mov	r0,dpl
	mov	r1,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#(_lastTime + 0x0007)
	mov	a,r0
	movx	@dptr,a
;	time.c:140: days=0;
	mov	dptr,#_gmtime_days_65536_35
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	time.c:141: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
	mov	r2,#0xb2
	mov	r3,#0x07
00101$:
	mov	a,#0x03
	anl	a,r2
	mov	r1,#0x00
	orl	a,r1
	jnz	00118$
	mov	_gmtime_sloc0_1_0,#0x6e
	mov	(_gmtime_sloc0_1_0 + 1),#0x01
	sjmp	00119$
00118$:
	mov	_gmtime_sloc0_1_0,#0x6d
	mov	(_gmtime_sloc0_1_0 + 1),#0x01
00119$:
	push	ar2
	push	ar3
	mov	dptr,#_gmtime_days_65536_35
	movx	a,@dptr
	mov	_gmtime_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gmtime_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gmtime_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_gmtime_sloc1_1_0 + 3),a
	mov	r0,_gmtime_sloc0_1_0
	mov	a,(_gmtime_sloc0_1_0 + 1)
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,_gmtime_sloc1_1_0
	mov	r0,a
	mov	a,r1
	addc	a,(_gmtime_sloc1_1_0 + 1)
	mov	r1,a
	mov	a,r2
	addc	a,(_gmtime_sloc1_1_0 + 2)
	mov	r2,a
	mov	a,r3
	addc	a,(_gmtime_sloc1_1_0 + 3)
	mov	r3,a
	mov	dptr,#_gmtime_days_65536_35
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	pop	ar3
	pop	ar2
	jc	00103$
;	time.c:142: year++;
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00103$:
;	time.c:144: lastTime.tm_year=year-1900;
	mov	a,r2
	add	a,#0x94
	mov	r0,a
	mov	a,r3
	addc	a,#0xf8
	mov	r1,a
	mov	dptr,#(_lastTime + 0x0005)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	time.c:146: days -= LEAP_YEAR(year) ? 366 : 365;
	mov	a,#0x03
	anl	a,r2
	mov	_gmtime_sloc0_1_0,a
	mov	(_gmtime_sloc0_1_0 + 1),#0x00
	orl	a,(_gmtime_sloc0_1_0 + 1)
	jnz	00120$
	mov	_gmtime_sloc1_1_0,#0x6e
	mov	(_gmtime_sloc1_1_0 + 1),#0x01
	sjmp	00121$
00120$:
	mov	_gmtime_sloc1_1_0,#0x6d
	mov	(_gmtime_sloc1_1_0 + 1),#0x01
00121$:
	mov	dptr,#_gmtime_days_65536_35
	movx	a,@dptr
	mov	_gmtime_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_gmtime_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_gmtime_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_gmtime_sloc2_1_0 + 3),a
	mov	r0,_gmtime_sloc1_1_0
	mov	a,(_gmtime_sloc1_1_0 + 1)
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	dptr,#_gmtime_days_65536_35
	mov	a,_gmtime_sloc2_1_0
	clr	c
	subb	a,r0
	movx	@dptr,a
	mov	a,(_gmtime_sloc2_1_0 + 1)
	subb	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,(_gmtime_sloc2_1_0 + 2)
	subb	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,(_gmtime_sloc2_1_0 + 3)
	subb	a,r3
	inc	dptr
	movx	@dptr,a
;	time.c:147: epoch -= days; // now it is days in this year, starting at 0
	mov	dptr,#_gmtime_days_65536_35
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r4,a
	mov	a,r5
	subb	a,r1
	mov	r5,a
	mov	a,r6
	subb	a,r2
	mov	r6,a
	mov	a,r7
	subb	a,r3
	mov	r7,a
	mov	dptr,#_gmtime_epoch_65536_35
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	time.c:148: lastTime.tm_yday=epoch;
	mov	dptr,#(_lastTime + 0x0008)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	time.c:153: for (month=0; month<12; month++) {
	mov	r6,_gmtime_sloc0_1_0
	mov	r7,(_gmtime_sloc0_1_0 + 1)
	mov	r5,#0x00
00114$:
;	time.c:154: if (month==1) { // februari
	cjne	r5,#0x01,00108$
;	time.c:155: if (LEAP_YEAR(year)) {
	mov	a,r6
	orl	a,r7
	jnz	00105$
;	time.c:156: monthLength=29;
	mov	dptr,#_gmtime_monthLength_65536_35
	mov	a,#0x1d
	movx	@dptr,a
	sjmp	00109$
00105$:
;	time.c:158: monthLength=28;
	mov	dptr,#_gmtime_monthLength_65536_35
	mov	a,#0x1c
	movx	@dptr,a
	sjmp	00109$
00108$:
;	time.c:161: monthLength = monthDays[month];
	mov	a,r5
	mov	dptr,#_monthDays
	movc	a,@a+dptr
	mov	r4,a
	mov	dptr,#_gmtime_monthLength_65536_35
	movx	@dptr,a
00109$:
;	time.c:164: if (epoch>=monthLength) {
	mov	dptr,#_gmtime_epoch_65536_35
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_gmtime_monthLength_65536_35
	movx	a,@dptr
	mov	r0,a
	mov	_gmtime_sloc2_1_0,r0
	mov	(_gmtime_sloc2_1_0 + 1),#0x00
	mov	(_gmtime_sloc2_1_0 + 2),#0x00
	mov	(_gmtime_sloc2_1_0 + 3),#0x00
	clr	c
	mov	a,r1
	subb	a,_gmtime_sloc2_1_0
	mov	a,r2
	subb	a,(_gmtime_sloc2_1_0 + 1)
	mov	a,r3
	subb	a,(_gmtime_sloc2_1_0 + 2)
	mov	a,r4
	subb	a,(_gmtime_sloc2_1_0 + 3)
	jc	00113$
;	time.c:165: epoch-=monthLength;
	mov	dptr,#_gmtime_epoch_65536_35
	mov	a,r1
	clr	c
	subb	a,_gmtime_sloc2_1_0
	movx	@dptr,a
	mov	a,r2
	subb	a,(_gmtime_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	subb	a,(_gmtime_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	subb	a,(_gmtime_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	time.c:153: for (month=0; month<12; month++) {
	inc	r5
	cjne	r5,#0x0c,00164$
00164$:
	jc	00114$
00113$:
;	time.c:170: lastTime.tm_mon=month;
	mov	dptr,#(_lastTime + 0x0004)
	mov	a,r5
	movx	@dptr,a
;	time.c:171: lastTime.tm_mday=epoch+1;
	mov	dptr,#_gmtime_epoch_65536_35
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r4
	mov	dptr,#(_lastTime + 0x0003)
	mov	a,r4
	movx	@dptr,a
;	time.c:173: lastTime.tm_isdst=0;
	mov	dptr,#(_lastTime + 0x000a)
	clr	a
	movx	@dptr,a
;	time.c:175: return &lastTime;
	mov	dptr,#_lastTime
	mov	b,a
;	time.c:176: }
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mktime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_mktime_sloc0_1_0'
;sloc1                     Allocated with name '_mktime_sloc1_1_0'
;sloc2                     Allocated with name '_mktime_sloc2_1_0'
;sloc3                     Allocated with name '_mktime_sloc3_1_0'
;timeptr                   Allocated with name '_mktime_timeptr_65536_45'
;year                      Allocated with name '_mktime_year_65536_46'
;month                     Allocated with name '_mktime_month_65536_46'
;i                         Allocated with name '_mktime_i_65536_46'
;seconds                   Allocated with name '_mktime_seconds_65536_46'
;------------------------------------------------------------
;	time.c:179: time_t mktime(struct tm *timeptr) {
;	-----------------------------------------
;	 function mktime
;	-----------------------------------------
_mktime:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_mktime_timeptr_65536_45
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	time.c:180: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
	mov	dptr,#_mktime_timeptr_65536_45
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x6c
	add	a,r2
	mov	r4,a
	mov	a,#0x07
	addc	a,r3
	mov	r3,a
	mov	a,#0x04
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	_mktime_sloc1_1_0,r0
	mov	(_mktime_sloc1_1_0 + 1),#0x00
;	time.c:183: CheckTime(timeptr);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	mov	r0,#_CheckTime
	mov	r1,#(_CheckTime >> 8)
	mov	r2,#(_CheckTime >> 16)
	lcall	__sdcc_banked_call
	pop	ar3
	pop	ar4
;	time.c:186: seconds= (year-1970)*(60*60*24L*365);
	mov	a,r4
	add	a,#0x4e
	mov	r6,a
	mov	a,r3
	addc	a,#0xf8
	mov	r7,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	rlc	a
	subb	a,acc
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	time.c:189: for (i=1970; i<year; i++) {
	mov	dptr,#0x3380
	mov	b,#0xe1
	mov	a,#0x01
	push	ar4
	push	ar3
	lcall	__mullong
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	pop	ar4
	mov	_mktime_sloc0_1_0,#0xb2
	mov	(_mktime_sloc0_1_0 + 1),#0x07
00110$:
	clr	c
	mov	a,_mktime_sloc0_1_0
	subb	a,r4
	mov	a,(_mktime_sloc0_1_0 + 1)
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00124$
;	time.c:190: if (LEAP_YEAR(i)) {
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_mktime_sloc0_1_0
	mov	dph,(_mktime_sloc0_1_0 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00111$
;	time.c:191: seconds+= 60*60*24L;
	mov	a,#0x80
	add	a,r1
	mov	r1,a
	mov	a,#0x51
	addc	a,r5
	mov	r5,a
	mov	a,#0x01
	addc	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
00111$:
;	time.c:189: for (i=1970; i<year; i++) {
	inc	_mktime_sloc0_1_0
	clr	a
	cjne	a,_mktime_sloc0_1_0,00110$
	inc	(_mktime_sloc0_1_0 + 1)
	sjmp	00110$
00124$:
	mov	dptr,#_mktime_seconds_65536_46
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	time.c:196: for (i=0; i<month; i++) {
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r3
	lcall	__modsint
	mov	_mktime_sloc0_1_0,dpl
	mov	(_mktime_sloc0_1_0 + 1),dph
	mov	r4,#0x00
	mov	r5,#0x00
00113$:
	clr	c
	mov	a,r4
	subb	a,_mktime_sloc1_1_0
	mov	a,r5
	xrl	a,#0x80
	mov	b,(_mktime_sloc1_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00150$
	ljmp	00108$
00150$:
;	time.c:197: if (i==1 && LEAP_YEAR(year)) { 
	cjne	r4,#0x01,00105$
	cjne	r5,#0x00,00105$
	mov	a,_mktime_sloc0_1_0
	orl	a,(_mktime_sloc0_1_0 + 1)
	jnz	00105$
;	time.c:198: seconds+= 60*60*24L*29;
	mov	dptr,#_mktime_seconds_65536_46
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mktime_seconds_65536_46
	mov	a,#0x80
	add	a,r1
	movx	@dptr,a
	mov	a,#0x3b
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,#0x26
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00114$
00105$:
;	time.c:200: seconds+= 60*60*24L*monthDays[i];
	mov	a,r4
	add	a,#_monthDays
	mov	dpl,a
	mov	a,r5
	addc	a,#(_monthDays >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dptr,#__mullong_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x5180
	mov	b,#0x01
	push	ar5
	push	ar4
	lcall	__mullong
	mov	_mktime_sloc2_1_0,dpl
	mov	(_mktime_sloc2_1_0 + 1),dph
	mov	(_mktime_sloc2_1_0 + 2),b
	mov	(_mktime_sloc2_1_0 + 3),a
	pop	ar4
	pop	ar5
	mov	dptr,#_mktime_seconds_65536_46
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mktime_seconds_65536_46
	mov	a,_mktime_sloc2_1_0
	add	a,r0
	movx	@dptr,a
	mov	a,(_mktime_sloc2_1_0 + 1)
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,(_mktime_sloc2_1_0 + 2)
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,(_mktime_sloc2_1_0 + 3)
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00114$:
;	time.c:196: for (i=0; i<month; i++) {
	inc	r4
	cjne	r4,#0x00,00154$
	inc	r5
00154$:
	ljmp	00113$
00108$:
;	time.c:204: seconds+= (timeptr->tm_mday-1)*60*60*24L;
	mov	dptr,#_mktime_timeptr_65536_45
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
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
	dec	r2
	cjne	r2,#0xff,00155$
	dec	r4
00155$:
	mov	dptr,#__mullong_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	rlc	a
	subb	a,acc
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x5180
	mov	b,#0x01
	clr	a
	push	ar7
	push	ar6
	push	ar5
	lcall	__mullong
	mov	_mktime_sloc2_1_0,dpl
	mov	(_mktime_sloc2_1_0 + 1),dph
	mov	(_mktime_sloc2_1_0 + 2),b
	mov	(_mktime_sloc2_1_0 + 3),a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_mktime_seconds_65536_46
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mktime_seconds_65536_46
	mov	a,_mktime_sloc2_1_0
	add	a,r0
	movx	@dptr,a
	mov	a,(_mktime_sloc2_1_0 + 1)
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,(_mktime_sloc2_1_0 + 2)
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,(_mktime_sloc2_1_0 + 3)
	addc	a,r4
	inc	dptr
	movx	@dptr,a
;	time.c:205: seconds+= timeptr->tm_hour*60*60L;
	mov	a,#0x02
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
	mov	dptr,#__mullong_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0e10
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	__mullong
	mov	_mktime_sloc2_1_0,dpl
	mov	(_mktime_sloc2_1_0 + 1),dph
	mov	(_mktime_sloc2_1_0 + 2),b
	mov	(_mktime_sloc2_1_0 + 3),a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_mktime_seconds_65536_46
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_mktime_seconds_65536_46
	mov	a,_mktime_sloc2_1_0
	add	a,r0
	movx	@dptr,a
	mov	a,(_mktime_sloc2_1_0 + 1)
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,(_mktime_sloc2_1_0 + 2)
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,(_mktime_sloc2_1_0 + 3)
	addc	a,r4
	inc	dptr
	movx	@dptr,a
;	time.c:206: seconds+= timeptr->tm_min*60;
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
	mov	dptr,#__mulint_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x003c
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	_mktime_sloc2_1_0,dpl
	mov	(_mktime_sloc2_1_0 + 1),dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_mktime_seconds_65536_46
	movx	a,@dptr
	mov	_mktime_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mktime_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_mktime_sloc3_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_mktime_sloc3_1_0 + 3),a
	mov	r1,_mktime_sloc2_1_0
	mov	a,(_mktime_sloc2_1_0 + 1)
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r4,a
	mov	dptr,#_mktime_seconds_65536_46
	mov	a,r1
	add	a,_mktime_sloc3_1_0
	movx	@dptr,a
	mov	a,r2
	addc	a,(_mktime_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_mktime_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a,(_mktime_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	time.c:207: seconds+= timeptr->tm_sec;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	dptr,#_mktime_seconds_65536_46
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar0,r5
	mov	a,r7
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r7,a
	mov	dptr,#_mktime_seconds_65536_46
	mov	a,r0
	add	a,r2
	movx	@dptr,a
	mov	a,r1
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	time.c:208: return seconds;
	mov	dptr,#_mktime_seconds_65536_46
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	time.c:209: }
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
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
	.byte __str_1, (__str_1 >> 8),#0x80
	.byte __str_2, (__str_2 >> 8),#0x80
	.byte __str_3, (__str_3 >> 8),#0x80
	.byte __str_4, (__str_4 >> 8),#0x80
	.byte __str_5, (__str_5 >> 8),#0x80
	.byte __str_6, (__str_6 >> 8),#0x80
	.byte __str_7, (__str_7 >> 8),#0x80
	.byte __str_8, (__str_8 >> 8),#0x80
	.byte __str_9, (__str_9 >> 8),#0x80
	.byte __str_10, (__str_10 >> 8),#0x80
	.byte __str_11, (__str_11 >> 8),#0x80
	.byte __str_12, (__str_12 >> 8),#0x80
___day:
	.byte __str_13, (__str_13 >> 8),#0x80
	.byte __str_14, (__str_14 >> 8),#0x80
	.byte __str_15, (__str_15 >> 8),#0x80
	.byte __str_16, (__str_16 >> 8),#0x80
	.byte __str_17, (__str_17 >> 8),#0x80
	.byte __str_18, (__str_18 >> 8),#0x80
	.byte __str_19, (__str_19 >> 8),#0x80
	.area CONST   (CODE)
___str_0:
	.ascii "%s %s %2d %02d:%02d:%02d %04d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_1:
	.ascii "Jan"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_2:
	.ascii "Feb"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_3:
	.ascii "Mar"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_4:
	.ascii "Apr"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_5:
	.ascii "May"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_6:
	.ascii "Jun"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_7:
	.ascii "Jul"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_8:
	.ascii "Aug"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_9:
	.ascii "Sep"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_10:
	.ascii "Oct"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_11:
	.ascii "Nov"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_12:
	.ascii "Dec"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_13:
	.ascii "Sun"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_14:
	.ascii "Mon"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_15:
	.ascii "Tue"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_16:
	.ascii "Wed"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_17:
	.ascii "Thu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_18:
	.ascii "Fri"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_19:
	.ascii "Sat"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
