rendering
initializeInfoMenu
	| subMenu |
	subMenu := mainMenu addSubMenu.
	subMenu
		css: 'uk-parent'.

"	mainMenu addDivider."

	subMenu mainEntry: ((VIATextMenuEntry label: 'menu:info') icon: 'menuInfo'; yourself).

	{'about'->''. 'teacher'->'didaktische-informationen'. 'faq'->'faq'. 'scrolly'->'scrolly'} do: [ :each |
		| entry |
		entry := VIAUrlMenuEntry label: ('menu:info:', each key) url: ('https://www.hep-verlag.ch/aurea-bulla/', each value).
		entry icon: 'menuInfoPage'.
		subMenu addEntry: entry.
	].

"	#(teacher faq press about support) do: [ :each |
		(subMenu addEntry: ('menu:info:', each) send: #showTextWithBack: to: self arg: ('page:', each))
			icon: 'menuInfoPage'.
	]."

"	(subMenu addEntry: 'menu:info:disclaimer' send: #openDisclaimer to: self)
		icon: 'menuInfoPage'."

	^ subMenu