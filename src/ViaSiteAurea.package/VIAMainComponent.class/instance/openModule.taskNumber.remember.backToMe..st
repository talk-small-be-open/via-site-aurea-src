actions
openModule: aModule taskNumber: aTaskNumber remember: aBoolean backToMe: aBackBoolean
	| exerciser myModuleInWork |

	(aModule canView: self currentUser) ifFalse: [ self inform: 'main:accessDenied'. ^ self ].

	"Suche ein Module, welches schon im Portfolio ist, auch wenn veraltet"
	myModuleInWork := (self currentPortfolio newestModuleOfFamily: aModule)
		ifNil: [aModule].
		
	myModuleInWork ~= aModule ifTrue: [
		self flashMessage: 'main:otherVersionIsInYourPortfolio't
	].

	aBoolean ifTrue: [
		
		(VIAAurHelper isRegularModule: aModule)
			ifTrue: [
				self currentPortfolio
					addModule: aModule;
					lastOpenedModule: aModule.
			]
			ifFalse: [
				(VIAAurHelper isVocabolarioModule: aModule) ifTrue: [ 
					self currentPortfolio lastOpenedVocabolario: aModule.
				].
				(VIAAurHelper isPallonciniModule: aModule) ifTrue: [ 
					self currentPortfolio lastOpenedPalloncini: aModule.
				].
	]].

	self session currentModule: aModule. 

	exerciser := (VIAAurModuleExerciser fromModule: aModule).

	"To make it UI-lightweight as possible. Just open one task"
	exerciser closeAllTasksButLastUsed.
	
	exerciser previousModule: aModule previousByIndexCode.
	exerciser nextModule: aModule nextByIndexCode.

	aTaskNumber ifNotNil: [
		exerciser gotoTaskNumber: aTaskNumber].

	"Back handling"
"	self coreComponent ifNotNil: [ :c |
		exerciser previousComponent: (aBackBoolean ifTrue: [c] ifFalse: [c previousComponent]) ]."
	aBackBoolean ifTrue: [
		exerciser previousComponent: self coreComponent ].

	self coreComponent: exerciser