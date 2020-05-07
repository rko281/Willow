"Filed out from Dolphin Smalltalk 7"!

JSFunction subclass: #JSArrowFunction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSArrowFunction guid: (GUID fromString: '{acdd611c-447e-45c3-b488-6f9349016ac6}')!
JSArrowFunction comment: 'I represent an anonymous JavaScript function using the arrow (->) syntax'!
!JSArrowFunction categoriesForClass!Boardwalk-Javascript! !
!JSArrowFunction methodsFor!

asArrowFunction	^ self!

asArrowFunction: aCollection	self arguments: aCollection!

asFunction	| function |	function := JSFunction context: self renderContext.	function arguments: arguments.	statements do: [ :statement | function add: statement ].	function return: return.	^ function!

asFunction: aCollection	^ self asFunction asFunction: aCollection!

javascriptContentOn: aStream	aStream nextPutAll: '('.	self arguments do: [ :each | aStream nextPutAll: each ] separatedBy: [ aStream nextPut: $, ].	aStream nextPutAll: ') => {'.	statements isEmpty		ifFalse: [ statements allButLast				do: [ :each | 					aStream						javascript: each;						nextPut: $;					].			self return				ifTrue: [ aStream nextPutAll: 'return ' ].			aStream javascript: statements last			].	aStream nextPut: $}! !
!JSArrowFunction categoriesFor: #asArrowFunction!converting!public! !
!JSArrowFunction categoriesFor: #asArrowFunction:!converting!public! !
!JSArrowFunction categoriesFor: #asFunction!converting!public! !
!JSArrowFunction categoriesFor: #asFunction:!converting!public! !
!JSArrowFunction categoriesFor: #javascriptContentOn:!printing!public! !

