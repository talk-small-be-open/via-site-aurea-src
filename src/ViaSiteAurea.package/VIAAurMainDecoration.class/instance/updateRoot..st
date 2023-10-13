as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	self updateRootEssentials: anHtmlRoot.
	self updateRootCookieConsent: anHtmlRoot.
	self updateRootFontawesome: anHtmlRoot.
	self updateRootDefaultUi: anHtmlRoot.
	self updateRootSite: anHtmlRoot.
	
	"OPTIMIZE: Performance?"
	self updateRootPwa: anHtmlRoot.

	"Fonts für Aurea (Edith)"
	anHtmlRoot stylesheet url: 'https://use.typekit.net/qxs6zrg.css'.

	"We use some outofthebox components"
"	anHtmlRoot javascript defer; url: '/js/outofthebox/highlight_areas_v2.js'"