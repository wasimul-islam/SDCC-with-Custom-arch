/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "cmdpars.y"

#include <stdlib.h>
#include <unistd.h>
  
#include "cmdlexcl.h"
  //#include "memcl.h"
#include "globals.h"
  //#include "stypes.h"

static void yyerror (const char *msg);

#line 83 "y.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Use api.header.include to #include this header
   instead of duplicating it here.  */
#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    PTOK_PLUS = 258,               /* PTOK_PLUS  */
    PTOK_MINUS = 259,              /* PTOK_MINUS  */
    PTOK_ASTERIX = 260,            /* PTOK_ASTERIX  */
    PTOK_SLASH = 261,              /* PTOK_SLASH  */
    PTOK_EQUAL = 262,              /* PTOK_EQUAL  */
    PTOK_LEFT_PAREN = 263,         /* PTOK_LEFT_PAREN  */
    PTOK_RIGHT_PAREN = 264,        /* PTOK_RIGHT_PAREN  */
    PTOK_LEFT_BRACKET = 265,       /* PTOK_LEFT_BRACKET  */
    PTOK_RIGHT_BRACKET = 266,      /* PTOK_RIGHT_BRACKET  */
    PTOK_DOT = 267,                /* PTOK_DOT  */
    PTOK_AMPERSAND = 268,          /* PTOK_AMPERSAND  */
    PTOK_PIPE = 269,               /* PTOK_PIPE  */
    PTOK_CIRCUM = 270,             /* PTOK_CIRCUM  */
    PTOK_PERCENT = 271,            /* PTOK_PERCENT  */
    PTOK_TILDE = 272,              /* PTOK_TILDE  */
    PTOK_QUESTION = 273,           /* PTOK_QUESTION  */
    PTOK_COLON = 274,              /* PTOK_COLON  */
    PTOK_EXCLAMATION = 275,        /* PTOK_EXCLAMATION  */
    PTOK_LESS = 276,               /* PTOK_LESS  */
    PTOK_GREATER = 277,            /* PTOK_GREATER  */
    PTOK_COMMA = 278,              /* PTOK_COMMA  */
    PTOK_AND_OP = 279,             /* PTOK_AND_OP  */
    PTOK_OR_OP = 280,              /* PTOK_OR_OP  */
    PTOK_INC_OP = 281,             /* PTOK_INC_OP  */
    PTOK_DEC_OP = 282,             /* PTOK_DEC_OP  */
    PTOK_EQ_OP = 283,              /* PTOK_EQ_OP  */
    PTOK_NE_OP = 284,              /* PTOK_NE_OP  */
    PTOK_GE_OP = 285,              /* PTOK_GE_OP  */
    PTOK_LE_OP = 286,              /* PTOK_LE_OP  */
    PTOK_LEFT_OP = 287,            /* PTOK_LEFT_OP  */
    PTOK_RIGHT_OP = 288,           /* PTOK_RIGHT_OP  */
    PTOK_MUL_ASSIGN = 289,         /* PTOK_MUL_ASSIGN  */
    PTOK_DIV_ASSIGN = 290,         /* PTOK_DIV_ASSIGN  */
    PTOK_MOD_ASSIGN = 291,         /* PTOK_MOD_ASSIGN  */
    PTOK_ADD_ASSIGN = 292,         /* PTOK_ADD_ASSIGN  */
    PTOK_SUB_ASSIGN = 293,         /* PTOK_SUB_ASSIGN  */
    PTOK_LEFT_ASSIGN = 294,        /* PTOK_LEFT_ASSIGN  */
    PTOK_RIGHT_ASSIGN = 295,       /* PTOK_RIGHT_ASSIGN  */
    PTOK_AND_ASSIGN = 296,         /* PTOK_AND_ASSIGN  */
    PTOK_XOR_ASSIGN = 297,         /* PTOK_XOR_ASSIGN  */
    PTOK_OR_ASSIGN = 298,          /* PTOK_OR_ASSIGN  */
    PTOK_INT = 299,                /* PTOK_INT  */
    PTOK_MEMORY_OBJECT = 300,      /* PTOK_MEMORY_OBJECT  */
    PTOK_MEMORY = 301,             /* PTOK_MEMORY  */
    PTOK_NUMBER = 302,             /* PTOK_NUMBER  */
    PTOK_BITS = 303,               /* PTOK_BITS  */
    PTOK_CELL = 304                /* PTOK_CELL  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define PTOK_PLUS 258
#define PTOK_MINUS 259
#define PTOK_ASTERIX 260
#define PTOK_SLASH 261
#define PTOK_EQUAL 262
#define PTOK_LEFT_PAREN 263
#define PTOK_RIGHT_PAREN 264
#define PTOK_LEFT_BRACKET 265
#define PTOK_RIGHT_BRACKET 266
#define PTOK_DOT 267
#define PTOK_AMPERSAND 268
#define PTOK_PIPE 269
#define PTOK_CIRCUM 270
#define PTOK_PERCENT 271
#define PTOK_TILDE 272
#define PTOK_QUESTION 273
#define PTOK_COLON 274
#define PTOK_EXCLAMATION 275
#define PTOK_LESS 276
#define PTOK_GREATER 277
#define PTOK_COMMA 278
#define PTOK_AND_OP 279
#define PTOK_OR_OP 280
#define PTOK_INC_OP 281
#define PTOK_DEC_OP 282
#define PTOK_EQ_OP 283
#define PTOK_NE_OP 284
#define PTOK_GE_OP 285
#define PTOK_LE_OP 286
#define PTOK_LEFT_OP 287
#define PTOK_RIGHT_OP 288
#define PTOK_MUL_ASSIGN 289
#define PTOK_DIV_ASSIGN 290
#define PTOK_MOD_ASSIGN 291
#define PTOK_ADD_ASSIGN 292
#define PTOK_SUB_ASSIGN 293
#define PTOK_LEFT_ASSIGN 294
#define PTOK_RIGHT_ASSIGN 295
#define PTOK_AND_ASSIGN 296
#define PTOK_XOR_ASSIGN 297
#define PTOK_OR_ASSIGN 298
#define PTOK_INT 299
#define PTOK_MEMORY_OBJECT 300
#define PTOK_MEMORY 301
#define PTOK_NUMBER 302
#define PTOK_BITS 303
#define PTOK_CELL 304

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 60 "cmdpars.y"

  long number;
  class cl_memory *memory_object;
  class cl_memory_cell *cell;
  struct {
    class cl_memory *memory;
    long address;
  } memory;
  struct {
    class cl_memory *memory;
    long mem_address, bit_address;
    int bitnr_high, bitnr_low;
  } bit;

#line 249 "y.tab.c"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_PTOK_PLUS = 3,                  /* PTOK_PLUS  */
  YYSYMBOL_PTOK_MINUS = 4,                 /* PTOK_MINUS  */
  YYSYMBOL_PTOK_ASTERIX = 5,               /* PTOK_ASTERIX  */
  YYSYMBOL_PTOK_SLASH = 6,                 /* PTOK_SLASH  */
  YYSYMBOL_PTOK_EQUAL = 7,                 /* PTOK_EQUAL  */
  YYSYMBOL_PTOK_LEFT_PAREN = 8,            /* PTOK_LEFT_PAREN  */
  YYSYMBOL_PTOK_RIGHT_PAREN = 9,           /* PTOK_RIGHT_PAREN  */
  YYSYMBOL_PTOK_LEFT_BRACKET = 10,         /* PTOK_LEFT_BRACKET  */
  YYSYMBOL_PTOK_RIGHT_BRACKET = 11,        /* PTOK_RIGHT_BRACKET  */
  YYSYMBOL_PTOK_DOT = 12,                  /* PTOK_DOT  */
  YYSYMBOL_PTOK_AMPERSAND = 13,            /* PTOK_AMPERSAND  */
  YYSYMBOL_PTOK_PIPE = 14,                 /* PTOK_PIPE  */
  YYSYMBOL_PTOK_CIRCUM = 15,               /* PTOK_CIRCUM  */
  YYSYMBOL_PTOK_PERCENT = 16,              /* PTOK_PERCENT  */
  YYSYMBOL_PTOK_TILDE = 17,                /* PTOK_TILDE  */
  YYSYMBOL_PTOK_QUESTION = 18,             /* PTOK_QUESTION  */
  YYSYMBOL_PTOK_COLON = 19,                /* PTOK_COLON  */
  YYSYMBOL_PTOK_EXCLAMATION = 20,          /* PTOK_EXCLAMATION  */
  YYSYMBOL_PTOK_LESS = 21,                 /* PTOK_LESS  */
  YYSYMBOL_PTOK_GREATER = 22,              /* PTOK_GREATER  */
  YYSYMBOL_PTOK_COMMA = 23,                /* PTOK_COMMA  */
  YYSYMBOL_PTOK_AND_OP = 24,               /* PTOK_AND_OP  */
  YYSYMBOL_PTOK_OR_OP = 25,                /* PTOK_OR_OP  */
  YYSYMBOL_PTOK_INC_OP = 26,               /* PTOK_INC_OP  */
  YYSYMBOL_PTOK_DEC_OP = 27,               /* PTOK_DEC_OP  */
  YYSYMBOL_PTOK_EQ_OP = 28,                /* PTOK_EQ_OP  */
  YYSYMBOL_PTOK_NE_OP = 29,                /* PTOK_NE_OP  */
  YYSYMBOL_PTOK_GE_OP = 30,                /* PTOK_GE_OP  */
  YYSYMBOL_PTOK_LE_OP = 31,                /* PTOK_LE_OP  */
  YYSYMBOL_PTOK_LEFT_OP = 32,              /* PTOK_LEFT_OP  */
  YYSYMBOL_PTOK_RIGHT_OP = 33,             /* PTOK_RIGHT_OP  */
  YYSYMBOL_PTOK_MUL_ASSIGN = 34,           /* PTOK_MUL_ASSIGN  */
  YYSYMBOL_PTOK_DIV_ASSIGN = 35,           /* PTOK_DIV_ASSIGN  */
  YYSYMBOL_PTOK_MOD_ASSIGN = 36,           /* PTOK_MOD_ASSIGN  */
  YYSYMBOL_PTOK_ADD_ASSIGN = 37,           /* PTOK_ADD_ASSIGN  */
  YYSYMBOL_PTOK_SUB_ASSIGN = 38,           /* PTOK_SUB_ASSIGN  */
  YYSYMBOL_PTOK_LEFT_ASSIGN = 39,          /* PTOK_LEFT_ASSIGN  */
  YYSYMBOL_PTOK_RIGHT_ASSIGN = 40,         /* PTOK_RIGHT_ASSIGN  */
  YYSYMBOL_PTOK_AND_ASSIGN = 41,           /* PTOK_AND_ASSIGN  */
  YYSYMBOL_PTOK_XOR_ASSIGN = 42,           /* PTOK_XOR_ASSIGN  */
  YYSYMBOL_PTOK_OR_ASSIGN = 43,            /* PTOK_OR_ASSIGN  */
  YYSYMBOL_PTOK_INT = 44,                  /* PTOK_INT  */
  YYSYMBOL_PTOK_MEMORY_OBJECT = 45,        /* PTOK_MEMORY_OBJECT  */
  YYSYMBOL_PTOK_MEMORY = 46,               /* PTOK_MEMORY  */
  YYSYMBOL_PTOK_NUMBER = 47,               /* PTOK_NUMBER  */
  YYSYMBOL_PTOK_BITS = 48,                 /* PTOK_BITS  */
  YYSYMBOL_PTOK_CELL = 49,                 /* PTOK_CELL  */
  YYSYMBOL_YYACCEPT = 50,                  /* $accept  */
  YYSYMBOL_ucsim_grammar = 51,             /* ucsim_grammar  */
  YYSYMBOL_primary_expr = 52,              /* primary_expr  */
  YYSYMBOL_postfix_expr = 53,              /* postfix_expr  */
  YYSYMBOL_unary_expr = 54,                /* unary_expr  */
  YYSYMBOL_cast_expr = 55,                 /* cast_expr  */
  YYSYMBOL_type_name = 56,                 /* type_name  */
  YYSYMBOL_multiplicative_expr = 57,       /* multiplicative_expr  */
  YYSYMBOL_additive_expr = 58,             /* additive_expr  */
  YYSYMBOL_shift_expr = 59,                /* shift_expr  */
  YYSYMBOL_relational_expr = 60,           /* relational_expr  */
  YYSYMBOL_equality_expr = 61,             /* equality_expr  */
  YYSYMBOL_and_expr = 62,                  /* and_expr  */
  YYSYMBOL_exclusive_or_expr = 63,         /* exclusive_or_expr  */
  YYSYMBOL_inclusive_or_expr = 64,         /* inclusive_or_expr  */
  YYSYMBOL_logical_and_expr = 65,          /* logical_and_expr  */
  YYSYMBOL_logical_or_expr = 66,           /* logical_or_expr  */
  YYSYMBOL_conditional_expr = 67,          /* conditional_expr  */
  YYSYMBOL_assignment_expr = 68,           /* assignment_expr  */
  YYSYMBOL_assignment_operator = 69,       /* assignment_operator  */
  YYSYMBOL_expr = 70,                      /* expr  */
  YYSYMBOL_memory = 71,                    /* memory  */
  YYSYMBOL_bit = 72                        /* bit  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_int8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  66
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   245

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  50
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  23
/* YYNRULES -- Number of rules.  */
#define YYNRULES  78
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  128

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   304


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    78,    78,   144,   145,   151,   152,   154,   159,   166,
     171,   177,   182,   196,   198,   204,   211,   217,   225,   226,
     235,   236,   237,   238,   258,   259,   274,   278,   279,   280,
     281,   285,   286,   287,   291,   292,   293,   297,   298,   299,
     300,   301,   305,   306,   307,   311,   312,   316,   317,   321,
     322,   326,   327,   331,   332,   336,   337,   341,   344,   386,
     394,   439,   440,   441,   442,   443,   444,   445,   446,   447,
     448,   449,   453,   454,   458,   459,   467,   468,   478
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "PTOK_PLUS",
  "PTOK_MINUS", "PTOK_ASTERIX", "PTOK_SLASH", "PTOK_EQUAL",
  "PTOK_LEFT_PAREN", "PTOK_RIGHT_PAREN", "PTOK_LEFT_BRACKET",
  "PTOK_RIGHT_BRACKET", "PTOK_DOT", "PTOK_AMPERSAND", "PTOK_PIPE",
  "PTOK_CIRCUM", "PTOK_PERCENT", "PTOK_TILDE", "PTOK_QUESTION",
  "PTOK_COLON", "PTOK_EXCLAMATION", "PTOK_LESS", "PTOK_GREATER",
  "PTOK_COMMA", "PTOK_AND_OP", "PTOK_OR_OP", "PTOK_INC_OP", "PTOK_DEC_OP",
  "PTOK_EQ_OP", "PTOK_NE_OP", "PTOK_GE_OP", "PTOK_LE_OP", "PTOK_LEFT_OP",
  "PTOK_RIGHT_OP", "PTOK_MUL_ASSIGN", "PTOK_DIV_ASSIGN", "PTOK_MOD_ASSIGN",
  "PTOK_ADD_ASSIGN", "PTOK_SUB_ASSIGN", "PTOK_LEFT_ASSIGN",
  "PTOK_RIGHT_ASSIGN", "PTOK_AND_ASSIGN", "PTOK_XOR_ASSIGN",
  "PTOK_OR_ASSIGN", "PTOK_INT", "PTOK_MEMORY_OBJECT", "PTOK_MEMORY",
  "PTOK_NUMBER", "PTOK_BITS", "PTOK_CELL", "$accept", "ucsim_grammar",
  "primary_expr", "postfix_expr", "unary_expr", "cast_expr", "type_name",
  "multiplicative_expr", "additive_expr", "shift_expr", "relational_expr",
  "equality_expr", "and_expr", "exclusive_or_expr", "inclusive_or_expr",
  "logical_and_expr", "logical_or_expr", "conditional_expr",
  "assignment_expr", "assignment_operator", "expr", "memory", "bit", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-65)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     102,   110,   110,    32,    37,   110,   110,    11,    17,    -8,
     -65,   -65,   -65,   202,    64,   -65,   -65,   -65,   -65,    15,
      86,    75,     8,    83,     2,    84,     3,    71,    23,   -65,
     -65,     9,   181,   126,   102,    90,   -65,    -1,   -65,   -65,
     -65,   100,    -4,    43,   -65,   -65,   -65,   -65,   -65,   -65,
     -65,   102,   -65,   -65,   -65,   -65,   -65,   -65,   -65,   -65,
     -65,   -65,   -65,   -65,   -65,   102,   -65,   157,   157,   157,
     157,   157,   157,   157,   157,   157,   157,   157,   157,   157,
     157,   157,   157,   157,   102,   157,   102,   102,   102,   -65,
     -65,   102,   102,    80,   -65,    -5,   -65,   -65,   -65,   -65,
      15,    15,    86,    86,    75,    75,    75,    75,     8,     8,
      83,     2,    84,     3,    14,    71,   -65,    31,     9,   -65,
     -65,   -65,   -65,   157,   102,   -65,     1,   -65
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      74,     5,    76,     6,     0,     8,    13,    24,    27,    31,
      34,    37,    42,    45,    47,    49,    51,    53,    55,    57,
      72,     2,     3,     4,     0,     6,    21,     3,     4,    20,
      26,     0,     0,    18,    19,    22,    23,    15,    14,    17,
      16,     0,    61,    10,    12,    62,    63,    64,    65,    66,
      67,    68,    69,    70,    71,     0,     1,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     9,
      11,     0,     0,     0,     7,     0,    60,    28,    29,    30,
      32,    33,    35,    36,    38,    39,    41,    40,    43,    44,
      46,    48,    50,    52,     0,    54,    73,     0,    77,    58,
      59,    25,    75,     0,     0,    56,     0,    78
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -65,   -65,   -65,   -65,    41,     5,   -65,    50,    59,    -6,
      60,   -57,    54,    61,    58,    57,   -65,    21,   -64,   113,
      16,     0,    10
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
       0,    14,    15,    16,    17,    18,    41,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    28,    29,    30,    65,
      42,    37,    38
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int8 yytable[] =
{
      32,    96,    51,    32,    43,    94,   122,    48,    50,    87,
      33,    88,   127,    33,    44,    80,    31,    82,    86,    86,
      67,    68,   116,   110,    86,    89,    90,   119,   120,    74,
      75,    69,    86,   123,    32,     1,     2,    86,    76,    77,
       3,    84,    36,    39,    33,     4,    45,    46,    85,     5,
     124,    32,     6,    87,    86,    88,     9,    10,     7,     8,
      47,    33,     9,    10,    66,    32,    49,    95,   104,   105,
     106,   107,    97,    98,    99,    33,    40,     9,    10,    11,
      12,    13,     9,    10,    32,    12,    32,    32,    32,    70,
      71,    32,    32,   121,    33,    83,    33,    33,    33,    81,
     114,    33,    33,   117,   118,     1,     2,    72,    73,    93,
       3,    78,    79,     1,     2,     4,    53,    54,    34,     5,
     100,   101,     6,     4,    32,     9,    10,     5,     7,     8,
       6,   102,   103,    92,    33,   111,     7,     8,   108,   109,
     126,   113,   115,   112,   125,    91,     0,     9,    10,    11,
      12,    13,     0,     0,     0,     9,    10,    11,    12,    35,
       1,     2,     0,     0,     0,     3,     0,     0,     0,     0,
       4,     0,     0,     0,     5,     0,     0,     6,     0,     0,
       0,     0,     0,     7,     8,     0,     0,     0,    52,     0,
       0,    87,     0,    88,     0,     0,     0,     0,     0,     0,
       0,     0,     9,    10,    11,    12,    35,    89,    90,    52,
       0,     0,     0,     0,     0,    55,    56,    57,    58,    59,
      60,    61,    62,    63,    64,     0,     0,     0,    53,    54,
       0,     0,     0,     0,     0,     0,    55,    56,    57,    58,
      59,    60,    61,    62,    63,    64
};

static const yytype_int8 yycheck[] =
{
       0,    65,    10,     3,     4,     9,    11,     7,     8,    10,
       0,    12,    11,     3,     4,    13,     0,    14,    23,    23,
       5,     6,    86,    80,    23,    26,    27,    91,    92,    21,
      22,    16,    23,    19,    34,     3,     4,    23,    30,    31,
       8,    18,     1,     2,    34,    13,     5,     6,    25,    17,
      19,    51,    20,    10,    23,    12,    45,    46,    26,    27,
      49,    51,    45,    46,     0,    65,    49,    51,    74,    75,
      76,    77,    67,    68,    69,    65,    44,    45,    46,    47,
      48,    49,    45,    46,    84,    48,    86,    87,    88,     3,
       4,    91,    92,    93,    84,    24,    86,    87,    88,    15,
      84,    91,    92,    87,    88,     3,     4,    32,    33,     9,
       8,    28,    29,     3,     4,    13,    26,    27,     8,    17,
      70,    71,    20,    13,   124,    45,    46,    17,    26,    27,
      20,    72,    73,     7,   124,    81,    26,    27,    78,    79,
     124,    83,    85,    82,   123,    32,    -1,    45,    46,    47,
      48,    49,    -1,    -1,    -1,    45,    46,    47,    48,    49,
       3,     4,    -1,    -1,    -1,     8,    -1,    -1,    -1,    -1,
      13,    -1,    -1,    -1,    17,    -1,    -1,    20,    -1,    -1,
      -1,    -1,    -1,    26,    27,    -1,    -1,    -1,     7,    -1,
      -1,    10,    -1,    12,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    45,    46,    47,    48,    49,    26,    27,     7,
      -1,    -1,    -1,    -1,    -1,    34,    35,    36,    37,    38,
      39,    40,    41,    42,    43,    -1,    -1,    -1,    26,    27,
      -1,    -1,    -1,    -1,    -1,    -1,    34,    35,    36,    37,
      38,    39,    40,    41,    42,    43
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,     4,     8,    13,    17,    20,    26,    27,    45,
      46,    47,    48,    49,    51,    52,    53,    54,    55,    57,
      58,    59,    60,    61,    62,    63,    64,    65,    66,    67,
      68,    70,    71,    72,     8,    49,    54,    71,    72,    54,
      44,    56,    70,    71,    72,    54,    54,    49,    71,    49,
      71,    10,     7,    26,    27,    34,    35,    36,    37,    38,
      39,    40,    41,    42,    43,    69,     0,     5,     6,    16,
       3,     4,    32,    33,    21,    22,    30,    31,    28,    29,
      13,    15,    14,    24,    18,    25,    23,    10,    12,    26,
      27,    69,     7,     9,     9,    70,    68,    55,    55,    55,
      57,    57,    58,    58,    59,    59,    59,    59,    60,    60,
      61,    62,    63,    64,    70,    65,    68,    70,    70,    68,
      68,    71,    11,    19,    19,    67,    70,    11
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    50,    51,    52,    52,    52,    52,    52,    53,    53,
      53,    53,    53,    54,    54,    54,    54,    54,    54,    54,
      54,    54,    54,    54,    55,    55,    56,    57,    57,    57,
      57,    58,    58,    58,    59,    59,    59,    60,    60,    60,
      60,    60,    61,    61,    61,    62,    62,    63,    63,    64,
      64,    65,    65,    66,    66,    67,    67,    68,    68,    68,
      68,    69,    69,    69,    69,    69,    69,    69,    69,    69,
      69,    69,    70,    70,    71,    71,    72,    72,    72
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     1,     1,     1,     3,     1,     2,
       2,     2,     2,     1,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     1,     4,     1,     1,     3,     3,
       3,     1,     3,     3,     1,     3,     3,     1,     3,     3,
       3,     3,     1,     3,     3,     1,     3,     1,     3,     1,
       3,     1,     3,     1,     3,     1,     5,     1,     3,     3,
       3,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     3,     1,     4,     1,     3,     6
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* ucsim_grammar: expr  */
#line 78 "cmdpars.y"
     { application->/*dd_printf("%d\n", $1)*/expr_result=(yyvsp[0].number); }
#line 1416 "y.tab.c"
    break;

  case 3: /* primary_expr: memory  */
#line 144 "cmdpars.y"
         { (yyval.number)= (yyvsp[0].memory).memory->read((yyvsp[0].memory).address); }
#line 1422 "y.tab.c"
    break;

  case 4: /* primary_expr: bit  */
#line 146 "cmdpars.y"
        {
		t_mem mask = 0;
		for (int i = (yyvsp[0].bit).bitnr_low; i <= (yyvsp[0].bit).bitnr_high; mask |= 1U << i++);
		(yyval.number)= ((yyvsp[0].bit).memory->read((yyvsp[0].bit).mem_address) & mask) >> (yyvsp[0].bit).bitnr_low;
	}
#line 1432 "y.tab.c"
    break;

  case 5: /* primary_expr: PTOK_NUMBER  */
#line 151 "cmdpars.y"
              { (yyval.number)= (yyvsp[0].number); }
#line 1438 "y.tab.c"
    break;

  case 6: /* primary_expr: PTOK_CELL  */
#line 152 "cmdpars.y"
            { (yyval.number)= (yyvsp[0].cell)->read(); }
#line 1444 "y.tab.c"
    break;

  case 7: /* primary_expr: PTOK_LEFT_PAREN expr PTOK_RIGHT_PAREN  */
#line 154 "cmdpars.y"
                                        { (yyval.number)= (yyvsp[-1].number); }
#line 1450 "y.tab.c"
    break;

  case 8: /* postfix_expr: primary_expr  */
#line 159 "cmdpars.y"
               { (yyval.number)= (yyvsp[0].number); }
#line 1456 "y.tab.c"
    break;

  case 9: /* postfix_expr: memory PTOK_INC_OP  */
#line 167 "cmdpars.y"
        {
	  (yyval.number)= (yyvsp[-1].memory).memory->read((yyvsp[-1].memory).address);
	  (yyvsp[-1].memory).memory->write((yyvsp[-1].memory).address, (yyval.number)+1);
	}
#line 1465 "y.tab.c"
    break;

  case 10: /* postfix_expr: PTOK_CELL PTOK_INC_OP  */
#line 172 "cmdpars.y"
        {
	  (yyval.number)= (yyvsp[-1].cell)->read();
	  (yyvsp[-1].cell)->write((yyval.number)+1);
	}
#line 1474 "y.tab.c"
    break;

  case 11: /* postfix_expr: memory PTOK_DEC_OP  */
#line 178 "cmdpars.y"
        {
	  (yyval.number)= (yyvsp[-1].memory).memory->read((yyvsp[-1].memory).address);
	  (yyvsp[-1].memory).memory->write((yyvsp[-1].memory).address, (yyval.number)-1);
	}
#line 1483 "y.tab.c"
    break;

  case 12: /* postfix_expr: PTOK_CELL PTOK_DEC_OP  */
#line 183 "cmdpars.y"
        {
	  (yyval.number)= (yyvsp[-1].cell)->read();
	  (yyvsp[-1].cell)->write((yyval.number)-1);
	}
#line 1492 "y.tab.c"
    break;

  case 13: /* unary_expr: postfix_expr  */
#line 196 "cmdpars.y"
               { (yyval.number)= (yyvsp[0].number); }
#line 1498 "y.tab.c"
    break;

  case 14: /* unary_expr: PTOK_INC_OP memory  */
#line 199 "cmdpars.y"
        {
	  (yyval.number)= (yyvsp[0].memory).memory->read((yyvsp[0].memory).address);
	  (yyvsp[0].memory).memory->write((yyvsp[0].memory).address, (yyval.number)+1);
	  (yyval.number)= (yyvsp[0].memory).memory->read((yyvsp[0].memory).address);
	}
#line 1508 "y.tab.c"
    break;

  case 15: /* unary_expr: PTOK_INC_OP PTOK_CELL  */
#line 205 "cmdpars.y"
        {
	  (yyval.number)= (yyvsp[0].cell)->read();
	  (yyvsp[0].cell)->write((yyval.number)+1);
	  (yyval.number)= (yyvsp[0].cell)->read();
	}
#line 1518 "y.tab.c"
    break;

  case 16: /* unary_expr: PTOK_DEC_OP memory  */
#line 212 "cmdpars.y"
        {
	  (yyval.number)= (yyvsp[0].memory).memory->read((yyvsp[0].memory).address);
	  (yyvsp[0].memory).memory->write((yyvsp[0].memory).address, (yyval.number)-1);
	  (yyval.number)= (yyvsp[0].memory).memory->read((yyvsp[0].memory).address);
	}
#line 1528 "y.tab.c"
    break;

  case 17: /* unary_expr: PTOK_DEC_OP PTOK_CELL  */
#line 218 "cmdpars.y"
        {
	  (yyval.number)= (yyvsp[0].cell)->read();
	  (yyvsp[0].cell)->write((yyval.number)-1);
	  (yyval.number)= (yyvsp[0].cell)->read();
	}
#line 1538 "y.tab.c"
    break;

  case 18: /* unary_expr: PTOK_AMPERSAND memory  */
#line 225 "cmdpars.y"
                       { (yyval.number)= (yyvsp[0].memory).address; }
#line 1544 "y.tab.c"
    break;

  case 19: /* unary_expr: PTOK_AMPERSAND bit  */
#line 227 "cmdpars.y"
        {
	  (yyval.number)= (yyvsp[0].bit).bit_address;
	  if ((yyval.number) < 0)
	    {
	      yyerror("Bit has no address.");
	      (yyval.number)= 0;
	    }
	}
#line 1557 "y.tab.c"
    break;

  case 20: /* unary_expr: PTOK_MINUS unary_expr  */
#line 235 "cmdpars.y"
                        { (yyval.number)= -(yyvsp[0].number); }
#line 1563 "y.tab.c"
    break;

  case 21: /* unary_expr: PTOK_PLUS unary_expr  */
#line 236 "cmdpars.y"
                       { (yyval.number)= +(yyvsp[0].number); }
#line 1569 "y.tab.c"
    break;

  case 22: /* unary_expr: PTOK_TILDE unary_expr  */
#line 237 "cmdpars.y"
                        { (yyval.number)= ~(yyvsp[0].number); }
#line 1575 "y.tab.c"
    break;

  case 23: /* unary_expr: PTOK_EXCLAMATION unary_expr  */
#line 238 "cmdpars.y"
                              { (yyval.number)= ((yyvsp[0].number))?0:1; }
#line 1581 "y.tab.c"
    break;

  case 24: /* cast_expr: unary_expr  */
#line 258 "cmdpars.y"
             { (yyval.number)= (yyvsp[0].number); }
#line 1587 "y.tab.c"
    break;

  case 25: /* cast_expr: PTOK_LEFT_PAREN type_name PTOK_RIGHT_PAREN memory  */
#line 260 "cmdpars.y"
        {
	  (yyval.number)= (yyvsp[0].memory).memory->read((yyvsp[0].memory).address);
	  if ((yyvsp[-2].number) == PTOK_INT)
	    {
	      // If the highest bit for the memory width is set
	      // sign extend by setting all the bits above that.
	      long smask= 1U << ((yyvsp[0].memory).memory->width - 1);
	      if ((yyval.number) & smask)
	        (yyval.number) |= ~(smask - 1);
	    }
	}
#line 1603 "y.tab.c"
    break;

  case 26: /* type_name: PTOK_INT  */
#line 274 "cmdpars.y"
           { (yyval.number)= PTOK_INT; }
#line 1609 "y.tab.c"
    break;

  case 27: /* multiplicative_expr: cast_expr  */
#line 278 "cmdpars.y"
            { (yyval.number)= (yyvsp[0].number); }
#line 1615 "y.tab.c"
    break;

  case 28: /* multiplicative_expr: multiplicative_expr PTOK_ASTERIX cast_expr  */
#line 279 "cmdpars.y"
                                             { (yyval.number)= (yyvsp[-2].number) * (yyvsp[0].number); }
#line 1621 "y.tab.c"
    break;

  case 29: /* multiplicative_expr: multiplicative_expr PTOK_SLASH cast_expr  */
#line 280 "cmdpars.y"
                                           { (yyval.number)= (yyvsp[-2].number) / (yyvsp[0].number); }
#line 1627 "y.tab.c"
    break;

  case 30: /* multiplicative_expr: multiplicative_expr PTOK_PERCENT cast_expr  */
#line 281 "cmdpars.y"
                                             { (yyval.number)= (yyvsp[-2].number) % (yyvsp[0].number); }
#line 1633 "y.tab.c"
    break;

  case 31: /* additive_expr: multiplicative_expr  */
#line 285 "cmdpars.y"
                      { (yyval.number)= (yyvsp[0].number); }
#line 1639 "y.tab.c"
    break;

  case 32: /* additive_expr: additive_expr PTOK_PLUS multiplicative_expr  */
#line 286 "cmdpars.y"
                                              { (yyval.number)= (yyvsp[-2].number) + (yyvsp[0].number); }
#line 1645 "y.tab.c"
    break;

  case 33: /* additive_expr: additive_expr PTOK_MINUS multiplicative_expr  */
#line 287 "cmdpars.y"
                                               { (yyval.number)= (yyvsp[-2].number) - (yyvsp[0].number); }
#line 1651 "y.tab.c"
    break;

  case 34: /* shift_expr: additive_expr  */
#line 291 "cmdpars.y"
                { (yyval.number)= (yyvsp[0].number); }
#line 1657 "y.tab.c"
    break;

  case 35: /* shift_expr: shift_expr PTOK_LEFT_OP additive_expr  */
#line 292 "cmdpars.y"
                                        { (yyval.number)= (yyvsp[-2].number) << (yyvsp[0].number); }
#line 1663 "y.tab.c"
    break;

  case 36: /* shift_expr: shift_expr PTOK_RIGHT_OP additive_expr  */
#line 293 "cmdpars.y"
                                         { (yyval.number)= (yyvsp[-2].number) >> (yyvsp[0].number); }
#line 1669 "y.tab.c"
    break;

  case 37: /* relational_expr: shift_expr  */
#line 297 "cmdpars.y"
             { (yyval.number)= (yyvsp[0].number); }
#line 1675 "y.tab.c"
    break;

  case 38: /* relational_expr: relational_expr PTOK_LESS shift_expr  */
#line 298 "cmdpars.y"
                                       { (yyval.number)= ((yyvsp[-2].number) < (yyvsp[0].number))?1:0; }
#line 1681 "y.tab.c"
    break;

  case 39: /* relational_expr: relational_expr PTOK_GREATER shift_expr  */
#line 299 "cmdpars.y"
                                          { (yyval.number)= ((yyvsp[-2].number) > (yyvsp[0].number))?1:0; }
#line 1687 "y.tab.c"
    break;

  case 40: /* relational_expr: relational_expr PTOK_LE_OP shift_expr  */
#line 300 "cmdpars.y"
                                        { (yyval.number)= ((yyvsp[-2].number) <= (yyvsp[0].number))?1:0; }
#line 1693 "y.tab.c"
    break;

  case 41: /* relational_expr: relational_expr PTOK_GE_OP shift_expr  */
#line 301 "cmdpars.y"
                                        { (yyval.number)= ((yyvsp[-2].number) >= (yyvsp[0].number))?1:0; }
#line 1699 "y.tab.c"
    break;

  case 42: /* equality_expr: relational_expr  */
#line 305 "cmdpars.y"
                  { (yyval.number)= (yyvsp[0].number); }
#line 1705 "y.tab.c"
    break;

  case 43: /* equality_expr: equality_expr PTOK_EQ_OP relational_expr  */
#line 306 "cmdpars.y"
                                           { (yyval.number)= ((yyvsp[-2].number)==(yyvsp[0].number))?1:0; }
#line 1711 "y.tab.c"
    break;

  case 44: /* equality_expr: equality_expr PTOK_NE_OP relational_expr  */
#line 307 "cmdpars.y"
                                           { (yyval.number)= ((yyvsp[-2].number)!=(yyvsp[0].number))?1:0; }
#line 1717 "y.tab.c"
    break;

  case 45: /* and_expr: equality_expr  */
#line 311 "cmdpars.y"
                { (yyval.number)= (yyvsp[0].number); }
#line 1723 "y.tab.c"
    break;

  case 46: /* and_expr: and_expr PTOK_AMPERSAND equality_expr  */
#line 312 "cmdpars.y"
                                        { (yyval.number)= (yyvsp[-2].number) & (yyvsp[0].number); }
#line 1729 "y.tab.c"
    break;

  case 47: /* exclusive_or_expr: and_expr  */
#line 316 "cmdpars.y"
           { (yyval.number)= (yyvsp[0].number); }
#line 1735 "y.tab.c"
    break;

  case 48: /* exclusive_or_expr: exclusive_or_expr PTOK_CIRCUM and_expr  */
#line 317 "cmdpars.y"
                                         { (yyval.number)= (yyvsp[-2].number) ^ (yyvsp[0].number); }
#line 1741 "y.tab.c"
    break;

  case 49: /* inclusive_or_expr: exclusive_or_expr  */
#line 321 "cmdpars.y"
                    { (yyval.number)= (yyvsp[0].number); }
#line 1747 "y.tab.c"
    break;

  case 50: /* inclusive_or_expr: inclusive_or_expr PTOK_PIPE exclusive_or_expr  */
#line 322 "cmdpars.y"
                                                { (yyval.number)= (yyvsp[-2].number) | (yyvsp[0].number); }
#line 1753 "y.tab.c"
    break;

  case 51: /* logical_and_expr: inclusive_or_expr  */
#line 326 "cmdpars.y"
                    { (yyval.number)= (yyvsp[0].number); }
#line 1759 "y.tab.c"
    break;

  case 52: /* logical_and_expr: logical_and_expr PTOK_AND_OP inclusive_or_expr  */
#line 327 "cmdpars.y"
                                                 { (yyval.number)= ((yyvsp[-2].number) && (yyvsp[0].number))?1:0; }
#line 1765 "y.tab.c"
    break;

  case 53: /* logical_or_expr: logical_and_expr  */
#line 331 "cmdpars.y"
                   { (yyval.number)= (yyvsp[0].number); }
#line 1771 "y.tab.c"
    break;

  case 54: /* logical_or_expr: logical_or_expr PTOK_OR_OP logical_and_expr  */
#line 332 "cmdpars.y"
                                              { (yyval.number)= ((yyvsp[-2].number) || (yyvsp[0].number))?1:0; }
#line 1777 "y.tab.c"
    break;

  case 55: /* conditional_expr: logical_or_expr  */
#line 336 "cmdpars.y"
                  { (yyval.number)= (yyvsp[0].number); }
#line 1783 "y.tab.c"
    break;

  case 56: /* conditional_expr: logical_or_expr PTOK_QUESTION expr PTOK_COLON conditional_expr  */
#line 337 "cmdpars.y"
                                                                 { (yyval.number)= ((yyvsp[-4].number))?((yyvsp[-2].number)):((yyvsp[0].number)); }
#line 1789 "y.tab.c"
    break;

  case 57: /* assignment_expr: conditional_expr  */
#line 341 "cmdpars.y"
                   { (yyval.number)= (yyvsp[0].number); }
#line 1795 "y.tab.c"
    break;

  case 58: /* assignment_expr: memory assignment_operator assignment_expr  */
#line 345 "cmdpars.y"
        {
	  t_mem org= (yyvsp[-2].memory).memory->read((yyvsp[-2].memory).address);
	  (yyval.number)= (yyvsp[0].number);
	  switch ((yyvsp[-1].number))
	    {
	    case PTOK_EQUAL:
	      (yyvsp[-2].memory).memory->write((yyvsp[-2].memory).address, (yyvsp[0].number));
	      break;
	    case PTOK_MUL_ASSIGN:
	      (yyvsp[-2].memory).memory->write((yyvsp[-2].memory).address, org *= (yyvsp[0].number));
	      break;
	    case PTOK_DIV_ASSIGN:
	      (yyvsp[-2].memory).memory->write((yyvsp[-2].memory).address, org /= (yyvsp[0].number));
	      break;
	    case PTOK_MOD_ASSIGN:
	      (yyvsp[-2].memory).memory->write((yyvsp[-2].memory).address, org %= (yyvsp[0].number));
	      break;
	    case PTOK_ADD_ASSIGN:
	      (yyvsp[-2].memory).memory->write((yyvsp[-2].memory).address, org += (yyvsp[0].number));
	      break;
	    case PTOK_SUB_ASSIGN:
	      (yyvsp[-2].memory).memory->write((yyvsp[-2].memory).address, org -= (yyvsp[0].number));
	      break;
	    case PTOK_LEFT_ASSIGN:
	      (yyvsp[-2].memory).memory->write((yyvsp[-2].memory).address, org <<= (yyvsp[0].number));
	      break;
	    case PTOK_RIGHT_ASSIGN:
	      (yyvsp[-2].memory).memory->write((yyvsp[-2].memory).address, org >>= (yyvsp[0].number));
	      break;
	    case PTOK_AND_ASSIGN:
	      (yyvsp[-2].memory).memory->write((yyvsp[-2].memory).address, org &= (yyvsp[0].number));
	      break;
	    case PTOK_XOR_ASSIGN:
	      (yyvsp[-2].memory).memory->write((yyvsp[-2].memory).address, org ^= (yyvsp[0].number));
	      break;
	    case PTOK_OR_ASSIGN:
	      (yyvsp[-2].memory).memory->write((yyvsp[-2].memory).address, org |= (yyvsp[0].number));
	      break;
	    }
	  (yyval.number)= (yyvsp[-2].memory).memory->read((yyvsp[-2].memory).address);
	}
#line 1841 "y.tab.c"
    break;

  case 59: /* assignment_expr: bit PTOK_EQUAL assignment_expr  */
#line 387 "cmdpars.y"
        {
		t_mem mask = 0;
		for (int i = (yyvsp[-2].bit).bitnr_low; i <= (yyvsp[-2].bit).bitnr_high; mask |= 1U << i++);
		mask= ((yyvsp[-2].bit).memory->read((yyvsp[-2].bit).mem_address) & (~mask)) | (((yyvsp[0].number) & mask) << (yyvsp[-2].bit).bitnr_low);
		(yyvsp[-2].bit).memory->write((yyvsp[-2].bit).mem_address, mask);
		(yyval.number)= mask;
	}
#line 1853 "y.tab.c"
    break;

  case 60: /* assignment_expr: PTOK_CELL assignment_operator assignment_expr  */
#line 395 "cmdpars.y"
        {
	  t_mem org= (yyvsp[-2].cell)->read();
	  (yyval.number)= (yyvsp[0].number);
	  switch ((yyvsp[-1].number))
	    {
	    case PTOK_EQUAL:
	      (yyvsp[-2].cell)->write((yyvsp[0].number));
	      break;
	    case PTOK_MUL_ASSIGN:
	      (yyvsp[-2].cell)->write(org *= (yyvsp[0].number));
	      break;
	    case PTOK_DIV_ASSIGN:
	      (yyvsp[-2].cell)->write(org /= (yyvsp[0].number));
	      break;
	    case PTOK_MOD_ASSIGN:
	      (yyvsp[-2].cell)->write(org %= (yyvsp[0].number));
	      break;
	    case PTOK_ADD_ASSIGN:
	      (yyvsp[-2].cell)->write(org += (yyvsp[0].number));
	      break;
	    case PTOK_SUB_ASSIGN:
	      (yyvsp[-2].cell)->write(org -= (yyvsp[0].number));
	      break;
	    case PTOK_LEFT_ASSIGN:
	      (yyvsp[-2].cell)->write(org <<= (yyvsp[0].number));
	      break;
	    case PTOK_RIGHT_ASSIGN:
	      (yyvsp[-2].cell)->write(org >>= (yyvsp[0].number));
	      break;
	    case PTOK_AND_ASSIGN:
	      (yyvsp[-2].cell)->write(org &= (yyvsp[0].number));
	      break;
	    case PTOK_XOR_ASSIGN:
	      (yyvsp[-2].cell)->write(org ^= (yyvsp[0].number));
	      break;
	    case PTOK_OR_ASSIGN:
	      (yyvsp[-2].cell)->write(org |= (yyvsp[0].number));
	      break;
	    }
	  (yyval.number)= (yyvsp[-2].cell)->read();
	}
#line 1899 "y.tab.c"
    break;

  case 61: /* assignment_operator: PTOK_EQUAL  */
#line 439 "cmdpars.y"
             { (yyval.number)= PTOK_EQUAL; }
#line 1905 "y.tab.c"
    break;

  case 62: /* assignment_operator: PTOK_MUL_ASSIGN  */
#line 440 "cmdpars.y"
                  { (yyval.number)= PTOK_MUL_ASSIGN; }
#line 1911 "y.tab.c"
    break;

  case 63: /* assignment_operator: PTOK_DIV_ASSIGN  */
#line 441 "cmdpars.y"
                  { (yyval.number)= PTOK_DIV_ASSIGN; }
#line 1917 "y.tab.c"
    break;

  case 64: /* assignment_operator: PTOK_MOD_ASSIGN  */
#line 442 "cmdpars.y"
                  { (yyval.number)= PTOK_MOD_ASSIGN; }
#line 1923 "y.tab.c"
    break;

  case 65: /* assignment_operator: PTOK_ADD_ASSIGN  */
#line 443 "cmdpars.y"
                  { (yyval.number)= PTOK_ADD_ASSIGN; }
#line 1929 "y.tab.c"
    break;

  case 66: /* assignment_operator: PTOK_SUB_ASSIGN  */
#line 444 "cmdpars.y"
                  { (yyval.number)= PTOK_SUB_ASSIGN; }
#line 1935 "y.tab.c"
    break;

  case 67: /* assignment_operator: PTOK_LEFT_ASSIGN  */
#line 445 "cmdpars.y"
                   { (yyval.number)= PTOK_LEFT_ASSIGN; }
#line 1941 "y.tab.c"
    break;

  case 68: /* assignment_operator: PTOK_RIGHT_ASSIGN  */
#line 446 "cmdpars.y"
                    { (yyval.number)= PTOK_RIGHT_ASSIGN; }
#line 1947 "y.tab.c"
    break;

  case 69: /* assignment_operator: PTOK_AND_ASSIGN  */
#line 447 "cmdpars.y"
                  { (yyval.number)= PTOK_AND_ASSIGN; }
#line 1953 "y.tab.c"
    break;

  case 70: /* assignment_operator: PTOK_XOR_ASSIGN  */
#line 448 "cmdpars.y"
                  { (yyval.number)= PTOK_XOR_ASSIGN; }
#line 1959 "y.tab.c"
    break;

  case 71: /* assignment_operator: PTOK_OR_ASSIGN  */
#line 449 "cmdpars.y"
                 { (yyval.number)= PTOK_OR_ASSIGN; }
#line 1965 "y.tab.c"
    break;

  case 72: /* expr: assignment_expr  */
#line 453 "cmdpars.y"
                  { (yyval.number)= (yyvsp[0].number); }
#line 1971 "y.tab.c"
    break;

  case 73: /* expr: expr PTOK_COMMA assignment_expr  */
#line 454 "cmdpars.y"
                                  { (yyval.number)= (yyvsp[0].number); }
#line 1977 "y.tab.c"
    break;

  case 75: /* memory: PTOK_MEMORY_OBJECT PTOK_LEFT_BRACKET expr PTOK_RIGHT_BRACKET  */
#line 460 "cmdpars.y"
          {
	    (yyval.memory).memory= (yyvsp[-3].memory_object);
	    (yyval.memory).address= (yyvsp[-1].number);
	  }
#line 1986 "y.tab.c"
    break;

  case 77: /* bit: memory PTOK_DOT expr  */
#line 469 "cmdpars.y"
          {
	    (yyval.bit).memory= (yyvsp[-2].memory).memory;
	    (yyval.bit).mem_address= (yyvsp[-2].memory).address;
	    (yyval.bit).bitnr_low= (yyval.bit).bitnr_high= (yyvsp[0].number);
	    (yyval.bit).bit_address= -1;
	    class cl_uc *uc= application->get_uc();
	    if (uc)
	      (yyval.bit).bit_address= uc->bit_address((yyvsp[-2].memory).memory, (yyvsp[-2].memory).address, (yyvsp[0].number));
	  }
#line 2000 "y.tab.c"
    break;

  case 78: /* bit: memory PTOK_LEFT_BRACKET expr PTOK_COLON expr PTOK_RIGHT_BRACKET  */
#line 479 "cmdpars.y"
          {
	    (yyval.bit).memory= (yyvsp[-5].memory).memory;
	    (yyval.bit).mem_address= (yyvsp[-5].memory).address;
	    if ((yyvsp[-3].number) < (yyvsp[-1].number))
	      {
	        (yyval.bit).bitnr_low= (yyvsp[-3].number);
	        (yyval.bit).bitnr_high= (yyvsp[-1].number);
	      }
	    else
	      {
	        (yyval.bit).bitnr_low= (yyvsp[-1].number);
	        (yyval.bit).bitnr_high= (yyvsp[-3].number);
	      }
	    (yyval.bit).bit_address= -1;
	  }
#line 2020 "y.tab.c"
    break;


#line 2024 "y.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 496 "cmdpars.y"


static void
yyerror (const char *msg)
{
  application->dd_cprintf ("error", "Parser error: %s\n", msg);
}
