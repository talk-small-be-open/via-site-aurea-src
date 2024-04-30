rendering
renderUnitLabel: aUnitCode on: html
	aUnitCode isNumber ifTrue: [
		html sT: 'aurea:caput'.
		html space.
		html capitalis: (VIAAurHelper dec2Roman: aUnitCode).
		^ self
	].

	(self isCommentatioCode: aUnitCode) ifTrue: [ 
		html sT: 'aurea:commentatio'.
		^ self
	].

	(self isVocabulaCode: aUnitCode) ifTrue: [ 
		html sT: 'aurea:vocabula'.
		^ self
	].

	(self isGlossaryCode: aUnitCode) ifTrue: [ 
		html sT: 'aurea:glossary'.
		^ self
	].
