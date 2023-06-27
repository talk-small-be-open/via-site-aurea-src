*ViaSiteAurea
visitViaAurPrLanguageFormat: aFormat
	canvas tag
		name: 'span';
		class: 'language language-', aFormat languageCode;
		with: [super visitViaAurPrLanguageFormat: aFormat]