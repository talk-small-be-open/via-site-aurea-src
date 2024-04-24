*ViaSiteAurea
visitViaPrGlossaryLink: aGlossaryLink
	html anchor
		class: 'linkInGlossary';
		onClick: (html jsWindow call: 'glossary_jumpToReference' with: JSStream this with: (VIAGlossaryEntry htmlIdFor: aGlossaryLink linkString) );
		with: aGlossaryLink alias