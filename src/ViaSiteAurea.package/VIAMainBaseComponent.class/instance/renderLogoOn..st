rendering
renderLogoOn: html
	html anchor class: 'aureaLogo'; callback: [self gotoHome]; with: [
		self ifTeacher: [ html logoAureaPlus ] else: [ html logoAurea ].
	]