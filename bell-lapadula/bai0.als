sig FSObject {parent : lone Dir}

sig Dir extends FSObject{content : set FSObject}

sig File extends FSObject{}

fact {
	all d : Dir, o : d.content | o.parent = d
}

fact { Dir + File =  FSObject}

one sig Root extends Dir{}{no parent}

fact {FSObject in Root.*content}

assert sameParent{
	all obj, p : (FSObject - Root) | (obj.parent = p.parent)
}

check sameParent for 3
