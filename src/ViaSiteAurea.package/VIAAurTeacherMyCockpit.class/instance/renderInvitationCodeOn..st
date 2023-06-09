rendering
renderInvitationCodeOn: html
	self hasInvitationCommand ifFalse: [
		html anchorButton
			callback: [ self createInvitationCode ];
			with: [
				html iconAdd; space.
				html sT: 'teacherMyCockpit:createInvitationCode']
	] ifTrue: [
		| mailto code |
"We do not send the url so far, but just the code to type in		url := invitationCommand url."
		code := self invitationCommand invitationCode.		
		mailto := VIAHelper createMailtoUrlTo: nil cc: nil bcc: nil subject: 'invitationMail:subject't body: ('invitationMail:body_code_'tp: {#code->code}).

		html div: [
			html heading level3; t: 'teacherMyCockpit:invitationCode'.
			html div class: 'uk-margin'; pT: 'teacherMyCockpit:invitationCodeInfo'.
			html span
				class: 'invitationCode';
				with: code.
			html space.
			self invitationCommand isExpired ifTrue: [
				html ukLabelWarning: 'teacherMyCockpit:invitationCodeIsExpired' 
			] ifFalse: [
				html sT: 'teacherMyCockpit:invitationCodeExpiryTime'.
				html space.
				html span: (VIAHelper germanDateAndTimeStringFor: self invitationCommand expirationDateAndTime).
				html space.
				html anchor
					callback: [ self deleteInvitationCode ];
					with: [ html iconDelete ]
			]
		].

		html div class: 'uk-margin-top'; pT: 'teacherMyCockpit:invitationCodeSharing'.
		html div: [
"			html iconShare; space.
			html anchor
				url: whatsapp;
				target: '_blank';
				with: 'WhatsApp'.
			html space; space."
			html iconEmail; space.
			html anchor
				url: mailto;
				t: 'general:email'.
			html space.
			html iconPreview.
			html anchor
				callback: [ self showInvitationCode ];
				t: 'teacherMyCockpit:showBigCode'.
		]
	].
