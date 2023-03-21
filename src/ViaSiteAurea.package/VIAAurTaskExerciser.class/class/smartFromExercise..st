as yet unclassified
smartFromExercise: aTaskExercise

	aTaskExercise isFinished ifTrue: [
		^VIAAurExerciserFinishedComponent exercise: aTaskExercise].

	^self exercise: aTaskExercise