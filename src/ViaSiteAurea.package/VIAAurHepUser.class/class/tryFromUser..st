as yet unclassified
tryFromUser: aUser
	"Try to create external user object, from the details of the normal user"

	| hepId |
	aUser hasSocialId ifFalse: [ ^ nil ].
	
	hepId := aUser socialIds first.

	^ self new
		id: hepId;
		yourself