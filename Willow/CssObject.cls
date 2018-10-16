"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CssObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'RenoirSt'
	classInstanceVariableNames: ''!
CssObject guid: (GUID fromString: '{741eee34-f3eb-4e92-adc9-b74cdcc5d384}')!
CssObject comment: 'A CssObject is the abstract superclass of the CSS renderable objects'!
!CssObject categoriesForClass!RenoirSt-Common! !
!CssObject methodsFor!

cssContentOn: aStream	self subclassResponsibility !

printOn: aStream	self cssContentOn: aStream ! !
!CssObject categoriesFor: #cssContentOn:!Printing!public! !
!CssObject categoriesFor: #printOn:!Printing!public! !

!CssObject class methodsFor!

lookupColor: aNamedConstantOrCssColor	"Lookup the SVG colors namespace, if no named constant is found return the argument"	^ CssConstants >> #colors at: aNamedConstantOrCssColor ifAbsent: [ aNamedConstantOrCssColor ]!

lookupValue: aNamedConstantOrValue	"Lookup the CSS namespace and the SVG colors namespace, if no named constant is found returns the argument"	^ (aNamedConstantOrValue isCollection and: [ aNamedConstantOrValue isString not ])		ifTrue: [ aNamedConstantOrValue collect: [ :each | self lookupValue: each ] ]		ifFalse: [ CssConstants at: aNamedConstantOrValue ifAbsent: [ self lookupColor: aNamedConstantOrValue ] ]!

new

	^super new initialize! !
!CssObject class categoriesFor: #lookupColor:!private / converting!public! !
!CssObject class categoriesFor: #lookupValue:!private / converting!public! !
!CssObject class categoriesFor: #new!public! !

