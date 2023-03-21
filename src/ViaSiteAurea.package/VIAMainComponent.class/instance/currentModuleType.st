rendering
currentModuleType
	| type |
	"Either in a module ..."
	type := self currentModule ifNotNil: [:m | VIAAurHelper moduleType: m ] ifNil: [ nil ].
	
	"... or in the overview"
	(self activeCoreComponent isKindOf: VIAUnitComponent) ifTrue: [ 
		type := VIAAurHelper moduleTypeFromFirstIndex: self activeCoreComponent unitNumber
	].

	^ type