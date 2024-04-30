initialization
initialize
	super initialize.
	
	self addContainerDiv.
	
	self initializeModules.
	
	self session currentAureaCaput: unitNumber.
	
	showProgress := (VIAAurHelper isVocabulaCode: unitNumber) not.