rendering
renderFastAccessMenuOn: html
	| moduleType active |
"	self currentPortfolio lastOpenedModule ifNotNil: [:m |
		html div class: 'uk-navbar-item'; with: [
			html span: m indexCodeString
		].
	]."

	moduleType := self currentModuleType.
	active := (moduleType = 'R').
"	html unorderedList class: 'uk-navbar-nav fastAccess'; with: ["
		html listItem class: 'active' if: active; with: [
			html anchor
				callback: [ self gotoSmartUnit ];
				with: [
					html iconUnita: self session workingAureaCaput active: active.
					html span class: 'menuLabel uk-visible@l'; with: [
						"html space."
						html sT: 'main:fastAccess:unita']]
		].
		active := (moduleType = 'P').
		html listItem class: 'active' if: active; with: [
			html anchor
				callback: [ self gotoSmartCommentatio ];
				with: [
					html iconPallonciniActive: active.
					html span class: 'menuLabel uk-visible@l'; with: [
						"html space."
						html sT: 'main:fastAccess:palloncini']]
		].
		active := (moduleType = 'V').
		html listItem class: 'active' if: active; with: [
			html anchor
				callback: [ self gotoSmartVocabula ];
				with: [
					html iconVocabolarioActive: active.
					html span class: 'menuLabel uk-visible@l'; with: [
						"html space."
						html sT: 'main:fastAccess:vocabolario'
					]]
		]
