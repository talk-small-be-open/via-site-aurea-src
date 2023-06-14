as yet unclassified
currentAureaCaput: aNumberOrString
	currentAureaCaput := aNumberOrString.
	
	aNumberOrString isNumber ifTrue: [
		self workingAureaCaput: aNumberOrString asInteger ]