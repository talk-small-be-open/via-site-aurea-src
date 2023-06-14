as yet unclassified
goUp
	self deprecated: 'not of use, i think'.
	"Smart behaviour if we are inside an exercise"
	self isExercising ifTrue: [
		self gotoAureaCaput: self currentModule indexCode first.
		^ self
	].
	
	
	self gotoHome