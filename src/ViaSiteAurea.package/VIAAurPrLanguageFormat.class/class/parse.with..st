instance creation
parse: aString with: aParser
	| string languageCode |
	string := aString allButFirst: self markupBegin size.
	languageCode := string copyUpTo: Character space.
	string := string copyAfter: Character space.
	string := string allButLast: self markupEnd size.
	
	^ self withAll: (aParser parseTopText: string) languageCode: languageCode.