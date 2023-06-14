as yet unclassified
workingAureaCaput: anObject
	anObject isNumber ifTrue: [
		| number |
		number := anObject asInteger.
		workingAureaCaput := number.
	
		self user propertyAt: #preferredAureaCaput put: number ]