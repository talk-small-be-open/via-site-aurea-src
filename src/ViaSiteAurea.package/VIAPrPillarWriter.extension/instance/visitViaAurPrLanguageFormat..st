*ViaSiteAurea
visitViaAurPrLanguageFormat: aViaAurPrLanguageFormat
	canvas
		raw: aViaAurPrLanguageFormat class markupBegin;
		nextPutAll: aViaAurPrLanguageFormat languageCode;
		space.

	super visitViaAurPrLanguageFormat: aViaAurPrLanguageFormat.
	
	canvas raw: aViaAurPrLanguageFormat class markupEnd