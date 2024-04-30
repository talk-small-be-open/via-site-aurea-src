helpers
aureaCaputOfModule: aModule
	^ aModule indexCode ifBlank: [ 1 ] ifNotBlank: [ :ic |
		ic first
	]