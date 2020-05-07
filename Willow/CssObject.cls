"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CssObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'RenoirSt'
	classInstanceVariableNames: ''!
CssObject guid: (GUID fromString: '{ec53cad5-fd34-4306-ac95-acf0cb8dbace}')!
CssObject comment: 'A CssObject is the abstract superclass of the CSS renderable objects'!
!CssObject categoriesForClass!RenoirSt-Core-Common! !
!CssObject methodsFor!

asString	^ self printString!

cssContentOn: aStream	self subclassResponsibility !

printOn: aStream	self cssContentOn: aStream ! !
!CssObject categoriesFor: #asString!Printing!public! !
!CssObject categoriesFor: #cssContentOn:!Printing!public! !
!CssObject categoriesFor: #printOn:!Printing!public! !

!CssObject class methodsFor!

lookupColor: aNamedConstantOrCssColor	"Lookup the SVG colors namespace, if no named constant is found return the argument"	^ CssConstants >> #colors at: aNamedConstantOrCssColor ifAbsent: [ aNamedConstantOrCssColor ]!

lookupValue: aNamedConstantOrValue	"Lookup the CSS namespace and the SVG colors namespace, if no named constant is found returns the argument"	^ (aNamedConstantOrValue isCollection and: [ aNamedConstantOrValue isString not ])		then: [ aNamedConstantOrValue collect: [ :each | self lookupValue: each ] ]		otherwise: [ CssConstants at: aNamedConstantOrValue ifAbsent: [ self lookupColor: aNamedConstantOrValue ] ]! !
!CssObject class categoriesFor: #lookupColor:!private / converting!public! !
!CssObject class categoriesFor: #lookupValue:!private / converting!public! !

