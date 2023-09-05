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
		active := (moduleType = 'C').
		html listItem class: 'active' if: active; with: [
			html anchor
				callback: [ self gotoSmartCommentatio ];
				with: [
					html iconCommentatioActive: active.
					html span class: 'menuLabel uk-visible@l'; with: [
						"html space."
						html sT: 'main:fastAccess:commentatio']]
		].
		active := (moduleType = 'V').
		html listItem class: 'active' if: active; with: [
			html anchor
				callback: [ self gotoSmartVocabula ];
				with: [
					html iconVocabuloActive: active.
					html span class: 'menuLabel uk-visible@l'; with: [
						"html space."
						html sT: 'main:fastAccess:vocabulo'
					]]
		]
