rendering
renderLegendOn: html
	showProgress ifTrue: [
		html div class: 'legend'; with: [ 
			html div pT: 'aurea:legend:progress'.
			1 to: 3 do: [ :index |
				html div: [
					html t: ('aurea:legend:progress', index asString).
					html space.
					html iconProgress: index ].
	]]]