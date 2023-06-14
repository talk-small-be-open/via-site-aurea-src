rendering
renderLogoOn: html
	html anchor class: 'uk-logo aureaLogo'; callback: [self gotoHome]; with: [
		self ifTeacher: [ html logoAureaPlus ] else: [ html logoAurea ].
	]