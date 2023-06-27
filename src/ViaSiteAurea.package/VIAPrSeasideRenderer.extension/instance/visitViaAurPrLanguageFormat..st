*ViaSiteAurea
visitViaAurPrLanguageFormat: aFormat
	html span
		class: 'language language-', aFormat languageCode;
		with: [super visitViaAurPrLanguageFormat: aFormat]