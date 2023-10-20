rendering
renderContentOn: html
	html div class: 'aureaBanner'; with: [
		html div class: 'bannerText'; with: [
			html div class: 'bannerTextTitle'; with: 'AUREA BULLA'.
			html div class: 'bannerTextSubtitle'; with: [
				html text: 'Latein.'; break.
				html text: 'Mehrsprachigkeit.'; break.
				html text: 'Kulturgeschichte.'; break.
			].
		].
		html image class: 'bannerImage'; url: '/site/images/public_banner.jpg'.
	].

	html ukContainer: [
		html div class: 'loginSection'; with: [
			VIAAurHepUser isOauthEnabled ifTrue: [
				html bigAnchorButton
	"				callback: [ self app openLoginDialog ];"
					url: self oauthAuthorizeUrl;
					target: '_self';
					with: [
						html span: [
							html iconLogin; space.
							html sT: 'publicHome:login' ] ]
			] ifFalse: [
				html div pT: 'publicHome:loginDisabled'
			].
			self ifDevelopment: [
				html div class: 'topBuffer'; with: [
					html anchor
						callback: [ self app openLoginDialog ];
						with: 'DEVELOPMENT Login ...' ]].
		
				
		].

		html div pT: 'publicHome:info'.

"		self renderInfoOn: html"
	]