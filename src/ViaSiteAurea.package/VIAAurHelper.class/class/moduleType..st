helpers
moduleType: aModule
	| first |
	"R = Regular
	C = Commentatio
	V = Vocabolario"

	first := aModule indexCode first.
	
	^ self moduleTypeFromFirstIndex: first