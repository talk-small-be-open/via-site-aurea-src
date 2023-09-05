helpers
moduleType: aModule
	| first |
	"R = Regular
	C = Commentatio
	V = Vocabulo"

	first := aModule indexCode first.
	
	^ self moduleTypeFromFirstIndex: first