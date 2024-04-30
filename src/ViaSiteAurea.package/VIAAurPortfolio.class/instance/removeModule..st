as yet unclassified
removeModule: aModule
	super removeModule: aModule.

	"dirty, but harry"
	lastOpenedCommentatio = aModule ifTrue: [ lastOpenedCommentatio := nil ].
	lastOpenedVocabula = aModule ifTrue: [ lastOpenedVocabula := nil ].