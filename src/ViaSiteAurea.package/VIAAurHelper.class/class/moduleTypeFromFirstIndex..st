helpers
moduleTypeFromFirstIndex: anObject
	"R = Regular
	P = Palloncini
	V = Vocabolario"
	anObject isNumber ifTrue: [ ^ 'R' ].
	^ anObject