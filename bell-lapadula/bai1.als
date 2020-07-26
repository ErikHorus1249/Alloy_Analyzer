abstract sig classification{}

one sig classified extends classification{}
one sig unclassified extends classification{}

abstract sig user{level:one classification, 
				r,w:set object}
sig user1, user2 extends user{}

abstract sig object{sec:one classification}
sig object1, object2 extends object{} 

fact policy1{no ((classified.~sec).~r & unclassified.~level)}
fact policy2{no ((unclassified.~sec).~w & classified.~level)}

pred viphamp1(){
	user1.level = unclassified
	some user1.r
	classified in object2.sec
	object2 in user1.r
}

pred tuanthu(){
	user1.level = unclassified
	user2.level = classified
	some user1.r
	some user1.w
	some user2.r
	some user2.w
	classified in object2.sec	
	unclassified in object1.sec
	object1 in user1.r
	object1 in user2.r
	object2 in user1.w
	
}
/* run viphamp1*/

run tuanthu
