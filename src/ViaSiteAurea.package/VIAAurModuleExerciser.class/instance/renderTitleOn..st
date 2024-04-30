rendering
renderTitleOn: html
	| tag |
	tag := html heading
		level2;
		class: 'moduleTitle'.

"	model levelTag ifNotNil: [ :lt |
		tag class: ('level-', lt code) ]."


	tag with: [
"		html span class: 'level'; with: [ 
			html iconLevelTag: model levelTag
		]."
		VIAAurHelper renderUnitLabel: (VIAAurHelper aureaCaputOfModule: model) on: html.
		html span class: 'divider'; with: '|'.
		html span: model indexCode asString.
		html space.
		html span: model title.
	]