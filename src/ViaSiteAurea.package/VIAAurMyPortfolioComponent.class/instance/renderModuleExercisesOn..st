rendering
renderModuleExercisesOn: html
"	html heading level4; t: 'myPortfolio:myModules'."

	self renderLegendOn: html.

	currentUnitExercises ifNotBlank: [
		| unitNumber |
		unitNumber := currentUnit first.
		html heading level4; class: 'currentUnit'; with: [
			html sT: ('aurea:caput', unitNumber asString).
		].

		self renderModuleExercises: currentUnitExercises on: html.
	].

	extraExercises ifNotBlank: [
		html heading level4; with: [
			html sT: ('aurea:unitC').
			html text: ' / '.
			html sT: ('aurea:unitV').
		].
		self renderModuleExercises: extraExercises on: html.
	].


	html break; break; break.
	
	"Rest"
	groupedExercises keys reverseDo: [ :mainIndexCode |
		| unitNumber id exercises |
		exercises := (groupedExercises at: mainIndexCode).
		id := html nextId.
		
		unitNumber := mainIndexCode first.
		html heading
			level4;
"			ukToggle: ('#', id);"
			with: [
				html sT: ('aurea:caput', unitNumber asString).
		].

		html div id: id; with: [
			self renderModuleExercises: exercises on: html ]
	]