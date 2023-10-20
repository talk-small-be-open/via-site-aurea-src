initialization
initializeModules
	
	modules := self wd findPublicModulesByFirstIndexCode: unitNumber.
	modules := modules select: [ :each | each canView: self currentUser ].
	modules := modules sortedBy: [ :each | each indexCode ].