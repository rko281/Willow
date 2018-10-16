"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssLinearPolynomial
	instanceVariableNames: 'dependentCoefficient independentCoefficient'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssLinearPolynomial guid: (GUID fromString: '{a2bd3c35-ec44-4a02-a25d-c1636e7531b3}')!
CssLinearPolynomial comment: 'A CssLinearPolynomial represents a function of the type: an+b where n is a free variable. It can be used in some structural pseudo class selectors.'!
!CssLinearPolynomial categoriesForClass!RenoirSt-Selectors! !
!CssLinearPolynomial methodsFor!

- aPositiveInteger	independentCoefficient := aPositiveInteger * -1!

+ aPositiveInteger	independentCoefficient := aPositiveInteger !

cssContentOn: aWriteStream	self cssDependentCoefficientContentOn: aWriteStream.	aWriteStream nextPut: $n.	self cssIndependentCoefficientContentOn: aWriteStream!

cssDependentCoefficientContentOn: aWriteStream	dependentCoefficient abs = 1		ifTrue: [ 			dependentCoefficient negative				ifTrue: [ aWriteStream nextPut: $- ] ]		ifFalse: [ dependentCoefficient cssContentOn: aWriteStream ]!

cssIndependentCoefficientContentOn: aWriteStream	independentCoefficient isZero		ifTrue: [ ^ self ].	independentCoefficient positive		ifTrue: [ aWriteStream nextPut: $+ ].	independentCoefficient cssContentOn: aWriteStream!

initializeWith: a 	independentCoefficient := 0.	dependentCoefficient := a! !
!CssLinearPolynomial categoriesFor: #-!Configuring!public! !
!CssLinearPolynomial categoriesFor: #+!Configuring!public! !
!CssLinearPolynomial categoriesFor: #cssContentOn:!Printing!public! !
!CssLinearPolynomial categoriesFor: #cssDependentCoefficientContentOn:!private! !
!CssLinearPolynomial categoriesFor: #cssIndependentCoefficientContentOn:!private! !
!CssLinearPolynomial categoriesFor: #initializeWith:!initialize/release!public! !

!CssLinearPolynomial class methodsFor!

forIdentity		^self with: 1!

with: a 	^ self new initializeWith: a ! !
!CssLinearPolynomial class categoriesFor: #forIdentity!Instance Creation!public! !
!CssLinearPolynomial class categoriesFor: #with:!Instance Creation!public! !

