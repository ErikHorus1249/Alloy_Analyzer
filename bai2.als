abstract sig classification{}

one sig classified extends classification{}
one sig unclassified extends classification{}
one sig secret extends classification{}
one sig topsecret extends classification{}


abstract sig user{level:one classification, 
				r,w:set object}
sig user1, user2, user3, user4 extends user{}

abstract sig object{sec:one classification}
sig object1, object2, object3, object4, object5 extends object{} 

fact policy1{
	no ((topsecret.~sec).~r & unclassified.~level)
	no ((secret.~sec).~r & unclassified.~level)
	no ((classified.~sec).~r & unclassified.~level)

	no ((secret.~sec).~r & classified.~level)
	no ((topsecret.~sec).~r & classified.~level)

	no ((topsecret.~sec).~r & secret.~level)

}
fact policy2{

	no ((secret.~sec).~w & topsecret.~level)
	no ((classified.~sec).~w & topsecret.~level)
	no ((unclassified.~sec).~w & topsecret.~level)

	no ((classified.~sec).~w & secret.~level)
	no ((unclassified.~sec).~w & secret.~level)

	no ((unclassified.~sec).~w & classified.~level)
}


pred tuanthu(){
	user1.level = unclassified
	user2.level = classified
	user3.level = secret

	some user1.r
	some user1.w
	some user2.r
	some user2.w
	classified in object2.sec	
	unclassified in object1.sec
	secret in object3.sec
	
	object1 in user1.r
	object1 in user2.r
	object2 in user1.w
	object3 in user1.w
	object3 in user2.w
}
/* run viphamp1*/

run tuanthu
