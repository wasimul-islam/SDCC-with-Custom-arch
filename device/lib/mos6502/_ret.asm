;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #0 (Linux)
;--------------------------------------------------------
	.module _ret
	.optsdcc -mmos6502
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___SDCC_m6502_ret7
	.globl ___SDCC_m6502_ret6
	.globl ___SDCC_m6502_ret5
	.globl ___SDCC_m6502_ret4
	.globl ___SDCC_m6502_ret3
	.globl ___SDCC_m6502_ret2
	.globl ___SDCC_m6502_ret1
	.globl ___SDCC_m6502_ret0
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___SDCC_m6502_ret0::
	.ds 1
___SDCC_m6502_ret1::
	.ds 1
___SDCC_m6502_ret2::
	.ds 1
___SDCC_m6502_ret3::
	.ds 1
___SDCC_m6502_ret4::
	.ds 1
___SDCC_m6502_ret5::
	.ds 1
___SDCC_m6502_ret6::
	.ds 1
___SDCC_m6502_ret7::
	.ds 1
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
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
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
