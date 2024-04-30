helpers
moduleTypeFromFirstIndex: anObject
	"R = Regular
	C = Commentatio
	V = Vocabula
	G = Glossar"
	anObject isNumber ifTrue: [ ^ 'R' ].
	^ anObject