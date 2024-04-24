initialization
initialize

	super initialize.
	
	self addContainerDiv. "addClass: (VIATocHelper toccamoduleCssOfToccaunit: self session currentToccaunit).
" 
	glossaryModule := self wd findModuleByIndexCode: 'G.1'.

	self beCheckaliveSession