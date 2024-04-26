helpers
moduleTypeFromFirstIndex: anObject
	"R = Regular
	C = Commentatio
	V = Vocabulo
	G = Glossar"
	anObject isNumber ifTrue: [ ^ 'R' ].
	^ anObject