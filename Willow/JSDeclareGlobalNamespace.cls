"Filed out from Dolphin Smalltalk 7"!

JSMember subclass: #JSDeclareGlobalNamespace
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSDeclareGlobalNamespace guid: (GUID fromString: '{2db94a2a-75fa-43d8-8270-6da44ea83fa8}')!
JSDeclareGlobalNamespace comment: 'A Javascript variable declaration'!
!JSDeclareGlobalNamespace categoriesForClass!Boardwalk-Javascript! !
!JSDeclareGlobalNamespace methodsFor!

javascriptContentOn: aStream	aStream		nextPutAll: 'var';		space;		javascript: name!

javascriptOn: aStream	self javascriptContentOn: aStream! !
!JSDeclareGlobalNamespace categoriesFor: #javascriptContentOn:!printing!public! !
!JSDeclareGlobalNamespace categoriesFor: #javascriptOn:!printing!public! !

