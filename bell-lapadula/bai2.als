abstract sig classifition{}
one sig unclassified, classified, secret, topsecret extends classifition{}

sig user{ level: one classifition, r, w: some object}
one sig user1, user2, user3, user4 extends user{}

sig object{sec: one classifition}
one sig object1, object2, object3, object4 extends object{}



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
	user1.level = topsecret
	user2.level = secret
	user3.level = classified
	user4.level = unclassified
	some user1.r
	some user1.w
	some user2.r
	some user2.w
	unclassified in object1.sec
	classified in object2.sec
	secret in object3.sec
	topsecret in object4.sec
	object3 in user1.r
	object1 in user1.r
	object2 in user1.r
	 
	object3 in user2.w
}


run tuanthu
