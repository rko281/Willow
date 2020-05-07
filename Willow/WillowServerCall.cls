"Filed out from Dolphin Smalltalk 7"!

JQAjax subclass: #WillowServerCall
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowServerCall guid: (GUID fromString: '{cb25d395-9e17-4420-a8a8-79cf21556213}')!
WillowServerCall comment: 'I represent an AJAX call in Willow'!
!WillowServerCall categoriesForClass!Willow-Core-WebInteraction! !
!WillowServerCall methodsFor!

arguments	self options		removeKey: 'dataType' ifAbsent: [  ];		removeKey: 'error' ifAbsent: [  ].	^ super arguments!

method	^ self constants >> #willow >> #callServerFunctionName! !
!WillowServerCall categoriesFor: #arguments!accessing!public! !
!WillowServerCall categoriesFor: #method!accessing!public! !

