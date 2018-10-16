"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #JSFunctionCall
	instanceVariableNames: 'functionName parameters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSFunctionCall guid: (GUID fromString: '{22516b3e-707f-4bf9-a087-afe443d8aa02}')!
JSFunctionCall comment: 'Simple object to represent a call to a JS function.'!
!JSFunctionCall categoriesForClass!Boardwalk-Javascript! !
!JSFunctionCall methodsFor!

initializeFor: aFunctionName withAll: aParameterCollection	functionName := aFunctionName.	parameters := aParameterCollection!

javascriptContentOn: aStream	aStream		nextPutAll: functionName;		nextPut: $(.	parameters do: [ :parameter | parameter javascriptOn: aStream ] separatedBy: [ aStream nextPut: $, ].	aStream nextPut: $)! !
!JSFunctionCall categoriesFor: #initializeFor:withAll:!initialize/release!public! !
!JSFunctionCall categoriesFor: #javascriptContentOn:!printing!public! !

!JSFunctionCall class methodsFor!

for: aFunctionName 	^ self for: aFunctionName withAll: #()!

for: aFunctionName with: anArgument	^ self for: aFunctionName withAll: {anArgument}!

for: aFunctionName withAll: aParameterCollection	^self new initializeFor: aFunctionName withAll: aParameterCollection! !
!JSFunctionCall class categoriesFor: #for:!instance creation!public! !
!JSFunctionCall class categoriesFor: #for:with:!instance creation!public! !
!JSFunctionCall class categoriesFor: #for:withAll:!instance creation!public! !

