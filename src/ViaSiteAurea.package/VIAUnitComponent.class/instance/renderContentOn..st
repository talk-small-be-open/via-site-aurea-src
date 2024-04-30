rendering
renderContentOn: html
	html div class: 'unitNavigation'; with: [
		html span class: 'left'; with: [
			html anchor
				callback: [ self gotoUp ];
				with: [html iconBackUp]
		].
		html span.
		html span class: 'right'.
	].

	html ukContainer: [
		
		self renderLegendOn: html.

		html heading level1; with: [
			VIAAurHelper renderUnitLabel: unitNumber on: html.
		].

		
		html ukList class: 'modulesList'; with: [
			modules do: [ :each |
				| tag |
				tag := html listItem
	"					class: 'inWork' if: (self currentPortfolio isInWorkModule: each);
					class: 'finished' if: (self currentPortfolio isDoneModule: each);"
	"					class: 'mothertongue' if: each isMothertongue;"
					yourself.
"				each levelTag ifNotNil: [ :lt |
					tag class: ('level-', lt code) ]."
				
				tag with: [
					html div class: 'moduleEntry'; with: [
						html anchor
							class: 'gotoModule';
							extraPath: each slugPath;
							callback: [ self gotoModule: each];
							with: [
								self renderModule: each on: html ].
					]
		]]]]