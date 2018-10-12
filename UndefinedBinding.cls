"Filed out from Dolphin Smalltalk 7"!

Binding subclass: #UndefinedBinding
	instanceVariableNames: 'errorClass explanations'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UndefinedBinding guid: (GUID fromString: '{f264f2de-89ca-438b-b3a3-8e940ff0df87}')!
UndefinedBinding comment: 'I represent  an unbound object and will raise an error when asked about my contents'!
!UndefinedBinding categoriesForClass!Buoy-Dynamic-Binding! !
!UndefinedBinding methodsFor!

content		^errorClass signalAll: explanations !

initializeExplainedByAll: anExplanationCollection raising: anErrorClass	explanations := anExplanationCollection.	errorClass := anErrorClass! !
!UndefinedBinding categoriesFor: #content!Accessing!public! !
!UndefinedBinding categoriesFor: #initializeExplainedByAll:raising:!initialize!public! !

!UndefinedBinding class methodsFor!

explainedByAll: anExplanationCollection raising: anErrorClass	^ self new initializeExplainedByAll: anExplanationCollection raising: anErrorClass! !
!UndefinedBinding class categoriesFor: #explainedByAll:raising:!Instance Creation!public! !

