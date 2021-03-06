﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #AssertionCheck
	instanceVariableNames: 'factToCheck explanationBlockOrString successAction'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AssertionCheck guid: (GUID fromString: '{61875c7d-bb58-424a-9182-51c36a13c133}')!
AssertionCheck comment: 'I represent a check for a specific fact, including the success and failure actions to apply'!
!AssertionCheck categoriesForClass!Buoy-Assertions! !
!AssertionCheck methodsFor!

checkApplying: anAssertionFailurePolicy	factToCheck value		then: [ successAction value: anAssertionFailurePolicy ]		otherwise: [ anAssertionFailurePolicy assertionFailedBecause: self explanation ]!

explanation	^ explanationBlockOrString value!

initializeChecking: aFact onSuccess: aSuccessAction onFailure: aFailureBlockOrString	factToCheck := aFact.	successAction := aSuccessAction.	explanationBlockOrString := aFailureBlockOrString! !
!AssertionCheck categoriesFor: #checkApplying:!Checking!public! !
!AssertionCheck categoriesFor: #explanation!private! !
!AssertionCheck categoriesFor: #initializeChecking:onSuccess:onFailure:!initialize!public! !

!AssertionCheck class methodsFor!

checking: aFact onFailure: anExplanationBlockOrString	^ self checking: aFact onSuccess: [ :policy |  ] onFailure: anExplanationBlockOrString!

checking: aFact onSuccess: aSuccessAction onFailure: anExplanationBlockOrString	^ self new initializeChecking: aFact onSuccess: aSuccessAction onFailure: anExplanationBlockOrString! !
!AssertionCheck class categoriesFor: #checking:onFailure:!instance creation!public! !
!AssertionCheck class categoriesFor: #checking:onSuccess:onFailure:!instance creation!public! !

