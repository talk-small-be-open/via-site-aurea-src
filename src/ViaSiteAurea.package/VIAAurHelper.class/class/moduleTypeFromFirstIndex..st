helpers
moduleTypeFromFirstIndex: anObject
	"R = Regular
	C = Commentatio
	V = Vocabulo"
	anObject isNumber ifTrue: [ ^ 'R' ].
	^ anObject