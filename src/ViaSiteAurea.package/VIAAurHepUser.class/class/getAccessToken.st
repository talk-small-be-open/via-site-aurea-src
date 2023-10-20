as yet unclassified
getAccessToken
	| postData response |

	"OPTIMIZE: redirect_uri not needed but maybe API wants it? Check it."
	postData := {
		'client_id'->self oauthId.
		'client_secret'->self oauthSecret.
		'grant_type'->'authorization_code'.
		'response_type'->'code'.
"		'code'->aString.
		'redirect_uri'->((self ssoCallbackUrl: aWebsite) asString)."
	} aD.
	
	response := self postData: postData endpoint: '/oauth/token'.

	response isDictionary ifFalse: [ self signalError: 'Invalid data from API' ].

	response at: 'error' ifPresent: [:text |
		self signalError: 'OAuth error while granting auth-code.' returnData: response
	].
	
	^ response at: 'access_token'.
