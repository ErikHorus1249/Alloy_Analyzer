abstract sig classification{}

one sig classified extends classification{}
one sig unclassified extends classification{}

sig user{level:one classification,
				r,w:set object}
sig object{sec:one classification}



fact policy1{no ((classified.~sec).~r & unclassified.~level)}
fact policy2{no ((unclassified.~sec).~w & classified.~level)}

one sig usera extends user{}{
level = classified
r = objecta
}
one sig objecta extends object{}{
sec = unclassified
} 

pred show{}

run show 

