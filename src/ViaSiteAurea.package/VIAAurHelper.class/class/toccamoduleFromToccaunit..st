deprecated
toccamoduleFromToccaunit: anObject
	"OPTIMIZE: Commentatio und Vocabulo sind eher eigene toccamoduls als P und V, statt 0"
	anObject isNumber ifFalse: [ ^ anObject "^0" ].
	
	^ (anObject + 1) // 2