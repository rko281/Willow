"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssGradient
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssGradient guid: (GUID fromString: '{4eaa041d-724b-4e86-b8ac-a5b3638c43a9}')!
CssGradient comment: 'A gradient is an image that smoothly fades from one color to another. '!
!CssGradient categoriesForClass!RenoirSt-Colors! !
!CssGradient methodsFor!

colorStops	self subclassResponsibility !

cssContentOn: aWriteStream	aWriteStream nextPutAll: self functionName.	aWriteStream nextPut: $(.	self shape cssContentOn: aWriteStream.	self colorStops		do: [ :colorStop | colorStop cssContentOn: aWriteStream ]		separatedBy: [ 			aWriteStream				nextPut: $,;				space ].	aWriteStream nextPut: $)!

functionName	self subclassResponsibility !

shape	self subclassResponsibility ! !
!CssGradient categoriesFor: #colorStops!private! !
!CssGradient categoriesFor: #cssContentOn:!Printing!public! !
!CssGradient categoriesFor: #functionName!private! !
!CssGradient categoriesFor: #shape!private! !

!CssGradient class methodsFor!

asColorStops: aColorStopOrNamedConstantCollection	^ aColorStopOrNamedConstantCollection collect: [ :colorStopOrNamedConstant | self lookupColor: colorStopOrNamedConstant ]! !
!CssGradient class categoriesFor: #asColorStops:!converting!public! !

