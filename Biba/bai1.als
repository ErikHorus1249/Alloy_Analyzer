abstract sig Roles{}
abstract sig Subj{label: one Roles, Write, Read : some Obj}
abstract sig Obj{label : one Roles}

one sig secret extends Roles{}
one sig unclassified extends Roles{under: secret}

one sig nhanvien, quanly extends Subj{}

one sig ngtac1, ngtac2 extends Obj{}


fact {
	nhanvien.label = unclassified
	quanly.label = secret
}

fact {
	ngtac1.label = secret
	ngtac2.label = unclassified
}

// khong viet len
fact {
	no s : Subj | s.label.under = s.Write.label
}

// khong doc xuong
fact {
	no s : Subj | s.label = s.Read.label.under
}

pred show(){}

run show
