as yet unclassified
testdriveTask: aTask module: aModule
	self coreComponent: (VIAAurModuleExerciser testdrive: aModule task: aTask)
	
"	component := (VIATocTaskExerciser testdrive: aTask module: aModule).
	component addForm removeButtons.

	self coreComponent: component"