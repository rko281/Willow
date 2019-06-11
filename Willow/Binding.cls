"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Binding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Binding guid: (GUID fromString: '{f562244b-d304-4f68-9d58-76bf49a8e3f9}')!
Binding comment: 'I''m an abstract class representing a binding. '!
!Binding categoriesForClass!Buoy-Dynamic-Binding! !
!Binding methodsFor!

content	self subclassResponsibility !

isDefined	^ self subclassResponsibility ! !
!Binding categoriesFor: #content!accessing!public! !
!Binding categoriesFor: #isDefined!public!testing! !

!Binding class methodsFor!

to: anObject	^DefinedBinding connectedTo: anObject !

undefinedExplainedBy: anExplanation	^ self undefinedExplainedBy: anExplanation raising: AssertionFailed!

undefinedExplainedBy: anExplanation raising: anErrorClass	^ self undefinedExplainedByAll: {anExplanation} raising: anErrorClass!

undefinedExplainedByAll: anExplanationCollection raising: anErrorClass	^ UndefinedBinding explainedByAll: anExplanationCollection raising: anErrorClass! !
!Binding class categoriesFor: #to:!Instance Creation!public! !
!Binding class categoriesFor: #undefinedExplainedBy:!Instance Creation!public! !
!Binding class categoriesFor: #undefinedExplainedBy:raising:!Instance Creation!public! !
!Binding class categoriesFor: #undefinedExplainedByAll:raising:!Instance Creation!public! !

