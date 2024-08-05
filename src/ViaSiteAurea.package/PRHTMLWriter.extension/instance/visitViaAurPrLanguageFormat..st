*ViaSiteAurea
visitViaAurPrLanguageFormat: aFormat
	canvas tag
		name: 'span';
		parameterAt: 'class' put: ('language language-', aFormat languageCode);
		with: [super visitViaAurPrLanguageFormat: aFormat]