as yet unclassified
createDummyLogin
	| firstnames lastnames |
	firstnames := #(Delphine Agostino Tinko Godwin Erlina Barney Jantje Chuck Wilbert Admira Riano Mechthild Biljana Floranda Valerina Lorella Hank Olympia Ilda Neron Kaitlynn Peeke Signe).
	lastnames := #(Müller Brodbeck Koller Kleiner).

	user := VIADemoUser new firstName: firstnames atRandom; lastName: lastnames atRandom; yourself.