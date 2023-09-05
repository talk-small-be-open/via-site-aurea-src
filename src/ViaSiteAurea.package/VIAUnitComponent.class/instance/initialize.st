initialization
initialize
	super initialize.
	
	self addContainerDiv. "addClass: (VIAAurHelper toccamoduleCssOfToccaunit: unitNumber)."
	
	self initializeModules.
	
	self session currentAureaCaput: unitNumber.
	
	showProgress := (VIAAurHelper isVocabuloCode: unitNumber) not.