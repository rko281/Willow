"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WillowBootstrapApplicationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowBootstrapApplicationTest guid: (GUID fromString: '{ef1343a3-2f94-48cf-840a-acb6fd76120d}')!
WillowBootstrapApplicationTest comment: ''!
!WillowBootstrapApplicationTest categoriesForClass!Willow-Bootstrap-Tests-Applications! !
!WillowBootstrapApplicationTest methodsFor!

componentSupplier	^ self subclassResponsibility!

createHandlers	^ Array with: self!

expectedApplicationRendering	^ self subclassResponsibility!

isSession	^ true!

preferenceAt: aSymbol ifAbsent: aBlock	^ aBlock value!

testRenderContentOnWithBootstrap	| html application |	application := WillowTestingApplication using: self componentSupplier.	html := self fullDocumentRendering: application.	self assert: html equals: self expectedApplicationRendering! !
!WillowBootstrapApplicationTest categoriesFor: #componentSupplier!accessing!public! !
!WillowBootstrapApplicationTest categoriesFor: #createHandlers!accessing!public! !
!WillowBootstrapApplicationTest categoriesFor: #expectedApplicationRendering!accessing!public! !
!WillowBootstrapApplicationTest categoriesFor: #isSession!accessing!public! !
!WillowBootstrapApplicationTest categoriesFor: #preferenceAt:ifAbsent:!accessing!public! !
!WillowBootstrapApplicationTest categoriesFor: #testRenderContentOnWithBootstrap!public!tests! !

!WillowBootstrapApplicationTest class methodsFor!

isAbstract	^ self name = #WillowBootstrapApplicationTest! !
!WillowBootstrapApplicationTest class categoriesFor: #isAbstract!public!testing! !

