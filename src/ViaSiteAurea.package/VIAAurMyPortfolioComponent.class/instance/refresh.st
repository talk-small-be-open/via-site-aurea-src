accessing
refresh
	"Grouped by unita"
	
	self currentPortfolio isEmpty ifFalse: [
		groupedExercises := self currentPortfolio exercisesByIndexCode.
		
		"Special case: Glossary is to be ignored"
		groupedExercises removeKey: (VIAIndexCode fromString: 'G').
		
		extraExercises := OrderedCollection new.
		extraExercises addAll: (groupedExercises removeKey: (VIAIndexCode fromString: 'C') ifAbsent: [ #() ]).
		extraExercises addAll: (groupedExercises removeKey: (VIAIndexCode fromString: 'V') ifAbsent: [ #() ]).

		currentUnit := groupedExercises keys max.
		currentUnitExercises := (groupedExercises removeKey: currentUnit ifAbsent: [ #() ])
	]