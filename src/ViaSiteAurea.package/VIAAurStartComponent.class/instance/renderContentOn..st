rendering
renderContentOn: html

	showFinder ifTrue: [
		html render: finder ].

	html ukContainer: [

		self renderLastUsedOn: html.

		html heading level2; with: [ html t: 'myHome:units'].

		"All caputs 1-..."
		html ukGrid
			class: 'caputs uk-child-width-1-2';
			with: [
				| half all first second |
				all := VIAAurHelper aureaCaputs.
				half := all size // 2.
				first := all copyFrom: 1 to: half.
				second := all copyFrom: half+1 to: all size.
				
				{ first. second } do: [ :group |
					html div: [
						group do: [ :index |
							html div
								class: 'caput';
								with: [
									html anchor
										callback: [ self gotoAureaCaput: index ];
										with: [
											html sT: 'myHome:unit'.
											html space.
											html text: index asString]].
		]]]].
	
		html heading level2; with: [ html t: 'myHome:extras'].
		html ukGrid
			class: 'uk-child-width-1-2';
			with: [
				html div: [
					html div
						class: 'aureaExtras';
						with: [
							html anchor
								callback: [ self gotoAureaCaput: 'P' ];
								with: [html sT: 'myHome:palloncini']]].
				html div: [
					html div
						class: 'aureaExtras';
						with: [
							html anchor
								class: 'aureaExtras';
								callback: [ self gotoAureaCaput: 'V' ];
								with: [html sT: 'myHome:vocabolario']].
		]]]