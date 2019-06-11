"Filed out from Dolphin Smalltalk 7"!

Binding subclass: #UndefinedBinding
	instanceVariableNames: 'errorClass explanations'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UndefinedBinding guid: (GUID fromString: '{d5f31fb1-1ea9-4204-bdd1-01bcf51d5c04}')!
UndefinedBinding comment: 'I represent  an unbound object and will raise an error when asked about my contents'!
!UndefinedBinding categoriesForClass!Buoy-Dynamic-Binding! !
!UndefinedBinding methodsFor!

content		^errorClass signalAll: explanations !

initializeExplainedByAll: anExplanationCollection raising: anErrorClass	explanations := anExplanationCollection.	errorClass := anErrorClass!

isDefined	^ false ! !
!UndefinedBinding categoriesFor: #content!Accessing!public! !
!UndefinedBinding categoriesFor: #initializeExplainedByAll:raising:!initialize!public! !
!UndefinedBinding categoriesFor: #isDefined!public!testing! !

!UndefinedBinding class methodsFor!

explainedByAll: anExplanationCollection raising: anErrorClass	^ self new initializeExplainedByAll: anExplanationCollection raising: anErrorClass! !
!UndefinedBinding class categoriesFor: #explainedByAll:raising:!Instance Creation!public! !

