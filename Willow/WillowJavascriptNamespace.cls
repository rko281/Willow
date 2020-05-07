"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #WillowJavascriptNamespace
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowJavascriptNamespace guid: (GUID fromString: '{7d198b96-42c1-44c1-8935-1c7da3257686}')!
WillowJavascriptNamespace comment: 'I represent the Willow JS module'!
!WillowJavascriptNamespace categoriesForClass!Willow-Core-Applications! !
!WillowJavascriptNamespace methodsFor!

callServerFunction	^ self access: self constants >> #willow >> #callServerFunctionName!

handleAjaxErrorCallFunction	^ self access: self constants >> #willow >> #handleAjaxErrorCallFunctionName!

javascriptContentOn: aStream	aStream nextPutAll: 'Willow'!

serverCall	^ (WillowServerCall context: self renderContext owner: self)		rendererClass: self rendererClass;		yourself!

setCallServerFunctionTo: aJSFunction	^ self callServerFunction assign: aJSFunction!

setHandleAjaxErrorCallFunctionTo: aJSFunction	^ self handleAjaxErrorCallFunction assign: aJSFunction! !
!WillowJavascriptNamespace categoriesFor: #callServerFunction!Accessing!public! !
!WillowJavascriptNamespace categoriesFor: #handleAjaxErrorCallFunction!Accessing!public! !
!WillowJavascriptNamespace categoriesFor: #javascriptContentOn:!printing!public! !
!WillowJavascriptNamespace categoriesFor: #serverCall!Accessing!public! !
!WillowJavascriptNamespace categoriesFor: #setCallServerFunctionTo:!Configuring!public! !
!WillowJavascriptNamespace categoriesFor: #setHandleAjaxErrorCallFunctionTo:!Configuring!public! !

