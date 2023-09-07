tests
testRegexpIndexCode
	| r |
	r := VIAAurHelper regexpIndexCode.
	
	{ 'C.1'. 'V.3'. '2.23'. '15.1.2.3.4'. '1.2.test'. '1.2.test1'. '1.2.april2022' } do: [ :each |
		self assert: (each matchesRegex: r) ].
	
	{ 'C1'. 'V3'. '2'. 'dfwefdsf'. 'blabla.blabla'. 'a.b'. '1.1.' } do: [ :each |
		self deny: (each matchesRegex: r) ]