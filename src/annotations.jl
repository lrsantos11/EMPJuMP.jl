"""
Disjunction [chull [big eps] | bigM [big eps threshold] | indic]
             [NOT] var|* [NOT] {equ} {ELSEIF [NOT] var|* [NOT] {equ}} [ELSE [NOT] {equ}]

             Default [chull [big eps] | bigM [big eps threshold] | indic]
 

 ParallelStep1 {equ|*}
 
 AdjustEqu equ abs|sqr|maxz|... {weight}
 
 ModelType MCP|NLP|MIP|...

 BiLevel {var} {MAX|MIN obj {var|*} {[-] equ}} {VI {var|*} {[-] equ var} {[-] equ}}
               {DualVar {var [-] equ}}
 
Equilibrium {Implicit {var equ}} {VIsol {equ}} 
             {MAX|MIN obj {var|*} {[-] equ}} {VI {var|*} {[-] equ var} {[-] equ}}
             {DualVar {var [-] equ}}
             
 VI {var|*} {[-] equ var} {[-] equ}
 
 DualEqu {[-] equ var}
 
 DualVar {var [-] equ}

"""

