"Filed out from Dolphin Smalltalk 7"!

JSMember subclass: #JSDeclareConstVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSDeclareConstVariable guid: (GUID fromString: '{c2235cbf-aa09-4e4f-83dc-d0f29d7e38bb}')!
JSDeclareConstVariable comment: 'A Javascript const variable declaration'!
!JSDeclareConstVariable categoriesForClass!Boardwalk-Javascript! !
!JSDeclareConstVariable methodsFor!

javascriptContentOn: aStream	aStream		nextPutAll: 'const';		space;		javascript: name!

javascriptOn: aStream	self javascriptContentOn: aStream! !
!JSDeclareConstVariable categoriesFor: #javascriptContentOn:!printing!public! !
!JSDeclareConstVariable categoriesFor: #javascriptOn:!printing!public! !

