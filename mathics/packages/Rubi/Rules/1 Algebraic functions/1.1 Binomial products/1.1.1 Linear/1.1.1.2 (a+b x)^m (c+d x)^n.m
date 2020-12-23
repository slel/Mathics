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
Int[Fx_.*(a_+b_.*x_^n_.)^p_.*(c_+d_.*x_^n_.)^p_.,x_Symbol] :=
  Int[Fx*(a*c+b*d*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,n,p},x] && EqQ[b*c+a*d,0] && (IntegerQ[p] || GtQ[a,0] && GtQ[c,0])


(* ::Code:: *)
Int[Fx_.*(a_+b_.*x_^n_.)^p_*(c_+d_.*x_^n_.)^q_,x_Symbol] :=
  Int[Fx*(a+b*x^n)^Simplify[p-q]*(a*c+b*d*x^(2*n))^q,x] /;
FreeQ[{a,b,c,d,n,p,q},x] && EqQ[b*c+a*d,0] && GtQ[a,0] && GtQ[c,0] && Not[IntegerQ[p]] && IGtQ[Simplify[p-q],0]


(* ::Code:: *)
Int[Fx_.*(a_+b_.*x_^n_.)^p_.*(c_+d_.*x_^n_.)^q_.,x_Symbol] :=
  (b/d)^p \[Star] Int[Fx*(c+d*x^n)^(p+q),x] /;
FreeQ[{a,b,c,d,n,q},x] && EqQ[b*c-a*d,0] && IntegerQ[p] && Not[IntegerQ[q] && SimplerQ[a+b*x^n,c+d*x^n]]


(* ::Code:: *)
Int[Fx_.*(a_+b_.*x_^n_.)^p_*(c_+d_.*x_^n_.)^q_,x_Symbol] :=
  (b/d)^p \[Star] Int[Fx*(c+d*x^n)^(p+q),x] /;
FreeQ[{a,b,c,d,n,p,q},x] && EqQ[b*c-a*d,0] && GtQ[b/d,0] && Not[SimplerQ[a+b*x^n,c+d*x^n]]


(* ::Code:: *)
Int[Fx_.*(a_+b_.*x_^n_.)^p_*(c_+d_.*x_^n_.)^q_,x_Symbol] :=
  (b/d)^IntPart[p]*(a+b*x^n)^FracPart[p]/(c+d*x^n)^FracPart[p] \[Star] Int[Fx*(c+d*x^n)^(p+q),x] /;
FreeQ[{a,b,c,d,n,p,q},x] && EqQ[b*c-a*d,0] && Not[SimplerQ[a+b*x^n,c+d*x^n]]


(* ::Code:: *)
Int[(a_+b_.*x_)^m_.*(c_+d_.*x_),x_Symbol] :=
  d*x*(a+b*x)^(m+1)/(b*(m+2)) /;
FreeQ[{a,b,c,d,m},x] && EqQ[a*d-b*c*(m+2),0]


(* ::Code:: *)
Int[(a_+b_.*x_)^m_.*(c_+d_.*x_)^m_.,x_Symbol] :=
  Int[(a*c+b*d*x^2)^m,x] /;
FreeQ[{a,b,c,d,m},x] && EqQ[b*c+a*d,0] && (IntegerQ[m] || GtQ[a,0] && GtQ[c,0])


(* ::Code:: *)
Int[(a_+b_.*x_)^m_*(c_+d_.*x_)^m_,x_Symbol] :=
  x*(a+b*x)^m*(c+d*x)^m/(2*m+1) + 2*a*c*m/(2*m+1) \[Star] Int[(a+b*x)^(m-1)*(c+d*x)^(m-1),x] /;
FreeQ[{a,b,c,d},x] && EqQ[b*c+a*d,0] && IGtQ[m+1/2,0]


(* ::Code:: *)
Int[1/((a_+b_.*x_)^(3/2)*(c_+d_.*x_)^(3/2)),x_Symbol] :=
  x/(a*c*Sqrt[a+b*x]*Sqrt[c+d*x]) /;
FreeQ[{a,b,c,d},x] && EqQ[b*c+a*d,0]


(* ::Code:: *)
Int[(a_+b_.*x_)^m_*(c_+d_.*x_)^m_,x_Symbol] :=
  -x*(a+b*x)^(m+1)*(c+d*x)^(m+1)/(2*a*c*(m+1)) + 
  (2*m+3)/(2*a*c*(m+1)) \[Star] Int[(a+b*x)^(m+1)*(c+d*x)^(m+1),x] /;
FreeQ[{a,b,c,d},x] && EqQ[b*c+a*d,0] && ILtQ[m+3/2,0]


(* ::Code:: *)
Int[1/(Sqrt[a_+b_.*x_]*Sqrt[c_+d_.*x_]),x_Symbol] :=
  ArcCosh[b*x/a]/(b*Sqrt[d/b]) /;
FreeQ[{a,b,c,d},x] && EqQ[b*c+a*d,0] && GtQ[a,0] && GtQ[d/b,0]


(* ::Code:: *)
Int[1/(Sqrt[a_+b_.*x_]*Sqrt[c_+d_.*x_]),x_Symbol] :=
  2/(b*Sqrt[c]) \[Star] Subst[Int[1/Sqrt[2-x^2/a],x],x,Sqrt[a+b*x]] /;
FreeQ[{a,b,c,d},x] && EqQ[b*c+a*d,0] && GtQ[c,0]


(* ::Code:: *)
Int[1/(Sqrt[a_+b_.*x_]*Sqrt[c_+d_.*x_]),x_Symbol] :=
  2 \[Star] Subst[Int[1/(b-d*x^2),x],x,Sqrt[a+b*x]/Sqrt[c+d*x]] /;
FreeQ[{a,b,c,d},x] && EqQ[b*c+a*d,0] && Not[GtQ[c,0]]


(* ::Code:: *)
Int[(a_+b_.*x_)^m_*(c_+d_.*x_)^m_,x_Symbol] :=
  (a+b*x)^FracPart[m]*(c+d*x)^FracPart[m]/(a*c+b*d*x^2)^FracPart[m] \[Star] Int[(a*c+b*d*x^2)^m,x] /;
FreeQ[{a,b,c,d,m},x] && EqQ[b*c+a*d,0] && Not[IntegerQ[2*m]]


(* ::Code:: *)
(* Int[1/((a_.+b_.*x_)*(c_.+d_.*x_)),x_Symbol] :=
  b*d/(b*c-a*d) \[Star] Int[1/(a*d+b*d*x),x] + b*d/(b*c-a*d) \[Star] Int[1/(-b*c-b*d*x),x] /;
FreeQ[{a,b,c,d},x] && PosQ[a/b-c/d] && PosQ[b*d] *)


(* ::Code:: *)
(* Int[1/((a_.+b_.*x_)*(c_.+d_.*x_)),x_Symbol] :=
  -b*d/(b*c-a*d) \[Star] Int[1/(-a*d-b*d*x),x] - b*d/(b*c-a*d) \[Star] Int[1/(b*c+b*d*x),x] /;
FreeQ[{a,b,c,d},x] && PosQ[a/b-c/d] && NegQ[b*d] *)


(* ::Code:: *)
Int[1/((a_.+b_.*x_)*(c_.+d_.*x_)),x_Symbol] :=
  b/(b*c-a*d) \[Star] Int[1/(a+b*x),x] - d/(b*c-a*d) \[Star] Int[1/(c+d*x),x] /;
FreeQ[{a,b,c,d},x]


(* ::Code:: *)
Int[(a_.+b_.*x_)^m_.*(c_.+d_.*x_)^n_,x_Symbol] :=
  (a+b*x)^(m+1)*(c+d*x)^(n+1)/((b*c-a*d)*(m+1)) /;
FreeQ[{a,b,c,d,m,n},x] && EqQ[m+n+2,0] && NeQ[m,-1]


(* ::Code:: *)
Int[(a_.+b_.*x_)^m_.*(c_.+d_.*x_)^n_.,x_Symbol] :=
  Int[ExpandIntegrand[(a+b*x)^m*(c+d*x)^n,x],x] /;
FreeQ[{a,b,c,d},x] && IGtQ[m,0] && IGtQ[m+n+2,0]


(* ::Code:: *)
Int[(a_+b_.*x_)^m_*(c_+d_.*x_)^n_,x_Symbol] :=
  (a*c+b*d*x^2)^m/(2*d*m) + a \[Star] Int[(a*c+b*d*x^2)^n,x] /;
FreeQ[{a,b,c,d,m,n},x] && EqQ[b*c+a*d,0] && EqQ[m-n,1] && GtQ[m,0] && (IntegerQ[m] || GtQ[a,0] && GtQ[c,0])


(* ::Code:: *)
Int[(a_.+b_.*x_)^m_*(c_.+d_.*x_)^n_,x_Symbol] :=
  (a+b*x)^(m+1)*(c+d*x)^n/(b*(m+1)) - 
  d*n/(b*(m+1)) \[Star] Int[(a+b*x)^(m+1)*(c+d*x)^(n-1),x] /;
FreeQ[{a,b,c,d,n},x] && ILtQ[m,-1] && FractionQ[n] && GtQ[n,0]


(* ::Code:: *)
Int[(a_.+b_.*x_)^m_*(c_.+d_.*x_)^n_,x_Symbol] :=
  (a+b*x)^(m+1)*(c+d*x)^(n+1)/((b*c-a*d)*(m+1)) - 
  d*(m+n+2)/((b*c-a*d)*(m+1)) \[Star] Int[(a+b*x)^(m+1)*(c+d*x)^n,x] /;
FreeQ[{a,b,c,d,n},x] && ILtQ[m,-1] && FractionQ[n] && LtQ[n,0]


(* ::Code:: *)
Int[(a_.+b_.*x_)^m_.*(c_.+d_.*x_)^n_.,x_Symbol] :=
  Int[ExpandIntegrand[(a+b*x)^m*(c+d*x)^n,x],x] /;
FreeQ[{a,b,c,d,n},x] && IGtQ[m,0] && 
  (Not[IntegerQ[n]] || EqQ[c,0] && LeQ[7*m+4*n+4,0] || LtQ[9*m+5*(n+1),0] || GtQ[m+n+2,0])


(* ::Code:: *)
Int[(a_+b_.*x_)^m_*(c_.+d_.*x_)^n_.,x_Symbol] :=
  Int[ExpandIntegrand[(a+b*x)^m*(c+d*x)^n,x],x] /;
FreeQ[{a,b,c,d},x] && ILtQ[m,0] && IntegerQ[n] && Not[IGtQ[n,0] && LtQ[m+n+2,0]]


(* ::Code:: *)
Int[(a_.+b_.*x_)^m_*(c_.+d_.*x_)^n_,x_Symbol] :=
  (a+b*x)^(m+1)*(c+d*x)^(n+1)/((b*c-a*d)*(m+1)) - 
  d*Simplify[m+n+2]/((b*c-a*d)*(m+1)) \[Star] Int[(a+b*x)^Simplify[m+1]*(c+d*x)^n,x] /;
FreeQ[{a,b,c,d,m,n},x] && ILtQ[Simplify[m+n+2],0] && NeQ[m,-1] && 
  Not[LtQ[m,-1] && LtQ[n,-1] && (EqQ[a,0] || NeQ[c,0] && LtQ[m-n,0] && IntegerQ[n])] && 
  (SumSimplerQ[m,1] || Not[SumSimplerQ[n,1]])


(* ::Code:: *)
Int[1/((a_+b_.*x_)^(9/4)*(c_+d_.*x_)^(1/4)),x_Symbol] :=
  -4/(5*b*(a+b*x)^(5/4)*(c+d*x)^(1/4)) - d/(5*b) \[Star] Int[1/((a+b*x)^(5/4)*(c+d*x)^(5/4)),x] /;
FreeQ[{a,b,c,d},x] && EqQ[b*c+a*d,0] && NegQ[a^2*b^2]


(* ::Code:: *)
Int[(a_.+b_.*x_)^m_*(c_.+d_.*x_)^n_,x_Symbol] :=
  (a+b*x)^(m+1)*(c+d*x)^n/(b*(m+1)) - 
  d*n/(b*(m+1)) \[Star] Int[(a+b*x)^(m+1)*(c+d*x)^(n-1),x] /;
FreeQ[{a,b,c,d},x] && GtQ[n,0] && LtQ[m,-1] && Not[IntegerQ[n] && Not[IntegerQ[m]]] && 
  Not[ILeQ[m+n+2,0] && (FractionQ[m] || GeQ[2*n+m+1,0])] && IntLinearQ[a,b,c,d,m,n,x]


(* ::Code:: *)
Int[1/((a_+b_.*x_)^(5/4)*(c_+d_.*x_)^(1/4)),x_Symbol] :=
  -2/(b*(a+b*x)^(1/4)*(c+d*x)^(1/4)) + c \[Star] Int[1/((a+b*x)^(5/4)*(c+d*x)^(5/4)),x] /;
FreeQ[{a,b,c,d},x] && EqQ[b*c+a*d,0] && NegQ[a^2*b^2]


(* ::Code:: *)
Int[(a_+b_.*x_)^m_*(c_+d_.*x_)^n_,x_Symbol] :=
  (a+b*x)^(m+1)*(c+d*x)^n/(b*(m+n+1)) + 
  2*c*n/(m+n+1) \[Star] Int[(a+b*x)^m*(c+d*x)^(n-1),x] /;
FreeQ[{a,b,c,d},x] && EqQ[b*c+a*d,0] && IGtQ[m+1/2,0] && IGtQ[n+1/2,0] && LtQ[m,n]


(* ::Code:: *)
Int[(a_.+b_.*x_)^m_*(c_.+d_.*x_)^n_,x_Symbol] :=
  (a+b*x)^(m+1)*(c+d*x)^n/(b*(m+n+1)) + 
  n*(b*c-a*d)/(b*(m+n+1)) \[Star] Int[(a+b*x)^m*(c+d*x)^(n-1),x] /;
FreeQ[{a,b,c,d},x] && GtQ[n,0] && NeQ[m+n+1,0] && 
  Not[IGtQ[m,0] && (Not[IntegerQ[n]] || GtQ[m,0] && LtQ[m-n,0])] && 
  Not[ILtQ[m+n+2,0]] && IntLinearQ[a,b,c,d,m,n,x]


(* ::Code:: *)
Int[(a_.+b_.*x_)^m_*(c_.+d_.*x_)^n_,x_Symbol] :=
  (a+b*x)^(m+1)*(c+d*x)^(n+1)/((b*c-a*d)*(m+1)) - 
  d*(m+n+2)/((b*c-a*d)*(m+1)) \[Star] Int[(a+b*x)^(m+1)*(c+d*x)^n,x] /;
FreeQ[{a,b,c,d,n},x] && LtQ[m,-1] && 
  Not[LtQ[n,-1] && (EqQ[a,0] || NeQ[c,0] && LtQ[m-n,0] && IntegerQ[n])] && IntLinearQ[a,b,c,d,m,n,x]


(* ::Code:: *)
Int[1/((a_.+b_.*x_)*(c_.+d_.*x_)^(1/3)),x_Symbol] :=
  With[{q=Rt[(b*c-a*d)/b,3]},
  -1/(2*q) \[Star] Int[1/(a+b*x),x] - 
  3/(2*q) \[Star] Subst[Int[x*(2*q+x)/(b*c-a*d-b*x^3),x],x,(c+d*x)^(1/3)]] /;
FreeQ[{a,b,c,d},x]


(* ::Code:: *)
Int[1/((a_.+b_.*x_)*(c_.+d_.*x_)^(2/3)),x_Symbol] :=
  With[{q=Rt[(b*c-a*d)/b,3]^2},
  -1/(2*q) \[Star] Int[1/(a+b*x),x] - 
  3/(2*q) \[Star] Subst[Int[(2*q+x^2)/(b*c-a*d-b*x^3),x],x,(c+d*x)^(1/3)]] /;
FreeQ[{a,b,c,d},x]


(* ::Code:: *)
Int[(c_.+d_.*x_)^n_/(a_.+b_.*x_),x_Symbol] :=
  With[{k=Denominator[n]},
  k \[Star] Subst[Int[x^(k*(n+1)-1)/(-b*c+a*d+b*x^k),x],x,(c+d*x)^(1/k)]] /;
FreeQ[{a,b,c,d},x] && LtQ[-1,n,0]


(* ::Code:: *)
Int[1/(Sqrt[a_.+b_.*x_]*Sqrt[c_+d_.*x_]),x_Symbol] :=
  Int[1/Sqrt[a*c-b*(a-c)*x-b^2*x^2],x] /;
FreeQ[{a,b,c,d},x] && EqQ[b+d,0] && GtQ[a+c,0]


(* ::Code:: *)
Int[1/(Sqrt[b_.*x_]*Sqrt[c_+d_.*x_]),x_Symbol] :=
  2/b \[Star] Subst[Int[1/Sqrt[c+d*x^2/b],x],x,Sqrt[b*x]] /;
FreeQ[{b,c,d},x] && GtQ[c,0]


(* ::Code:: *)
Int[1/(Sqrt[a_+b_.*x_]*Sqrt[c_.+d_.*x_]),x_Symbol] :=
  2/b \[Star] Subst[Int[1/Sqrt[c-a*d/b+d*x^2/b],x],x,Sqrt[a+b*x]] /;
FreeQ[{a,b,c,d},x] && GtQ[c-a*d/b,0] && (Not[GtQ[a-c*b/d,0]] || PosQ[b])


(* ::Code:: *)
Int[1/(Sqrt[b_.*x_]*Sqrt[c_+d_.*x_]),x_Symbol] :=
  2 \[Star] Subst[Int[1/(b-d*x^2),x],x,Sqrt[b*x]/Sqrt[c+d*x]] /;
FreeQ[{b,c,d},x] && Not[GtQ[c,0]]


(* ::Code:: *)
Int[1/(Sqrt[a_+b_.*x_]*Sqrt[c_+d_.*x_]),x_Symbol] :=
  2 \[Star] Subst[Int[1/(b-d*x^2),x],x,Sqrt[a+b*x]/Sqrt[c+d*x]] /;
FreeQ[{a,b,c,d},x] && Not[GtQ[c-a*d/b,0]]


(* ::Code:: *)
Int[1/((a_.+b_.*x_)^(1/3)*(c_.+d_.*x_)^(2/3)),x_Symbol] :=
  With[{q=Rt[d/b,3]},
  -Sqrt[3]*q/d*ArcTan[2*q*(a+b*x)^(1/3)/(Sqrt[3]*(c+d*x)^(1/3))+1/Sqrt[3]] - 
  q/(2*d)*Log[c+d*x] - 
  3*q/(2*d)*Log[1-q*(a+b*x)^(1/3)/(c+d*x)^(1/3)]] /;
FreeQ[{a,b,c,d},x]


(* ::Code:: *)
(* Int[(a_.+b_.*x_)^m_*(c_+d_.*x_)^m_,x_Symbol] :=
  (a+b*x)^m*(c+d*x)^m/(a*c+(b*c+a*d)*x+b*d*x^2)^m \[Star] Int[(a*c+(b*c+a*d)*x+b*d*x^2)^m,x] /;
FreeQ[{a,b,c,d},x] && LtQ[-1,m,0] && LeQ[3,Denominator[m],4] && AtomQ[b*c+a*d] *)


(* ::Code:: *)
Int[(a_.+b_.*x_)^m_*(c_.+d_.*x_)^n_,x_Symbol] :=
  With[{k=Denominator[m]},
  k/b \[Star] Subst[Int[x^(k*(m+1)-1)*(c-a*d/b+d*x^k/b)^n,x],x,(a+b*x)^(1/k)]] /;
FreeQ[{a,b,c,d},x] && LtQ[-1,m,0] && LtQ[-1,n,0] && LeQ[Denominator[n],Denominator[m]] && IntLinearQ[a,b,c,d,m,n,x]


(* ::Code:: *)
Int[(a_.+b_.*x_)^m_*(c_.+d_.*x_)^n_.,x_Symbol] :=
  (b*c-a*d)^n*(a+b*x)^(m+1)/(b^(n+1)*(m+1))*Hypergeometric2F1[-n,m+1,m+2,-(d*(a+b*x)/(b*c-a*d))] /;
FreeQ[{a,b,c,d,m,n},x] && Not[IntegerQ[m]] && ILtQ[n,0]


(* ::Code:: *)
Int[(b_.*x_)^m_*(c_+d_.*x_)^n_.,x_Symbol] :=
  c^n*(b*x)^(m+1)/(b*(m+1))*Hypergeometric2F1[-n,m+1,m+2,-d*x/c] /;
FreeQ[{b,c,d,m,n},x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && GtQ[c,0] && (ConstantQ[m] || Not[ConstantQ[n]])


(* ::Code:: *)
Int[(a_+b_.*x_)^m_*(d_.*x_)^n_.,x_Symbol] :=
  (a+b*x)^(m+1)/(b*(m+1)*(b/(-a*d))^n)*Hypergeometric2F1[-n,m+1,m+2,(a+b*x)/a] /;
FreeQ[{a,b,d,m,n},x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && GtQ[-b/(a*d),0] && (ConstantQ[m] || Not[ConstantQ[n]])


(* ::Code:: *)
Int[(b_.*x_)^m_*(c_+d_.*x_)^n_,x_Symbol] :=
  c^IntPart[n]*(c+d*x)^FracPart[n]/((c+d*x)/c)^FracPart[n] \[Star] Int[(b*x)^m*(1+d*x/c)^n,x] /;
FreeQ[{b,c,d,m,n},x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && Not[GtQ[c,0]] && (ConstantQ[m] || Not[ConstantQ[n]])


(* ::Code:: *)
Int[(a_+b_.*x_)^m_*(d_.*x_)^n_,x_Symbol] :=
  (-a*d/b)^IntPart[n]*(d*x)^FracPart[n]/(-b*x/a)^FracPart[n] \[Star] Int[(a+b*x)^m*(-b*x/a)^n,x] /;
FreeQ[{a,b,d,m,n},x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && Not[GtQ[-b/(a*d),0]] && (ConstantQ[m] || Not[ConstantQ[n]])


(* ::Code:: *)
Int[(a_+b_.*x_)^m_*(c_+d_.*x_)^n_.,x_Symbol] :=
  (a+b*x)^(m+1)/(b*(m+1)*(b/(b*c-a*d))^n)*Hypergeometric2F1[-n,m+1,m+2,-(d*(a+b*x)/(b*c-a*d))] /;
FreeQ[{a,b,c,d,m,n},x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && GtQ[Simplify[b/(b*c-a*d)],0] && (ConstantQ[m] || Not[ConstantQ[n]])


(* ::Code:: *)
Int[(a_+b_.*x_)^m_*(c_+d_.*x_)^n_,x_Symbol] :=
  (c+d*x)^n/(b*(c+d*x)/(b*c-a*d))^n \[Star] Int[(a+b*x)^m*(b*c/(b*c-a*d)+b*d*x/(b*c-a*d))^n,x] /;
FreeQ[{a,b,c,d,m,n},x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && Not[GtQ[Simplify[b/(b*c-a*d)],0]] && (ConstantQ[m] || Not[ConstantQ[n]])


(* ::Code:: *)
Int[(a_.+b_.*u_)^m_.*(c_.+d_.*u_)^n_.,x_Symbol] :=
  1/Coefficient[u,x,1] \[Star] Subst[Int[(a+b*x)^m*(c+d*x)^n,x],x,u] /;
FreeQ[{a,b,c,d,m,n},x] && LinearQ[u,x] && NeQ[Coefficient[u,x,0],0]


(* ::Code:: *)
(* IntLinearQ[a,b,c,d,m,n,x] returns True iff (a+b*x)^m*(c+d*x)^n is integrable wrt x in terms of non-hypergeometric functions. *)
IntLinearQ[a_,b_,c_,d_,m_,n_,x_Symbol] :=
  IGtQ[m,0] || IGtQ[n,0] || ILtQ[m+n,-1] || 
  IntegerQ[m] && RationalQ[n] || IntegerQ[n] && RationalQ[m] || IntegerQ[m+n] && RationalQ[m] || 
  IntegersQ[4*m,4*n] || IntegersQ[2*m,6*n] || IntegersQ[6*m,2*n] (* || IntegersQ[3*m,3*n] *)
