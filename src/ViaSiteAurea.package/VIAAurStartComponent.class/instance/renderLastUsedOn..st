rendering
renderLastUsedOn: html
	| m p v empty |
	html heading level2; with: [ html t: 'myHome:lastVisited'].

	m := self currentPortfolio lastOpenedModule.
	p := self currentPortfolio lastOpenedCommentatio.
	v := self currentPortfolio lastOpenedVocabolario.

	empty := m isNil and: [ p isNil and: [ v isNil ] ].
	
	html ukGrid
		class: 'uk-flex-left uk-child-width-1-1 uk-child-width-1-3@l';
		with: [
			empty ifTrue: [ 
				html div pT: 'myHome:lastVisited:none'
			].
			
			m ifNotNil: [
				html div: [
					html bigAnchorButton
"						class: (VIAAurHelper toccamoduleCssOfModule: m);"
						callback: [ self gotoModule: m ];
						with: [
							html sT: 'myHome:gotoCurrentModule'.
							html space.
							html text: m indexCodeString].
			]].
			p ifNotNil: [
				html div: [
					html bigAnchorButton
"						class: (VIAAurHelper toccamoduleCssOfModule: p);"
						callback: [ self gotoModule: p ];
						with: [
							html sT: 'myHome:gotoCurrentCommentatio'.
							html space.
							html text: p indexCodeString].
			]].
			v ifNotNil: [
				html div: [
					html bigAnchorButton
"						class: (VIAAurHelper toccamoduleCssOfModule: v);"
						callback: [ self gotoModule: v ];
						with: [
							html sT: 'myHome:gotoCurrentVocabolario'.
							html space.
							html text: v indexCodeString].
			]].
		]