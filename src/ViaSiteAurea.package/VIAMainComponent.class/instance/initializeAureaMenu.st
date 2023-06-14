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
		entry icon: ('unita', each asString)
	].

	entry := subMenu addEntry: 'menu:aurea:vocabulo' send: #gotoSmartVocabula to: self.
	entry icon: 'vocabulo'.
	entry := subMenu addEntry: 'menu:aurea:commentatio' send: #gotoSmartCommentatio to: self.
	entry icon: 'commentatio'