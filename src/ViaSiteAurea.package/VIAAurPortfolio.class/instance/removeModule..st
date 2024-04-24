as yet unclassified
removeModule: aModule
	super removeModule: aModule.

	"dirty, but harry"
	lastOpenedCommentatio = aModule ifTrue: [ lastOpenedCommentatio := nil ].
	lastOpenedVocabulo = aModule ifTrue: [ lastOpenedVocabulo := nil ].