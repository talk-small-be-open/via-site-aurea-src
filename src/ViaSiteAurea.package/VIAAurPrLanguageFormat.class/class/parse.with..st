instance creation
parse: aString with: aParser
	| innerString pillarString languageCode |
	
	"Syntax: [l blablabla]
	l = 1 char, for language"
	
	innerString := aString allButFirst: self markupBegin size.
	innerString := innerString allButLast: self markupEnd size.

	languageCode := innerString copyUpTo: Character space.
	pillarString := innerString copyAfter: Character space.
	
	"unmatched syntax, fallback to simple text"
	(pillarString isEmpty or: [ languageCode size > 1 ]) ifTrue: [
		^ (PRText content: aString)
	].
	
	^ self withAll: (aParser parseTopText: pillarString) languageCode: languageCode.