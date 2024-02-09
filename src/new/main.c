#include "port.h"

PORT new_port =
{
  TARGET_ID_new,
  "new",
  "new",                       /* Target name */
  NULL,                         /* Processor name */
  {
    NULL,
    FALSE,                       /* We want stm8_genIVT to be triggered */
    NULL,
    NULL,
    NULL,                 /* model string used as library destination */
  },
  {                             /* Assembler */
    newAscmd,
    NULL,
    "-plosgffwy",               /* Options with debug */
    "-plosgffw",                /* Options without debug */
    0,
    ".asm"
  },
  {                             /* Linker */
    NULL,
    NULL,                       //LINKCMD,
    NULL,
    ".rel",
    1,
    NULL,                       /* crt */
    NULL,                 /* libs */
  },
  {                             /* Peephole optimizer */
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
  },
  /* Sizes */
  {
    1,                          /* char */
    2,                          /* short */
    2,                          /* int */
    4,                          /* long */
    8,                          /* long long */
    2,                          /* near ptr */
    2,                          /* far ptr */
    2,                          /* generic ptr */
    2,                          /* func ptr */
    3,                          /* banked func ptr */
    1,                          /* bit */
    4,                          /* float */
    64,                         /* bit-precise integer types up to _BitInt (64) */
  },
  /* tags for generic pointers */
  { 0x00, 0x40, 0x60, 0x80 },   /* far, near, xstack, code */
  {
    "XSEG",
    "STACK",
    "CODE",                     /* code */
    "DATA",                     /* data */
    NULL,                       /* idata */
    NULL,                       /* pdata */
    NULL,                       /* xdata */
    NULL,                       /* bit */
    "RSEG (ABS)",               /* reg */
    "GSINIT",                   /* static initialization */
    NULL,                       /* overlay */
    "GSFINAL",                  /* gsfinal */
    "HOME",                     /* home */
    NULL,                       /* xidata */
    NULL,                       /* xinit */
    "CONST",                    /* const_name */
    "CABS (ABS)",               /* cabs_name */
    "DABS (ABS)",               /* xabs_name */
    NULL,                       /* iabs_name */
    "INITIALIZED",              /* name of segment for initialized variables */
    "INITIALIZER",              /* name of segment for copies of initialized variables in code space */
    NULL,
    NULL,
    1,                          /* CODE  is read-only */
    false,                      // doesn't matter, as port has no __sfr anyway
    1                           /* No fancy alignments supported. */
  },
  { NULL, NULL },
  1,                            /* default ABI revision */
  {                             /* stack information */
    -1,                         /* stack grows down */
     0,
     7,                         /* isr overhead */
     2,                         /* call overhead */
     0,
     2,
     1,                         /* sp points to next free stack location */
  },     
  { 
    -1,                         /* shifts never use support routines */
    true,                       /* use support routine for int x int -> long multiplication */
  },
  { NULL,
    {
     NULL,
      0,                        /* cfiSame */
      0,                        /* cfiUndef */
      4,                        /* addressSize */
      9,                        /* regNumRet */
      SP_IDX,                   /* regNumSP */
      0,                        /* regNumBP */
      2,                        /* offsetSP */
    },
  },
  {
    32767,                      /* maxCount */
    2,                          /* sizeofElement */
    {4, 5, 5},                  /* sizeofMatchJump[] - assuming operand in reg, inverse can be optimized away - would be much higher otherwise */
    {4, 5, 5},                  /* sizeofRangeCompare[] - same as above */
    3,                          /* sizeofSubtract - assuming 2 byte index, would be 2 otherwise */
    5,                          /* sizeofDispatch - 1 byte for sllw followed by 3 bytes for ldw x, (..., X) and 2 byte for jp (x) */
  },
  "_",
  NULL,
  NULL,
  NULL
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  0,
  NULL,
  NULL,
  NULL,
 NULL,
  NULL,
  0,                            /* no genXINIT code */
  NULL,          /* genInitStartup */
  NULL,
  NULL,
  NULL,          /* process_pragma */
  NULL,                         /* getMangledFunctionName */
  NULL,             /* hasNativeMulFor */
  NULL,                  /* hasExtBitOp */
  NULL,                         /* oclsExpense */
  TRUE,
  FALSE,                        /* little endian */
  0,                            /* leave lt */
  0,                            /* leave gt */
  1,                            /* transform <= to ! > */
  1,                            /* transform >= to ! < */
  1,                            /* transform != to !(a == b) */
  0,                            /* leave == */
  FALSE,                        /* Array initializer support. */
  0,                            /* no CSE cost estimation yet */
  NULL,                         /* builtin functions */
  NULL,                     /* treat unqualified pointers as "generic" pointers */
  1,                            /* reset labelKey to 1 */
  1,                            /* globals & local statics allowed */
  5,                            /* Number of registers handled in the tree-decomposition-based register allocator in SDCCralloc.hpp */
  PORT_MAGIC
};
