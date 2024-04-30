initialization
initializeAureaMenu
	| subMenu entry |

	subMenu := mainMenu addSubMenu.
"	mainMenu addDivider."

	subMenu mainEntry: ((VIAActionMenuEntry label: 'menu:aurea' send: #gotoAureaStart to: self)
		icon: 'menuHome';
		yourself).

	VIAAurHelper aureaCaputs do: [ :each |
		entry := subMenu addEntry: ('menu:aurea:caput't, ' ', each asString) send: #gotoAureaCaput: to: self arg: each.
		entry icon: 'caput'
	].

	entry := subMenu addEntry: 'menu:aurea:commentatio' send: #gotoSmartCommentatio to: self.
	entry icon: 'commentatio'.
	entry := subMenu addEntry: 'menu:aurea:vocabula' send: #gotoSmartVocabula to: self.
	entry icon: 'vocabula'.
	entry := subMenu addEntry: 'menu:aurea:glossary' send: #gotoGlossary to: self.
	entry icon: 'glossary'.
