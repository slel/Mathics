(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
Int[sin[e_.+f_.*x_]^m_*(a_+b_.*tan[e_.+f_.*x_])^n_,x_Symbol] :=
  b/f*Subst[Int[x^m*(a+x)^n/(b^2+x^2)^(m/2+1),x],x,b*Tan[e+f*x]] /;
FreeQ[{a,b,e,f,n},x] && IntegerQ[m/2]


(* ::Code:: *)
Int[sin[e_.+f_.*x_]^m_.*(a_+b_.*tan[e_.+f_.*x_])^n_.,x_Symbol] :=
  Int[Expand[Sin[e+f*x]^m*(a+b*Tan[e+f*x])^n,x],x] /;
FreeQ[{a,b,e,f},x] && IntegerQ[(m-1)/2] && IGtQ[n,0]


(* ::Code:: *)
Int[sin[e_.+f_.*x_]^m_.*(a_+b_.*tan[e_.+f_.*x_])^n_.,x_Symbol] :=
  Int[Sin[e+f*x]^m*(a*Cos[e+f*x]+b*Sin[e+f*x])^n/Cos[e+f*x]^n,x] /;
FreeQ[{a,b,e,f},x] && IntegerQ[(m-1)/2] && ILtQ[n,0] && (LtQ[m,5] && GtQ[n,-4] || EqQ[m,5] && EqQ[n,-1])


(* ::Code:: *)
Int[(d_.*csc[e_.+f_.*x_])^m_*(a_.+b_.*tan[e_.+f_.*x_])^n_.,x_Symbol] :=
  (d*Csc[e+f*x])^FracPart[m]*(Sin[e+f*x]/d)^FracPart[m]*Int[(a+b*Tan[e+f*x])^n/(Sin[e+f*x]/d)^m,x] /;
FreeQ[{a,b,d,e,f,m,n},x] && Not[IntegerQ[m]]


(* ::Code:: *)
Int[cos[e_.+f_.*x_]^m_.*sin[e_.+f_.*x_]^p_.*(a_+b_.*tan[e_.+f_.*x_])^n_.,x_Symbol] :=
  Int[Cos[e+f*x]^(m-n)*Sin[e+f*x]^p*(a*Cos[e+f*x]+b*Sin[e+f*x])^n,x] /;
FreeQ[{a,b,e,f,m,p},x] && IntegerQ[n]


(* ::Code:: *)
Int[sin[e_.+f_.*x_]^m_.*cos[e_.+f_.*x_]^p_.*(a_+b_.*cot[e_.+f_.*x_])^n_.,x_Symbol] :=
  Int[Sin[e+f*x]^(m-n)*Cos[e+f*x]^p*(a*Sin[e+f*x]+b*Cos[e+f*x])^n,x] /;
FreeQ[{a,b,e,f,m,p},x] && IntegerQ[n]



