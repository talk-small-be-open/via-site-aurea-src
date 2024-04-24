rendering
renderLogoOn: html
	html anchor class: 'aureaLogo'; callback: [self gotoHome]; with: [
		html logoAurea.
		html demoLabel.
	].
