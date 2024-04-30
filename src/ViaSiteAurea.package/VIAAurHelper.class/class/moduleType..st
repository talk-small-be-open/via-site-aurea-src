helpers
moduleType: aModule
	| first |
	"R = Regular
	C = Commentatio
	V = Vocabula"

	first := aModule indexCode first.
	
	^ self moduleTypeFromFirstIndex: first