/*
 * This definitions of the PIC16F753 MCU.
 *
 * This file is part of the GNU PIC library for SDCC, originally
 * created by Molnar Karoly <molnarkaroly@users.sf.net> 2016.
 *
 * This file is generated automatically by the cinc2h.pl, 2016-04-13 17:22:59 UTC.
 *
 * SDCC is licensed under the GNU Public license (GPL) v2. Note that
 * this license covers the code to the compiler and other executables,
 * but explicitly does not cover any code or objects generated by sdcc.
 *
 * For pic device libraries and header files which are derived from
 * Microchip header (.inc) and linker script (.lkr) files Microchip
 * requires that "The header files should state that they are only to be
 * used with authentic Microchip devices" which makes them incompatible
 * with the GPL. Pic device libraries and header files are located at
 * non-free/lib and non-free/include directories respectively.
 * Sdcc should be run with the --use-non-free command line option in
 * order to include non-free header files and libraries.
 *
 * See http://sdcc.sourceforge.net/ for the latest information on sdcc.
 */

#include <pic16f753.h>

//==============================================================================

__at(0x0000) __sfr INDF;

__at(0x0001) __sfr TMR0;

__at(0x0002) __sfr PCL;

__at(0x0003) __sfr STATUS;
__at(0x0003) volatile __STATUSbits_t STATUSbits;

__at(0x0004) __sfr FSR;

__at(0x0005) __sfr PORTA;
__at(0x0005) volatile __PORTAbits_t PORTAbits;

__at(0x0007) __sfr PORTC;
__at(0x0007) volatile __PORTCbits_t PORTCbits;

__at(0x0008) __sfr IOCAF;
__at(0x0008) volatile __IOCAFbits_t IOCAFbits;

__at(0x0009) __sfr IOCCF;
__at(0x0009) volatile __IOCCFbits_t IOCCFbits;

__at(0x000A) __sfr PCLATH;

__at(0x000B) __sfr INTCON;
__at(0x000B) volatile __INTCONbits_t INTCONbits;

__at(0x000C) __sfr PIR1;
__at(0x000C) volatile __PIR1bits_t PIR1bits;

__at(0x000D) __sfr PIR2;
__at(0x000D) volatile __PIR2bits_t PIR2bits;

__at(0x000F) __sfr TMR1;

__at(0x000F) __sfr TMR1L;

__at(0x0010) __sfr TMR1H;

__at(0x0011) __sfr T1CON;
__at(0x0011) volatile __T1CONbits_t T1CONbits;

__at(0x0012) __sfr T1GCON;
__at(0x0012) volatile __T1GCONbits_t T1GCONbits;

__at(0x0013) __sfr CCPR1;

__at(0x0013) __sfr CCPR1L;

__at(0x0014) __sfr CCPR1H;

__at(0x0015) __sfr CCP1CON;
__at(0x0015) volatile __CCP1CONbits_t CCP1CONbits;

__at(0x001C) __sfr ADRES;

__at(0x001C) __sfr ADRESL;

__at(0x001D) __sfr ADRESH;

__at(0x001E) __sfr ADCON0;
__at(0x001E) volatile __ADCON0bits_t ADCON0bits;

__at(0x001F) __sfr ADCON1;
__at(0x001F) volatile __ADCON1bits_t ADCON1bits;

__at(0x0081) __sfr OPTION_REG;
__at(0x0081) volatile __OPTION_REGbits_t OPTION_REGbits;

__at(0x0085) __sfr TRISA;
__at(0x0085) volatile __TRISAbits_t TRISAbits;

__at(0x0087) __sfr TRISC;
__at(0x0087) volatile __TRISCbits_t TRISCbits;

__at(0x0088) __sfr IOCAP;
__at(0x0088) volatile __IOCAPbits_t IOCAPbits;

__at(0x0089) __sfr IOCCP;
__at(0x0089) volatile __IOCCPbits_t IOCCPbits;

__at(0x008C) __sfr PIE1;
__at(0x008C) volatile __PIE1bits_t PIE1bits;

__at(0x008D) __sfr PIE2;
__at(0x008D) volatile __PIE2bits_t PIE2bits;

__at(0x008F) __sfr OSCCON;
__at(0x008F) volatile __OSCCONbits_t OSCCONbits;

__at(0x0090) __sfr FVR1CON0;
__at(0x0090) volatile __FVR1CON0bits_t FVR1CON0bits;

__at(0x0091) __sfr DAC1CON0;
__at(0x0091) volatile __DAC1CON0bits_t DAC1CON0bits;

__at(0x0092) __sfr DAC1REFL;

__at(0x0093) __sfr DAC1REFH;

__at(0x0096) __sfr OPA1CON;
__at(0x0096) volatile __OPA1CONbits_t OPA1CONbits;

__at(0x0096) __sfr OPA1CON0;
__at(0x0096) volatile __OPA1CON0bits_t OPA1CON0bits;

__at(0x009B) __sfr C2CON0;
__at(0x009B) volatile __C2CON0bits_t C2CON0bits;

__at(0x009B) __sfr CM2CON0;
__at(0x009B) volatile __CM2CON0bits_t CM2CON0bits;

__at(0x009C) __sfr C2CON1;
__at(0x009C) volatile __C2CON1bits_t C2CON1bits;

__at(0x009C) __sfr CM2CON1;
__at(0x009C) volatile __CM2CON1bits_t CM2CON1bits;

__at(0x009D) __sfr C1CON0;
__at(0x009D) volatile __C1CON0bits_t C1CON0bits;

__at(0x009D) __sfr CM1CON0;
__at(0x009D) volatile __CM1CON0bits_t CM1CON0bits;

__at(0x009E) __sfr C1CON1;
__at(0x009E) volatile __C1CON1bits_t C1CON1bits;

__at(0x009E) __sfr CM1CON1;
__at(0x009E) volatile __CM1CON1bits_t CM1CON1bits;

__at(0x009F) __sfr CMOUT;
__at(0x009F) volatile __CMOUTbits_t CMOUTbits;

__at(0x009F) __sfr MCOUT;
__at(0x009F) volatile __MCOUTbits_t MCOUTbits;

__at(0x0105) __sfr LATA;
__at(0x0105) volatile __LATAbits_t LATAbits;

__at(0x0107) __sfr LATC;
__at(0x0107) volatile __LATCbits_t LATCbits;

__at(0x0108) __sfr IOCAN;
__at(0x0108) volatile __IOCANbits_t IOCANbits;

__at(0x0109) __sfr IOCCN;
__at(0x0109) volatile __IOCCNbits_t IOCCNbits;

__at(0x010C) __sfr WPUA;
__at(0x010C) volatile __WPUAbits_t WPUAbits;

__at(0x010D) __sfr WPUC;
__at(0x010D) volatile __WPUCbits_t WPUCbits;

__at(0x010E) __sfr SLRCONC;
__at(0x010E) volatile __SLRCONCbits_t SLRCONCbits;

__at(0x010F) __sfr PCON;
__at(0x010F) volatile __PCONbits_t PCONbits;

__at(0x0110) __sfr TMR2;

__at(0x0111) __sfr PR2;

__at(0x0112) __sfr T2CON;
__at(0x0112) volatile __T2CONbits_t T2CONbits;

__at(0x0113) __sfr HLTMR1;

__at(0x0114) __sfr HLTPR1;

__at(0x0115) __sfr HLT1CON0;
__at(0x0115) volatile __HLT1CON0bits_t HLT1CON0bits;

__at(0x0116) __sfr HLT1CON1;
__at(0x0116) volatile __HLT1CON1bits_t HLT1CON1bits;

__at(0x0117) __sfr HLTMR2;

__at(0x0118) __sfr HLTPR2;

__at(0x0119) __sfr HLT2CON0;
__at(0x0119) volatile __HLT2CON0bits_t HLT2CON0bits;

__at(0x011A) __sfr HLT2CON1;
__at(0x011A) volatile __HLT2CON1bits_t HLT2CON1bits;

__at(0x011E) __sfr SLPC1CON0;
__at(0x011E) volatile __SLPC1CON0bits_t SLPC1CON0bits;

__at(0x011E) __sfr SLPCCON0;
__at(0x011E) volatile __SLPCCON0bits_t SLPCCON0bits;

__at(0x011F) __sfr SLPC1CON1;
__at(0x011F) volatile __SLPC1CON1bits_t SLPC1CON1bits;

__at(0x011F) __sfr SLPCCON1;
__at(0x011F) volatile __SLPCCON1bits_t SLPCCON1bits;

__at(0x0185) __sfr ANSELA;
__at(0x0185) volatile __ANSELAbits_t ANSELAbits;

__at(0x0187) __sfr ANSELC;
__at(0x0187) volatile __ANSELCbits_t ANSELCbits;

__at(0x0188) __sfr APFCON;
__at(0x0188) volatile __APFCONbits_t APFCONbits;

__at(0x0189) __sfr OSCTUNE;
__at(0x0189) volatile __OSCTUNEbits_t OSCTUNEbits;

__at(0x018C) __sfr PMCON1;
__at(0x018C) volatile __PMCON1bits_t PMCON1bits;

__at(0x018D) __sfr PMCON2;

__at(0x018E) __sfr PMADR;

__at(0x018E) __sfr PMADRL;

__at(0x018F) __sfr PMADRH;

__at(0x0190) __sfr PMDAT;

__at(0x0190) __sfr PMDATL;

__at(0x0191) __sfr PMDATH;

__at(0x0192) __sfr COG1PHR;
__at(0x0192) volatile __COG1PHRbits_t COG1PHRbits;

__at(0x0193) __sfr COG1PHF;
__at(0x0193) volatile __COG1PHFbits_t COG1PHFbits;

__at(0x0194) __sfr COG1BKR;
__at(0x0194) volatile __COG1BKRbits_t COG1BKRbits;

__at(0x0195) __sfr COG1BKF;
__at(0x0195) volatile __COG1BKFbits_t COG1BKFbits;

__at(0x0196) __sfr COG1DBR;
__at(0x0196) volatile __COG1DBRbits_t COG1DBRbits;

__at(0x0197) __sfr COG1DBF;
__at(0x0197) volatile __COG1DBFbits_t COG1DBFbits;

__at(0x0198) __sfr COG1CON0;
__at(0x0198) volatile __COG1CON0bits_t COG1CON0bits;

__at(0x0199) __sfr COG1CON1;
__at(0x0199) volatile __COG1CON1bits_t COG1CON1bits;

__at(0x019A) __sfr COG1RIS;
__at(0x019A) volatile __COG1RISbits_t COG1RISbits;

__at(0x019B) __sfr COG1RSIM;
__at(0x019B) volatile __COG1RSIMbits_t COG1RSIMbits;

__at(0x019C) __sfr COG1FIS;
__at(0x019C) volatile __COG1FISbits_t COG1FISbits;

__at(0x019D) __sfr COG1FSIM;
__at(0x019D) volatile __COG1FSIMbits_t COG1FSIMbits;

__at(0x019E) __sfr COG1ASD0;
__at(0x019E) volatile __COG1ASD0bits_t COG1ASD0bits;

__at(0x019F) __sfr COG1ASD1;
__at(0x019F) volatile __COG1ASD1bits_t COG1ASD1bits;
