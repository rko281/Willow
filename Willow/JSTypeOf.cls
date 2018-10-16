"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSTypeOf
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSTypeOf guid: (GUID fromString: '{a8ed4e66-6d0f-419b-a31b-15b7a6818ec3}')!
JSTypeOf comment: 'Implements the Javascript typeOf  operator'!
!JSTypeOf categoriesForClass!Boardwalk-Javascript! !
!JSTypeOf methodsFor!

javascriptContentOn: aStream	aStream		nextPutAll: 'typeof';		space.	super javascriptContentOn: aStream! !
!JSTypeOf categoriesFor: #javascriptContentOn:!printing!public! !

