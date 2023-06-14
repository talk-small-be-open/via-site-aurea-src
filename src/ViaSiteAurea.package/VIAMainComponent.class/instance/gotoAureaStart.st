as yet unclassified
gotoAureaStart
	self session currentAureaCaput: self session workingAureaCaput.
	self coreComponent: (VIAAurStartComponent new hideFinder; yourself)