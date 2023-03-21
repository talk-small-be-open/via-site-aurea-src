signalling
signalError: aString
	
	self logError: ('hep user error: ', aString).
	
	VIAAurHepUserError signal: aString