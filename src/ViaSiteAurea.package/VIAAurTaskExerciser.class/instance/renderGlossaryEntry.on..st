rendering-visitor
renderGlossaryEntry: aGlossaryEntry on: html
	html tableRow
		class: 'glossaryEntry';
		id: aGlossaryEntry htmlId;
		class: 'section' if: aGlossaryEntry isSection;
		with: [ 
			html tableData class: 'title'; with: aGlossaryEntry title.
			html tableData class: 'description'; with: [ 
				html pillar: aGlossaryEntry description pillarDocument ] ]