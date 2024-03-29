
//----------------------------------------------------
// The following code was generated by CUP v0.11a beta 20060608
// Fri Nov 22 14:09:32 COT 2019
//----------------------------------------------------

package compiladores;

import java_cup.runtime.Symbol;

/** CUP v0.11a beta 20060608 generated parser.
  * @version Fri Nov 22 14:09:32 COT 2019
  */
public class Sintax extends java_cup.runtime.lr_parser {

  /** Default constructor. */
  public Sintax() {super();}

  /** Constructor which sets the default scanner. */
  public Sintax(java_cup.runtime.Scanner s) {super(s);}

  /** Constructor which sets the default scanner. */
  public Sintax(java_cup.runtime.Scanner s, java_cup.runtime.SymbolFactory sf) {super(s,sf);}

  /** Production table. */
  protected static final short _production_table[][] = 
    unpackFromStrings(new String[] {
    "\000\026\000\002\002\004\000\002\002\004\000\002\003" +
    "\004\000\002\003\003\000\002\004\011\000\002\005\014" +
    "\000\002\005\013\000\002\006\004\000\002\006\004\000" +
    "\002\006\003\000\002\006\003\000\002\006\004\000\002" +
    "\006\003\000\002\006\003\000\002\006\004\000\002\007" +
    "\005\000\002\010\023\000\002\010\022\000\002\011\013" +
    "\000\002\011\012\000\002\013\010\000\002\012\011" });

  /** Access to production table. */
  public short[][] production_table() {return _production_table;}

  /** Parse-action table. */
  protected static final short[][] _action_table = 
    unpackFromStrings(new String[] {
    "\000\120\000\004\037\004\001\002\000\004\041\115\001" +
    "\002\000\006\037\ufffe\040\ufffe\001\002\000\004\002\114" +
    "\001\002\000\006\037\004\040\011\001\002\000\006\037" +
    "\uffff\040\uffff\001\002\000\004\165\013\001\002\000\004" +
    "\002\000\001\002\000\004\012\014\001\002\000\004\013" +
    "\015\001\002\000\004\006\016\001\002\000\014\040\022" +
    "\116\020\121\023\134\027\142\026\001\002\000\020\007" +
    "\ufff5\040\ufff5\075\ufff5\116\ufff5\121\ufff5\134\ufff5\142\ufff5" +
    "\001\002\000\004\012\073\001\002\000\020\007\ufff8\040" +
    "\ufff8\075\ufff8\116\ufff8\121\ufff8\134\ufff8\142\ufff8\001\002" +
    "\000\004\163\071\001\002\000\004\012\060\001\002\000" +
    "\014\040\022\116\020\121\023\134\054\142\026\001\002" +
    "\000\020\007\ufff4\040\ufff4\075\ufff4\116\ufff4\121\ufff4\134" +
    "\ufff4\142\ufff4\001\002\000\004\012\034\001\002\000\004" +
    "\164\031\001\002\000\020\007\ufff7\040\ufff7\075\ufff7\116" +
    "\ufff7\121\ufff7\134\ufff7\142\ufff7\001\002\000\004\014\032" +
    "\001\002\000\004\007\033\001\002\000\004\002\ufffb\001" +
    "\002\000\004\163\035\001\002\000\004\013\036\001\002" +
    "\000\004\006\037\001\002\000\004\076\041\001\002\000" +
    "\004\007\053\001\002\000\004\164\042\001\002\000\004" +
    "\015\043\001\002\000\012\040\022\116\020\121\023\142" +
    "\026\001\002\000\014\040\022\075\050\116\020\121\023" +
    "\142\026\001\002\000\020\007\ufff6\040\ufff6\075\ufff6\116" +
    "\ufff6\121\ufff6\134\ufff6\142\ufff6\001\002\000\020\007\ufffa" +
    "\040\ufffa\075\ufffa\116\ufffa\121\ufffa\134\ufffa\142\ufffa\001" +
    "\002\000\020\007\ufff3\040\ufff3\075\ufff3\116\ufff3\121\ufff3" +
    "\134\ufff3\142\ufff3\001\002\000\004\014\052\001\002\000" +
    "\020\007\ufff9\040\ufff9\075\ufff9\116\ufff9\121\ufff9\134\ufff9" +
    "\142\ufff9\001\002\000\004\007\uffed\001\002\000\020\007" +
    "\uffec\040\uffec\075\uffec\116\uffec\121\uffec\134\uffec\142\uffec" +
    "\001\002\000\004\164\055\001\002\000\004\014\056\001" +
    "\002\000\004\007\057\001\002\000\004\002\ufffc\001\002" +
    "\000\004\164\061\001\002\000\004\034\062\001\002\000" +
    "\004\164\063\001\002\000\004\013\064\001\002\000\004" +
    "\006\065\001\002\000\014\007\067\040\022\116\020\121" +
    "\023\142\026\001\002\000\014\007\070\040\022\116\020" +
    "\121\023\142\026\001\002\000\020\007\uffee\040\uffee\075" +
    "\uffee\116\uffee\121\uffee\134\uffee\142\uffee\001\002\000\020" +
    "\007\uffef\040\uffef\075\uffef\116\uffef\121\uffef\134\uffef\142" +
    "\uffef\001\002\000\004\014\072\001\002\000\020\007\ufff2" +
    "\040\ufff2\075\ufff2\116\ufff2\121\ufff2\134\ufff2\142\ufff2\001" +
    "\002\000\004\040\074\001\002\000\004\163\075\001\002" +
    "\000\004\033\076\001\002\000\004\164\077\001\002\000" +
    "\004\014\100\001\002\000\004\163\101\001\002\000\004" +
    "\034\102\001\002\000\004\163\103\001\002\000\004\014" +
    "\104\001\002\000\004\163\105\001\002\000\004\070\106" +
    "\001\002\000\004\013\107\001\002\000\004\006\110\001" +
    "\002\000\014\007\112\040\022\116\020\121\023\142\026" +
    "\001\002\000\014\007\113\040\022\116\020\121\023\142" +
    "\026\001\002\000\020\007\ufff0\040\ufff0\075\ufff0\116\ufff0" +
    "\121\ufff0\134\ufff0\142\ufff0\001\002\000\020\007\ufff1\040" +
    "\ufff1\075\ufff1\116\ufff1\121\ufff1\134\ufff1\142\ufff1\001\002" +
    "\000\004\002\001\001\002\000\004\034\116\001\002\000" +
    "\004\042\117\001\002\000\004\017\120\001\002\000\004" +
    "\043\121\001\002\000\004\035\122\001\002\000\006\037" +
    "\ufffd\040\ufffd\001\002" });

  /** Access to parse-action table. */
  public short[][] action_table() {return _action_table;}

  /** <code>reduce_goto</code> table. */
  protected static final short[][] _reduce_table = 
    unpackFromStrings(new String[] {
    "\000\120\000\010\002\005\003\006\004\004\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\006" +
    "\004\007\005\011\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\014\006\023\007\020\010\027\011" +
    "\016\012\024\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\012\007\045\010\050\011\044\012\046\001\001\000\002" +
    "\001\001\000\002\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\004\013\037\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\014\006\043\007\020\010\027\011" +
    "\016\012\024\001\001\000\012\007\045\010\050\011\044" +
    "\012\046\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\014\006\065\007\020\010\027\011\016" +
    "\012\024\001\001\000\012\007\045\010\050\011\044\012" +
    "\046\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\014\006\110\007\020\010" +
    "\027\011\016\012\024\001\001\000\012\007\045\010\050" +
    "\011\044\012\046\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001" });

  /** Access to <code>reduce_goto</code> table. */
  public short[][] reduce_table() {return _reduce_table;}

  /** Instance of action encapsulation class. */
  protected CUP$Sintax$actions action_obj;

  /** Action encapsulation object initializer. */
  protected void init_actions()
    {
      action_obj = new CUP$Sintax$actions(this);
    }

  /** Invoke a user supplied parse action. */
  public java_cup.runtime.Symbol do_action(
    int                        act_num,
    java_cup.runtime.lr_parser parser,
    java.util.Stack            stack,
    int                        top)
    throws java.lang.Exception
  {
    /* call code in generated class */
    return action_obj.CUP$Sintax$do_action(act_num, parser, stack, top);
  }

  /** Indicates start state. */
  public int start_state() {return 0;}
  /** Indicates start production. */
  public int start_production() {return 0;}

  /** <code>EOF</code> Symbol index. */
  public int EOF_sym() {return 0;}

  /** <code>error</code> Symbol index. */
  public int error_sym() {return 1;}



    private Symbol s;
    
    public void syntax_error(Symbol s){
        this.s = s;
    }

    public Symbol getS(){
        return this.s;
}

}

/** Cup generated class to encapsulate user supplied action code.*/
class CUP$Sintax$actions {
  private final Sintax parser;

  /** Constructor */
  CUP$Sintax$actions(Sintax parser) {
    this.parser = parser;
  }

  /** Method with the actual generated action code. */
  public final java_cup.runtime.Symbol CUP$Sintax$do_action(
    int                        CUP$Sintax$act_num,
    java_cup.runtime.lr_parser CUP$Sintax$parser,
    java.util.Stack            CUP$Sintax$stack,
    int                        CUP$Sintax$top)
    throws java.lang.Exception
    {
      /* Symbol object for return from actions */
      java_cup.runtime.Symbol CUP$Sintax$result;

      /* select the action based on the action number */
      switch (CUP$Sintax$act_num)
        {
          /*. . . . . . . . . . . . . . . . . . . .*/
          case 21: // CICLO_SWITCH ::= SWITCH id5 ident id6 id1 CICLO_CASE id2 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("CICLO_SWITCH",8, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-6)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 20: // CICLO_CASE ::= CASE numero id8 SENTENCIA BREAK id7 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("CICLO_CASE",9, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-5)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 19: // CICLO_IF ::= IF id5 numero id23 numero id6 id1 id2 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("CICLO_IF",7, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-7)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 18: // CICLO_IF ::= IF id5 numero id23 numero id6 id1 SENTENCIA id2 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("CICLO_IF",7, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-8)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 17: // CICLO_FOR ::= FOR id5 T_dato ident id22 numero id7 ident id23 ident id7 ident PLUSPLUS id6 id1 id2 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("CICLO_FOR",6, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-15)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 16: // CICLO_FOR ::= FOR id5 T_dato ident id22 numero id7 ident id23 ident id7 ident PLUSPLUS id6 id1 SENTENCIA id2 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("CICLO_FOR",6, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-16)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 15: // DECLARACION ::= T_dato ident id7 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("DECLARACION",5, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-2)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 14: // SENTENCIA ::= SENTENCIA CICLO_SWITCH 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("SENTENCIA",4, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-1)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 13: // SENTENCIA ::= CICLO_SWITCH 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("SENTENCIA",4, ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 12: // SENTENCIA ::= CICLO_IF 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("SENTENCIA",4, ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 11: // SENTENCIA ::= SENTENCIA CICLO_IF 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("SENTENCIA",4, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-1)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 10: // SENTENCIA ::= CICLO_FOR 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("SENTENCIA",4, ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 9: // SENTENCIA ::= DECLARACION 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("SENTENCIA",4, ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 8: // SENTENCIA ::= SENTENCIA CICLO_FOR 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("SENTENCIA",4, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-1)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 7: // SENTENCIA ::= SENTENCIA DECLARACION 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("SENTENCIA",4, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-1)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 6: // INICIO ::= T_dato Main id5 id6 id1 RETURN numero id7 id2 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("INICIO",3, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-8)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 5: // INICIO ::= T_dato Main id5 id6 id1 SENTENCIA RETURN numero id7 id2 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("INICIO",3, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-9)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 4: // CARGAR ::= id26 Include id23 Libreria id10 Letra_H id24 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("CARGAR",2, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-6)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 3: // IDEN ::= CARGAR 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("IDEN",1, ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 2: // IDEN ::= IDEN CARGAR 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("IDEN",1, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-1)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 1: // Ella ::= IDEN INICIO 
            {
              Object RESULT =null;

              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("Ella",0, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-1)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          return CUP$Sintax$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 0: // $START ::= Ella EOF 
            {
              Object RESULT =null;
		int start_valleft = ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-1)).left;
		int start_valright = ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-1)).right;
		Object start_val = (Object)((java_cup.runtime.Symbol) CUP$Sintax$stack.elementAt(CUP$Sintax$top-1)).value;
		RESULT = start_val;
              CUP$Sintax$result = parser.getSymbolFactory().newSymbol("$START",0, ((java_cup.runtime.Symbol)CUP$Sintax$stack.elementAt(CUP$Sintax$top-1)), ((java_cup.runtime.Symbol)CUP$Sintax$stack.peek()), RESULT);
            }
          /* ACCEPT */
          CUP$Sintax$parser.done_parsing();
          return CUP$Sintax$result;

          /* . . . . . .*/
          default:
            throw new Exception(
               "Invalid action number found in internal parse table");

        }
    }
}

