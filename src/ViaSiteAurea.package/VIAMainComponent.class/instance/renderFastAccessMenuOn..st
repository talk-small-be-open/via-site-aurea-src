rendering
renderFastAccessMenuOn: html
	| moduleType active |

	moduleType := self currentModuleType.
	active := (moduleType = 'R').
	html listItem class: 'active' if: active; with: [
		html anchor
			callback: [ self gotoSmartUnit ];
			with: [
"					html iconUnita: self session workingAureaCaput active: active."
				html iconCaput.
				html span class: 'menuLabel uk-visible@l'; with: [
					"html space."
					html sT: 'main:fastAccess:caput']]
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
				html iconVocabulaActive: active.
				html span class: 'menuLabel uk-visible@l'; with: [
					"html space."
					html sT: 'main:fastAccess:vocabula'
				]]
	].
	active := (moduleType = 'G').
	html listItem class: 'active' if: active; with: [
		html anchor
			callback: [ self gotoGlossary ];
			with: [
				html iconGlossaryActive: active.
				html span class: 'menuLabel uk-visible@l'; with: [
					"html space."
					html sT: 'main:fastAccess:glossary'
				]]
	]
