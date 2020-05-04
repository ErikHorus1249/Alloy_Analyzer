
abstract sig ND{}

one sig A, B, C extends ND{}

one sig GiuTrau in ND{}

pred A1 { C in GiuTrau }
pred A2 { A not in GiuTrau}

fact {( A1 and not A2) or ( A2 and not A1)}


pred B1 { A in GiuTrau }
pred B2 { C not in GiuTrau}

fact {( B1 and not B2) or ( B2 and not B1)}


pred show{}
run show
