as yet unclassified
gotoSmartUnit

	self session workingAureaCaput ifNotBlank: [ :unit |
		self gotoAureaCaput: unit. ^ self ].
	
	self gotoAureaCaput: 1