rendering
renderContentOn: html

	showFinder ifTrue: [
		html render: finder ].

	html ukContainer: [

		self renderLastUsedOn: html.

		html heading level2; with: [ html t: 'myHome:units'].

		"All caputs 1-..."
		html ukGrid
			class: 'caputs uk-child-width-1-3';
			with: [
				| first second third |
"				all := VIAAurHelper aureaCaputs.
				half := all size // 2."
				first := 1 to: 4.
				second := 5 to: 8.
				third := 9 to: 12.
				
				{ first. second. third } do: [ :group |
					html ukList class: 'caputsList'; with: [
						group do: [ :index |
							html listItem
"								class: 'caput';"
								with: [
									html div class: 'caputEntry'; with: [
										html anchor
											class: 'gotoCaput';
											callback: [ self gotoAureaCaput: index ];
											with: [
												html span class: 'entryTitle'; with: [
													html sT: 'myHome:unit'.
													html space.
													html capitalis: (VIAAurHelper dec2Roman: index) ].
												html span class: 'entryGoAhead uk-visible@l'; with: [
													html iconGoAhead ]
											].
									].
								].
		]]]].
	
		html heading level2; with: [ html t: 'myHome:extras'].
		html ukGrid
			class: 'uk-child-width-1-2 aureaExtras';
			with: [
				html div class: 'aureaExtra'; with: [
					html div
						class: 'extraEntry';
						with: [
							html anchor
								class: 'gotoExtra';
								callback: [ self gotoAureaCaput: 'C' ];
								with: [
									html span class: 'entryTitle'; with: [
										html sT: 'myHome:commentatio' ].
									html span class: 'entryGoAhead uk-visible@l'; with: [
										html iconGoAhead ]
					]]
				].
				html div class: 'aureaExtra'; with: [
					html div
						class: 'extraEntry';
						with: [
							html anchor
								class: 'gotoExtra';
								callback: [ self gotoAureaCaput: 'V' ];
								with: [
									html span class: 'entryTitle'; with: [
										html sT: 'myHome:vocabula' ].
									html span class: 'entryGoAhead uk-visible@l'; with: [
										html iconGoAhead
									].
								]
						].
		]]]