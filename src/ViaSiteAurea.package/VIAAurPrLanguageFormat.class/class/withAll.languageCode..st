instance creation
withAll: aCollection languageCode: aString
	^ (self withAll: aCollection)
		languageCode: aString;
		yourself