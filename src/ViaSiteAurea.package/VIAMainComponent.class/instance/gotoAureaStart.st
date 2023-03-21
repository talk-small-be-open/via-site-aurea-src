as yet unclassified
gotoAureaStart
	self session currentToccaunit: self session workingToccaunit.
	self coreComponent: (VIAAurStartComponent new hideFinder; yourself)