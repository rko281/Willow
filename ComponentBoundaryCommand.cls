"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentBoundaryCommand
	instanceVariableNames: 'minimumHolder maximumHolder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentBoundaryCommand guid: (GUID fromString: '{69f73a24-9379-4be8-bd89-3f43ea6f2b92}')!
ComponentBoundaryCommand comment: 'Command to add boundaries to a component (using min: and/or max:).'!
!ComponentBoundaryCommand categoriesForClass!Willow-Frontend! !
!ComponentBoundaryCommand methodsFor!

applyTo: aComponent on: aCanvas	minimumHolder withContentDo: [ :minimum | aComponent attributeAt: 'min' put: minimum ].	maximumHolder withContentDo: [ :maximum | aComponent attributeAt: 'max' put: maximum ]!

initializeRestrictingMinimumWith: aMinimumHolder maximumTo: aMaximumHolder	minimumHolder := aMinimumHolder.	maximumHolder := aMaximumHolder! !
!ComponentBoundaryCommand categoriesFor: #applyTo:on:!processing!public! !
!ComponentBoundaryCommand categoriesFor: #initializeRestrictingMinimumWith:maximumTo:!initialize/release!public! !

!ComponentBoundaryCommand class methodsFor!

between: aMinimum and: aMaximum	^ self		restrictingMinimumWith: (Optional containing: aMinimum)		maximumTo: (Optional containing: aMaximum)!

nonNegative	^ self restrictingMinimumWith: (Optional containing: 0) maximumTo: (Optional unusedBecause: 'Maximum not restricted')!

restrictingMinimumWith: aMinimumHolder maximumTo: aMaximumHolder	^ self new initializeRestrictingMinimumWith: aMinimumHolder maximumTo: aMaximumHolder! !
!ComponentBoundaryCommand class categoriesFor: #between:and:!instance creation!public! !
!ComponentBoundaryCommand class categoriesFor: #nonNegative!instance creation!public! !
!ComponentBoundaryCommand class categoriesFor: #restrictingMinimumWith:maximumTo:!instance creation / private!public! !

