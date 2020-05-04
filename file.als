

sig FSObject { parent: lone Dir }

sig Dir extends FSObject { 
contents: set FSObject }

sig File extends FSObject { }

one sig Root extends Dir { }

fact { File + Dir = FSObject }

fact { FSObject in Root.*contents }

fact { all d: Dir, o: d.contents | o.parent = d }

fact { no Root.parent }

assert acyclic { no d: Dir | d in d.^contents }

check acyclic for 5
