

sig FSObject { parent: lone Dir }


sig Dir extends FSObject { 
	contents: set FSObject 
}

sig File extends FSObject {}

one sig Root extends Dir { } { 
	no parent
}

fact { all d: Dir, o: d.contents |
o.parent = d }


fact { File + Dir = FSObject }


assert acyclic {
no d: Dir | d in d.^contents }


