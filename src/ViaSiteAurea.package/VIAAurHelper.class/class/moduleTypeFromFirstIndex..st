helpers
moduleTypeFromFirstIndex: anObject
	"R = Regular
	C = Commentatio
	V = Vocabolario"
	anObject isNumber ifTrue: [ ^ 'R' ].
	^ anObject