actions
gotoSearchModule
	"Start MIT Finder"
	self coreComponent: VIAAurStartComponent new showFinder; yourself.

"	self showModuleFinder"
"	self coreComponent: VIAModuleSearchComponent newQuery onAnswer: [:module |
		module ifNotNil: [self gotoModule: module ]]"