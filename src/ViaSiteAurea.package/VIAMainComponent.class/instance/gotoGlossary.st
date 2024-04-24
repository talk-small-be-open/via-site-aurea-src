as yet unclassified
gotoGlossary
"	self gotoModule: glossaryModule"
	
	| exerciser |
	exerciser := (VIAAurMainGlossaryExerciser model: glossaryModule).

"	exerciser closeAllTasksButLastUsed."
	
"	exerciser previousModule: aModule previousByIndexCode.
	exerciser nextModule: aModule nextByIndexCode."

	"Back handling"
"	aBackBoolean ifTrue: [
		exerciser previousComponent: self coreComponent ]."

	self coreComponent: exerciser