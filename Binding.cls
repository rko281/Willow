"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Binding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Binding guid: (GUID fromString: '{0344b4a3-8be0-4ec9-92aa-c487680870c1}')!
Binding comment: 'I''m an abstract class representing a binding. '!
!Binding categoriesForClass!Buoy-Dynamic-Binding! !
!Binding methodsFor!

content	self subclassResponsibility ! !
!Binding categoriesFor: #content!accessing!public! !

!Binding class methodsFor!

to: anObject	^DefinedBinding connectedTo: anObject !

undefinedExplainedBy: anExplanation	^ self undefinedExplainedBy: anExplanation raising: AssertionFailed!

undefinedExplainedBy: anExplanation raising: anErrorClass	^ self undefinedExplainedByAll: {anExplanation} raising: anErrorClass!

undefinedExplainedByAll: anExplanationCollection raising: anErrorClass	^ UndefinedBinding explainedByAll: anExplanationCollection raising: anErrorClass! !
!Binding class categoriesFor: #to:!Instance Creation!public! !
!Binding class categoriesFor: #undefinedExplainedBy:!Instance Creation!public! !
!Binding class categoriesFor: #undefinedExplainedBy:raising:!Instance Creation!public! !
!Binding class categoriesFor: #undefinedExplainedByAll:raising:!Instance Creation!public! !

