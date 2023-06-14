initialization
initialize
	super initialize.

	"Von User voreinstellen"
	selectedAureaCaput := self session currentAureaCaput.
	search1 := selectedAureaCaput ifNil: [ '' ] ifNotNil: [ :i | i asString].
	search2 := ''.
	
	searchQuery := VIAModuleSearchQuery new.
	searchQuery website: self website.

	self addForm removeButtons.
	
	self addContainerDiv.