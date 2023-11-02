*ViaSiteAurea
visitViaPrGlossaryLink: aGlossaryLink
	html anchor
		class: 'linkInGlossary';
		onClick: (html jsWindow call: 'glossary_internalGotoTitle' with: JSStream this with: aGlossaryLink linkString);
		with: aGlossaryLink alias