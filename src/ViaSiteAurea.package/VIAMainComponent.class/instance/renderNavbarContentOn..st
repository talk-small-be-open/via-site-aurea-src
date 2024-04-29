rendering
renderNavbarContentOn: html
	"uk-navbar-left"
	html div class: 'menubarLeft uk-margin-right'; with: [
		self renderLogoOn: html.
	].
"	html div class: 'uk-navbar-center'; with: ["
	html div class: 'menubarCenter uk-margin-right'; with: [
		html unorderedList class: 'uk-navbar-nav'; with: [
			html listItem
				class: 'active' if: (self activeCoreComponent isKindOf: VIAAurStartComponent);
				with: [
					html anchor
						callback: [ self gotoAureaStart ];
						with: [
							html iconHome.
							html span class: 'menuLabel uk-visible@l'; with: [
								"html space."
								html sT: 'main:fastAccess:start']]
			].
			self renderFastAccessMenuOn: html.
		].
	].
	html div class: 'menubarRight'; with: [
"		html div class: 'uk-navbar-item'; with: [
		]."

		html unorderedList class: 'uk-navbar-nav'; with: [
			html listItem: [
				html anchor
					callback: [ self gotoMyPortfolio ];
					with: [ html iconPortfolio]
			].
			html listItem: [ 
				html anchor
					with: [ html iconSearch].
				self renderDropbarOn: html.
			].
			html listItem: [
				html anchor
					class: 'mainMenuToggler';
					ukToggleTarget: '#mainMenu';
					with: [
						html iconMenu.
						"html t: 'general:menu'"]]
		]
	].

"	self renderOffcanvasOn: html."
