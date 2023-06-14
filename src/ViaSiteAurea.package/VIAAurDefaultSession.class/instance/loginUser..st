as yet unclassified
loginUser: aUser
	super loginUser: aUser.
	
	currentAureaCaput := aUser propertyAt: #preferredAureaCaput ifAbsent: [ 1 ].
	workingAureaCaput := currentAureaCaput.