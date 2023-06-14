rendering
renderHeaderOn: html
	html div class: 'aureaHeader'; a: 'uk-sticky'; with: [ 
		(html ukNavbarOptions: 'dropbar: true; mode: click;')
			class: 'uk-navbar-transparent uk-light aureaMenubar';
			with: [
				self ifViewportSmall: [
					self renderNavbarSmallContentOn: html ]
				else: [
					self renderNavbarContentOn: html ].
				self renderOffcanvasOn: html.
			].
		html div class: 'uk-navbar-dropbar'
	]