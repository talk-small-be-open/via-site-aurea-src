as yet unclassified
tryLoginFromExternalCallback: aRequest website: aWebsite
	aRequest at: 'code' ifPresent: [ :c |
		^ [ self loginOauthCode: c website: aWebsite request: aRequest ]
			on: VIAAurHepUserError do: [ :error |
				nil
			]
	].

	^ nil