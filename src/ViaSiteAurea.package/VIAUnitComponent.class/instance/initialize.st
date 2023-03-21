initialization
initialize
	super initialize.
	
	self addContainerDiv addClass: (VIAAurHelper toccamoduleCssOfToccaunit: unitNumber).
	
	self initializeModules.
	
	self session currentToccaunit: unitNumber.
	
	showProgress := (VIAAurHelper isVocabolarioCode: unitNumber) not.