as yet unclassified
buildExerciseComponentForTask: aTask
	| taskIndex taskExerciser |
	taskIndex := model tasks indexOf: aTask.

	taskExerciser := VIAAurExerciserPrintComponent exercise: (moduleExercise exerciseForTask: aTask).
	
	exerciserComponents
		at: taskIndex
		put: taskExerciser.
		
	^ taskExerciser