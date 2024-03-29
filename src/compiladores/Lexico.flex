package compiladores;
import static compiladores.Tokens.*;
%%
%class Lexer
%type Tokens

L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r]+
%{
    public String lexeme;
%}
%%
{espacio}               { /*Ignore*/}
"//".*                  { /*Ignore*/}

"\n"                        { lexeme=yytext(); return Linea; }
"/*"                        { lexeme=yytext(); return coment_1; }
"//"                        { lexeme=yytext(); return coment_2; }
"{"                         { lexeme=yytext(); return id1; }
"<%"                        { lexeme=yytext(); return id1; }
"}"                         { lexeme=yytext(); return id2; }
"%>"                        { lexeme=yytext(); return id2; }
"["                         { lexeme=yytext(); return id3; }
"<:"                        { lexeme=yytext(); return id3; }
"]"                         { lexeme=yytext(); return id4; }
":>"                        { lexeme=yytext(); return id4; }
"("                         { lexeme=yytext(); return id5; }
")"                         { lexeme=yytext(); return id6; }
";"                         { lexeme=yytext(); return id7; }
":"                         { lexeme=yytext(); return id8; }
"..."                       { lexeme=yytext(); return ELLIPSIS; }
"?"                         { lexeme=yytext(); return id9; }
"::"                        { lexeme=yytext(); return COLONCOLON; }
"."                         { lexeme=yytext(); return id10; }
".*"                        { lexeme=yytext(); return DOTSTAR; }
"+"                         { lexeme=yytext(); return id11; }
"-"                         { lexeme=yytext(); return id12; }
"*"                         { lexeme=yytext(); return id13; }
"/"                         { lexeme=yytext(); return id14; }
"%"                         { lexeme=yytext(); return id15; }
"^"                         { lexeme=yytext(); return id16; }
"xor"                       { lexeme=yytext(); return id16; }
"&"                         { lexeme=yytext(); return id17; }
"bitand"                    { lexeme=yytext(); return id18; }
"|"                         { lexeme=yytext(); return id19; }
"bitor"                     { lexeme=yytext(); return id19; }
"~"                         { lexeme=yytext(); return id20; }
"compl"                     { lexeme=yytext(); return id20; }
"!"                         { lexeme=yytext(); return id21; }
"not"                       { lexeme=yytext(); return id21; }
"="                         { lexeme=yytext(); return id22; }
"<"                         { lexeme=yytext(); return id23; }
">"                         { lexeme=yytext(); return id24; }
"+="                        { lexeme=yytext(); return ADDEQ; }
"-="                        { lexeme=yytext(); return SUBEQ; }
"*="                        { lexeme=yytext(); return MULEQ; }
"/="                        { lexeme=yytext(); return DIVEQ; }
"%="                        { lexeme=yytext(); return MODEQ; }
"^="                        { lexeme=yytext(); return XOREQ; }
"xor_eq"                    { lexeme=yytext(); return XOREQ; }
"&="                        { lexeme=yytext(); return ANDEQ; }
"and_eq"                    { lexeme=yytext(); return ANDEQ; }
"|="                        { lexeme=yytext(); return OREQ; }
"or_eq"                     { lexeme=yytext(); return OREQ; }
"<<"                        { lexeme=yytext(); return SL; }
">>"                        { lexeme=yytext(); return SR; }
"<<="                       { lexeme=yytext(); return SLEQ; }
">>="                       { lexeme=yytext(); return SREQ; }
"=="                        { lexeme=yytext(); return EQ; }
"!="                        { lexeme=yytext(); return NOTEQ; }
"not_eq"                    { lexeme=yytext(); return NOTEQ; }
"<="                        { lexeme=yytext(); return LTEQ; }
">="                        { lexeme=yytext(); return GTEQ; }
"&&"                        { lexeme=yytext(); return ANDAND; }
"and"                       { lexeme=yytext(); return ANDAND; }
"||"                        { lexeme=yytext(); return OROR; }
"or"                        { lexeme=yytext(); return OROR; }
"++"                        { lexeme=yytext(); return PLUSPLUS; }
"--"                        { lexeme=yytext(); return MINUSMINUS; }
","                         { lexeme=yytext(); return id25; }
"#"                         { lexeme=yytext(); return id26; }
"->*"                       { lexeme=yytext(); return ARROWSTAR; }
"->"                        { lexeme=yytext(); return ARROW; }
"asm"                       { lexeme=yytext(); return ASM; }
"auto"                      { lexeme=yytext(); return AUTO; }
"bool"                      { lexeme=yytext(); return BOOL; }
"break"                     { lexeme=yytext(); return BREAK; }
"case"                      { lexeme=yytext(); return CASE; }
"catch"                     { lexeme=yytext(); return CATCH; }
"char"                      { lexeme=yytext(); return CHAR; }
"class"                     { lexeme=yytext(); return CLASS; }
"const"                     { lexeme=yytext(); return CONST; }
"const_cast"                { lexeme=yytext(); return CONST_CAST; }
"continue"                  { lexeme=yytext(); return CONTINUE; }
"default"                   { lexeme=yytext(); return DEFAULT; }
"delete"                    { lexeme=yytext(); return DELETE; }
"do"                        { lexeme=yytext(); return DO; }
"double"                    { lexeme=yytext(); return DOUBLE; }
"dynamic_cast"              { lexeme=yytext(); return DYNAMIC_CAST; }
"else"                      { lexeme=yytext(); return ELSE; }
"enum"                      { lexeme=yytext(); return ENUM; }
"explicit"                  { lexeme=yytext(); return EXPLICIT; }
"export"                    { lexeme=yytext(); return EXPORT; }
"extern"                    { lexeme=yytext(); return EXTERN; }
"false"                     { lexeme=yytext(); return FALSE; }
"float"                     { lexeme=yytext(); return FLOAT; }
"for"                       { lexeme=yytext(); return FOR; }
"friend"                    { lexeme=yytext(); return FRIEND; }
"goto"                      { lexeme=yytext(); return GOTO; }
"if"                        { lexeme=yytext(); return IF; }
"inline"                    { lexeme=yytext(); return INLINE; }
"int"                       { lexeme=yytext(); return INT; }
"long"                      { lexeme=yytext(); return LONG; }
"mutable"                   { lexeme=yytext(); return MUTABLE; }
"namespace"                 { lexeme=yytext(); return NAMESPACE; }
"new"                       { lexeme=yytext(); return NEW; }
"operator"                  { lexeme=yytext(); return OPERATOR; }
"private"                   { lexeme=yytext(); return PRIVATE; }
"protected"                 { lexeme=yytext(); return PROTECTED; }
"public"                    { lexeme=yytext(); return PUBLIC; }
"register"                  { lexeme=yytext(); return REGISTER; }
"reinterpret_cast"          { lexeme=yytext(); return REINTERPRET_CAST; }
"return"                    { lexeme=yytext(); return RETURN; }
"short"                     { lexeme=yytext(); return SHORT; }
"signed"                    { lexeme=yytext(); return SIGNED; }
"sizeof"                    { lexeme=yytext(); return SIZEOF; }
"static"                    { lexeme=yytext(); return STATIC; }
"static_cast"               { lexeme=yytext(); return STATIC_CAST; }
"struct"                    { lexeme=yytext(); return STRUCT; }
"switch"                    { lexeme=yytext(); return SWITCH; }
"template"                  { lexeme=yytext(); return TEMPLATE; }
"this"                      { lexeme=yytext(); return THIS; }
"throw"                     { lexeme=yytext(); return THROW; }
"true"                      { lexeme=yytext(); return TRUE; }
"try"                       { lexeme=yytext(); return TRY; }
"typedef"                   { lexeme=yytext(); return TYPEDEF; }
"typeid"                    { lexeme=yytext(); return TYPEID; }
"typename"                  { lexeme=yytext(); return TYPENAME; }
"union"                     { lexeme=yytext(); return UNION; }
"unsigned"                  { lexeme=yytext(); return UNSIGNED; }
"using"                     { lexeme=yytext(); return USING; }
"virtual"                   { lexeme=yytext(); return VIRTUAL; }
"void"                      { lexeme=yytext(); return VOID; }
"volatile"                  { lexeme=yytext(); return VOLATILE; }
"wchar_t"                   { lexeme=yytext(); return WCHAR_T; }
"while"                     { lexeme=yytext(); return WHILE; }
"begin"                     { lexeme=yytext(); return BEGIN; }
/*FUNCIONES ITERATIVAS DE LA CLASE ARRAY*/
"end"                       { lexeme=yytext(); return END; }
"rbegin"                    { lexeme=yytext(); return RBEGIN; }
"rend"                      { lexeme=yytext(); return REND; }
"cbegin"                    { lexeme=yytext(); return CBEGIN; }
"cend"                      { lexeme=yytext(); return CEND; }
"crbegin"                   { lexeme=yytext(); return CRBEGIN; }
"crend"                     { lexeme=yytext(); return CREND; }
/*LIBRERIA CTYPE.H */
"isalnum"                   { lexeme=yytext(); return ISALNUM; }
"isalpha"                   { lexeme=yytext(); return ISALPHA; }
"iscntrl"                   { lexeme=yytext(); return ISCNTRL; }
"isdigit"                   { lexeme=yytext(); return ISDIGIT; }
"isgraph"                   { lexeme=yytext(); return ISGRAPH; }
"islower"                   { lexeme=yytext(); return ISLOWER; }
"isprint"                   { lexeme=yytext(); return ISPRINT; }
"ispunct"                   { lexeme=yytext(); return ISPUNC; }
"isspace"                   { lexeme=yytext(); return ISSPACE; }
"isupper"                   { lexeme=yytext(); return ISUPPER; }
"isxdigit"                  { lexeme=yytext(); return ISXDIGIT; }
"tolower"                   { lexeme=yytext(); return TOLOWER; }
"toupper"                   { lexeme=yytext(); return TOUPPER; }
/*LIBRERIA STDIO.H */
"fprintf"                   { lexeme=yytext(); return FPRINTF; }
"fscanf"                    { lexeme=yytext(); return FSCANF; }
"printf"                    { lexeme=yytext(); return PRINTF; }
"scanf"                     { lexeme=yytext(); return SCANF; }
"snprintf"                  { lexeme=yytext(); return SNPRINTF; }
"sprintf"                   { lexeme=yytext(); return SPRINTF; }
"sscanf"                    { lexeme=yytext(); return SSCANF; }
"vfprintf"                  { lexeme=yytext(); return VFPRINTF; }
"vfscanf"                   { lexeme=yytext(); return VFSCANF; }
"vprintf"                   { lexeme=yytext(); return VPRINTF; }
"vscanf"                    { lexeme=yytext(); return VSCANF; }
"vsnprintf"                 { lexeme=yytext(); return VSNPRINTF; }
"vsprintf"                  { lexeme=yytext(); return VSPRINTF; }
"vsscanf"                   { lexeme=yytext(); return VSSCANF; }
"remove"                    { lexeme=yytext(); return REMOVE; }
"rename"                    { lexeme=yytext(); return RENAME; }
"tmpfile"                   { lexeme=yytext(); return TMPFILE; }
"tmpnam"                    { lexeme=yytext(); return TMPNAM; }
"fclose"                    { lexeme=yytext(); return FCLOSE; }
"fflush"                    { lexeme=yytext(); return FFLUSH; }
"fopen"                     { lexeme=yytext(); return FOPEN; }
"freopen"                   { lexeme=yytext(); return FREOPEN; }
"setbuf"                    { lexeme=yytext(); return SETBUF; }
"setvbuf"                   { lexeme=yytext(); return SETVBUF; }
/*LIBRERIA FENV.H */
"feclearexcept"             { lexeme=yytext(); return FECLEAREXCEPT; }
"feraiseexcept"             { lexeme=yytext(); return FERAISEEXCEPT; }
"fegetexceptflag"           { lexeme=yytext(); return FEGETEXCEPTFLAG; }
"fesetexceptflag"           { lexeme=yytext(); return FESETEXCEPTFLAG; }
"fegetround"                { lexeme=yytext(); return FEGETROUND; }
"fesetround"                { lexeme=yytext(); return FESETROUND; }
"fegetenv"                  { lexeme=yytext(); return FEGETENV; }
"Fesetenv"                  { lexeme=yytext(); return FESETENV; }
"feholdexcept"              { lexeme=yytext(); return FEHOLDEXCEPT; }
"feupdateenv"               { lexeme=yytext(); return FEUPDATEENV; }
"fetestexcept"              { lexeme=yytext(); return FETESTEXCEPT; }
/*LIBRERIA LOCALE.H */ 
"setlocale"                 { lexeme=yytext(); return SETLOCALE; }
"localeconv"                { lexeme=yytext(); return LOCALECONV; }
/*LIBRERIA MATH.H */
"cos"                       { lexeme=yytext(); return COS; }
"sin"                       { lexeme=yytext(); return SIN; }
"tan"                       { lexeme=yytext(); return TAN; }
"acos"                      { lexeme=yytext(); return ACOS; }
"asin"                      { lexeme=yytext(); return ASIN; }
"atan"                      { lexeme=yytext(); return ATAN; }
"atan2"                     { lexeme=yytext(); return ATAN2; }
"cosh"                      { lexeme=yytext(); return COSH; }
"sinh"                      { lexeme=yytext(); return SINH; }
"tanh"                      { lexeme=yytext(); return TANH; }
"acosh"                     { lexeme=yytext(); return ACOSH; }
"asinh"                     { lexeme=yytext(); return ASINH; }
"atanh"                     { lexeme=yytext(); return ATANH; }
"exp"                       { lexeme=yytext(); return EXP; }
"frexp"                     { lexeme=yytext(); return FREXP; }
"ldexp"                     { lexeme=yytext(); return LDEXP; }
"log"                       { lexeme=yytext(); return LOG; }
"log10"                     { lexeme=yytext(); return LOG10; }
"modf"                      { lexeme=yytext(); return MODF; }
"exp2"                      { lexeme=yytext(); return EXP2; }
"expm1"                     { lexeme=yytext(); return EXPM1; }
"ilogb"                     { lexeme=yytext(); return ILOGB; }
"log1p"                     { lexeme=yytext(); return LOG1P; }
"log2"                      { lexeme=yytext(); return LOG2; }
"scalbn"                    { lexeme=yytext(); return SCALBN; }
"scalbln"                   { lexeme=yytext(); return SCALBLN; }
"pow"                       { lexeme=yytext(); return POW; }
"sqrt"                      { lexeme=yytext(); return SQRT; }
"cbrt"                      { lexeme=yytext(); return CBRT; }
"hypot"                     { lexeme=yytext(); return HYPOT; }
"erf"                       { lexeme=yytext(); return ERF; }
"erfc"                      { lexeme=yytext(); return ERFC; }
"tgamma"                    { lexeme=yytext(); return TGAMMA; }
"lgamma"                    { lexeme=yytext(); return LGAMMA; }
"ceil"                      { lexeme=yytext(); return CEIL; }
"floor"                     { lexeme=yytext(); return FLOOR; }
"fmod"                      { lexeme=yytext(); return FMOD; }
"trunc"                     { lexeme=yytext(); return TRUNC; }
"round"                     { lexeme=yytext(); return ROUND; }
"lround"                    { lexeme=yytext(); return LROUND; }
"llround"                   { lexeme=yytext(); return LLROUND; }
"rint"                      { lexeme=yytext(); return RINT; }
"lrint"                     { lexeme=yytext(); return LRINT; }
"llrint"                    { lexeme=yytext(); return LLRINT; }
"nearbyint"                 { lexeme=yytext(); return NEARBYINT; }
"remainder"                 { lexeme=yytext(); return REMAINDER; }
"remquo"                    { lexeme=yytext(); return REMQUO; }
"copysign"                  { lexeme=yytext(); return COPYSIGN; }
"nan"                       { lexeme=yytext(); return NAN; }
"nextafter"                 { lexeme=yytext(); return NEXTAFTER; }
"nexttoward"                { lexeme=yytext(); return NEXTTOWARD; }
"fdim"                      { lexeme=yytext(); return FDIM; }
"fmax"                      { lexeme=yytext(); return FMAX; }
"fmin"                      { lexeme=yytext(); return FMIN; }
"fabs"                      { lexeme=yytext(); return FABS; }
"abs"                       { lexeme=yytext(); return ABS; }
"fma"                       { lexeme=yytext(); return FMA; }
/*LIBRERIA SETJMP.H */
"Longjmp"                   { lexeme=yytext(); return LONGJMP; }
/*LIBRERIA SIGNAL.H */
"signal"                    { lexeme=yytext(); return SIGNAL; }
"raise"                     { lexeme=yytext(); return RAISE; }
/*LIBRERIA STDIO.H */
"fgetc"                     { lexeme=yytext(); return FGETC; }
"fgets"                     { lexeme=yytext(); return FGETS; }
"fputc"                     { lexeme=yytext(); return FPUTC; }
"fputs"                     { lexeme=yytext(); return FPUTS; }
"getc"                      { lexeme=yytext(); return GETC; }
"getchar"                   { lexeme=yytext(); return GETCHAR ; }
"gets"                      { lexeme=yytext(); return GETCGETS; }
"putc"                      { lexeme=yytext(); return PUTC, }
"putchar"                   { lexeme=yytext(); return PUTCHAR; }
"puts"                      { lexeme=yytext(); return PUTS; }
"ungetc"                    { lexeme=yytext(); return UNGETC; }
"fread"                     { lexeme=yytext(); return FREAD; }
"fwrite"                    { lexeme=yytext(); return FWRITE; }
"fgetpos"                   { lexeme=yytext(); return FGETPOS; }
"fseek"                     { lexeme=yytext(); return FSEEK; }
"fsetpos"                   { lexeme=yytext(); return FSETPOS; }
"ftell"                     { lexeme=yytext(); return FTELL; }
"rewind"                    { lexeme=yytext(); return REWIND; }
"clearerr"                  { lexeme=yytext(); return CLEARERR; }
"feof"                      { lexeme=yytext(); return FEOF; }
"ferror"                    { lexeme=yytext(); return FERROR; }
"perror"                    { lexeme=yytext(); return PERROR; }
/*LIBRERIA STLIB.H */
"atof"                      { lexeme=yytext(); return ATOF; }
"atoi"                      { lexeme=yytext(); return ATOI; }
"atol"                      { lexeme=yytext(); return ATOL; }
"atoll"                     { lexeme=yytext(); return ATOLL; }
"strtod"                    { lexeme=yytext(); return STRTOD; }
"strtof"                    { lexeme=yytext(); return STRTOF; }
"strtol"                    { lexeme=yytext(); return STRTOL; }
"strtold"                   { lexeme=yytext(); return STRTOLD; }
"strtoll"                   { lexeme=yytext(); return STRTOLL; }
"strtoul"                   { lexeme=yytext(); return STRTOUL; }
"strtoull"                  { lexeme=yytext(); return STRTOULL; }
"rand"                      { lexeme=yytext(); return RAND; }
"srand"                     { lexeme=yytext(); return SRAND; }
"calloc"                    { lexeme=yytext(); return CALLOC; }
"free"                      { lexeme=yytext(); return FREE; }
"malloc"                    { lexeme=yytext(); return MALLOC; }
"realloc"                   { lexeme=yytext(); return REALLOC; }
"abort"                     { lexeme=yytext(); return ABORT; }
"atexit"                    { lexeme=yytext(); return ATEXIT; }
"at_quick_exit"             { lexeme=yytext(); return AT_QUICK_EXIT; }
"exit"                      { lexeme=yytext(); return EXIT; }
"getenv"                    { lexeme=yytext(); return GETENV; }
"quick_exit"                { lexeme=yytext(); return QUICK_EXIT; }
"system"                    { lexeme=yytext(); return SYSTEM; }
"_Exit"                     { lexeme=yytext(); return _EXIT; }
"bsearch"                   { lexeme=yytext(); return BSEARCH; }
"qsort"                     { lexeme=yytext(); return QSORT; }
"div"                       { lexeme=yytext(); return DIV; }
"labs"                      { lexeme=yytext(); return LABS; }
"ldiv"                      { lexeme=yytext(); return LDIV; }
"llabs"                     { lexeme=yytext(); return LLABS; }
"lldiv"                     { lexeme=yytext(); return LLDIV; }
"mblen"                     { lexeme=yytext(); return MBLEN; }
"mbtowc"                    { lexeme=yytext(); return MBTOWC; }
"wctomb"                    { lexeme=yytext(); return WCTOMB; }
"mbstowcs"                  { lexeme=yytext(); return MBSTOWCS; }
"wcstombs"                  { lexeme=yytext(); return WCSTOMBS; }
/*LIBRERIA STRING.H */
"memcpy"                    { lexeme=yytext(); return MEMCPY; }
"memmove"                   { lexeme=yytext(); return MEMMOVE; }
"strcpy"                    { lexeme=yytext(); return STRCPY; }
"strncpy"                   { lexeme=yytext(); return STRNCPY; }
"strcat"                    { lexeme=yytext(); return STRCAT; }
"strncat"                   { lexeme=yytext(); return STRNCAT; }
"memcmp"                    { lexeme=yytext(); return MEMCMP; }
"strcmp"                    { lexeme=yytext(); return STRCMP; }
"strxfrm"                   { lexeme=yytext(); return STRXFRM; }
"memchr"                    { lexeme=yytext(); return MEMCHR; }
"strchr"                    { lexeme=yytext(); return STRCHR; }
"strcspn"                   { lexeme=yytext(); return STRCSPN; }
"strpbrk"                   { lexeme=yytext(); return STRPBRK; }
"strrchr"                   { lexeme=yytext(); return STRRCHR; }
"strspn"                    { lexeme=yytext(); return STRSPN; }
"strstr"                    { lexeme=yytext(); return STRSTR; }
"strtok"                    { lexeme=yytext(); return STRTOK; }
"memset"                    { lexeme=yytext(); return MEMSET; }
"strerror"                  { lexeme=yytext(); return STRERROR; }
"strlen"                    { lexeme=yytext(); return STRLEN; }
 /*LIBRERIA TIME.H */ 
"clock"                     { lexeme=yytext(); return CLOCK; }
"difftime"                  { lexeme=yytext(); return DIFFTIME; }
"mktime"                    { lexeme=yytext(); return MKTIME; }
"time"                      { lexeme=yytext(); return TIME; }
"asctime"                   { lexeme=yytext(); return ASCTIME; }
"ctime"                     { lexeme=yytext(); return CTIME; }
"gmtime"                    { lexeme=yytext(); return GMTIME; }
"localtime"                 { lexeme=yytext(); return LOCALTIME; }
"strftime"                  { lexeme=yytext(); return STRFTIME; }
/*LIBRERIA WCHAR.H */
"fgetwc"                    { lexeme=yytext(); return FGETWC; }
"fgetws"                    { lexeme=yytext(); return FGETWS; }
"fputwc"                    { lexeme=yytext(); return FPUTWC; }
"fputws"                    { lexeme=yytext(); return FPUTWS; }
"fwide"                     { lexeme=yytext(); return FWIDE; }
"fwprintf"                  { lexeme=yytext(); return FWPRINTF; }
"fwscanf"                   { lexeme=yytext(); return FWSCANF; }
"getwc"                     { lexeme=yytext(); return GETWC; }
"getwchar"                  { lexeme=yytext(); return GETWCHAR; }
"putwc"                     { lexeme=yytext(); return PUTWC; }
"putwchar"                  { lexeme=yytext(); return PUTWCHAR; }
"swprintf"                  { lexeme=yytext(); return SWPRINTF; }
"swscanf"                   { lexeme=yytext(); return SWSCANF; }
"ungetwc"                   { lexeme=yytext(); return UNGETWC; }
"vfwprintf"                 { lexeme=yytext(); return VFWPRINTF; }
"vfwscanf"                  { lexeme=yytext(); return VFWSCANF; }
"vwprintf"                  { lexeme=yytext(); return VWPRINTF; }
"vwscanf"                   { lexeme=yytext(); return VWSCANF; }
"wprintf"                   { lexeme=yytext(); return WPRINTF; }
"wscanf"                    { lexeme=yytext(); return WSCANF; }
"wcstod"                    { lexeme=yytext(); return WCSTOD; }
"wcstof"                    { lexeme=yytext(); return WCSTOF; }
"wcstol"                    { lexeme=yytext(); return WCSTOL; }
"wcstold"                   { lexeme=yytext(); return WCSTOLD; }
"wcstoll"                   { lexeme=yytext(); return WCSTOLL; }
"wcstoul"                   { lexeme=yytext(); return WCSTOUL; }
"wcstoull"                  { lexeme=yytext(); return WCSTOULL; }
"btowc"                     { lexeme=yytext(); return BTOWC; }
"mbrlen"                    { lexeme=yytext(); return MBRLEN; }
"mbrtowc"                   { lexeme=yytext(); return MBRTOWC; }
"mbsinit"                   { lexeme=yytext(); return MBSINIT; }
"mbsrtowcs"                 { lexeme=yytext(); return MBSRTOWCS; }
"wcrtomb"                   { lexeme=yytext(); return WCRTOMB; }
"wctob"                     { lexeme=yytext(); return WCTOB; }
"wcsrtombs"                 { lexeme=yytext(); return WCSRTOMBS; }
"wcscat"                    { lexeme=yytext(); return WCSCAT; }
"wcschr"                    { lexeme=yytext(); return WCSCHR; }
"wcscmp"                    { lexeme=yytext(); return WCSCMP; }
"wcscoll"                   { lexeme=yytext(); return WCSCOLL; }
"wcscpy"                    { lexeme=yytext(); return WCSCPY; }
"wcscspn"                   { lexeme=yytext(); return WCSCSPN; }
"wcslen"                    { lexeme=yytext(); return WCSLEN; }
"wcsncat"                   { lexeme=yytext(); return WCSNCAT; }
"wcsncmp"                   { lexeme=yytext(); return WCSNCMP; }
"wcsncpy"                   { lexeme=yytext(); return WCSNCPY; }
"wcspbrk"                   { lexeme=yytext(); return WCSPBRK; }
"wcsrchr"                   { lexeme=yytext(); return WCSRCHR; }
"wcsspn"                    { lexeme=yytext(); return WCSSPN; }
"wcsstr"                    { lexeme=yytext(); return WCSSTR; }
"wcstok"                    { lexeme=yytext(); return WCSTOK; }
"wcsxfrm"                   { lexeme=yytext(); return WCSXFRM; }
"wmemchr"                   { lexeme=yytext(); return WMEMCHR; }
"wmemcmp"                   { lexeme=yytext(); return WMEMCMP; }
"wmemcpy"                   { lexeme=yytext(); return WMEMCPY; }
"wmemmove"                  { lexeme=yytext(); return WMEMMOVE; }
"wmemset"                   { lexeme=yytext(); return WMEMSET; }
"wcsftime"                  { lexeme=yytext(); return WCSFTIME; }
/*LIBRERIA CTYPE.H */
"iswalnum"                  { lexeme=yytext(); return ISWALNUM; }
"iswalpha"                  { lexeme=yytext(); return ISWALPHA; }
"iswblank"                  { lexeme=yytext(); return ISWBLANK; }
"iswcntrl"                  { lexeme=yytext(); return ISWCNTRL; }
"iswdigit"                  { lexeme=yytext(); return ISWDIGIT; }
"iswgraph"                  { lexeme=yytext(); return ISWGRAPH; }
"iswlower"                  { lexeme=yytext(); return ISWLOWER; }
"iswprint"                  { lexeme=yytext(); return ISWPRINT; }
"iswpunct"                  { lexeme=yytext(); return ISWPUNCT; }
"iswspace"                  { lexeme=yytext(); return ISWSPACE; }
"iswupper"                  { lexeme=yytext(); return ISWUPPER; }
"iswxdigit"                 { lexeme=yytext(); return ISWXDIGIT; }
"towlower"                  { lexeme=yytext(); return TOWLOWER; }
"towupper"                  { lexeme=yytext(); return TOWUPPER; }
"iswctype"                  { lexeme=yytext(); return ISWCTYPE; }
"towctrans"                 { lexeme=yytext(); return TOWCTRANS; }
"wctrans"                   { lexeme=yytext(); return WCTRANS; }
"wctype"                    { lexeme=yytext(); return WCTYPE; }
/*INPUT/ OUTPUT  IOSTREAM */
"cout"                      { lexeme=yytext(); return COUT; }
"cin"                       { lexeme=yytext(); return CIN; }
"cerr"                      { lexeme=yytext(); return CERR; }
"clog"                      { lexeme=yytext(); return CLOG; }
"wcin"                      { lexeme=yytext(); return WCIN; }
"wcout"                     { lexeme=yytext(); return WCOUT; }
"wcerr"                     { lexeme=yytext(); return WCERR; }
"wclog"                     { lexeme=yytext(); return WCLOG; }
/*INPUT/ OUTPUT  ISTREAM */
"istream"                   { lexeme=yytext(); return ISTREAM; }
"iostream"                  { lexeme=yytext(); return IOSTREAM; }
"wistream"                  { lexeme=yytext(); return WISTREAM; }
"wiostream"                 { lexeme=yytext(); return WIOSTREAM; }
/*INPUT/ OUTPUT  OSTREAM */
"ostream"                   { lexeme=yytext(); return OSTREAM; }
"wostream"                  { lexeme=yytext(); return WOSTREAM; }
"ends"                      { lexeme=yytext(); return ENDS; }
"endl"                      { lexeme=yytext(); return ENDL; }
"flush"                     { lexeme=yytext(); return FLUSH; }

{L}({L}|{D})*               { lexeme=yytext(); return ident;}
("(-"{D}+")")|{D}+          { lexeme=yytext(); return numero;}
.                           {return ERROR;}