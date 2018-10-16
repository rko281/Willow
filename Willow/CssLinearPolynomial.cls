﻿"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssLinearPolynomial
	instanceVariableNames: 'dependentCoefficient independentCoefficient'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssLinearPolynomial guid: (GUID fromString: '{a2bd3c35-ec44-4a02-a25d-c1636e7531b3}')!
CssLinearPolynomial comment: 'A CssLinearPolynomial represents a function of the type: an+b where n is a free variable. It can be used in some structural pseudo class selectors.'!
!CssLinearPolynomial categoriesForClass!RenoirSt-Selectors! !
!CssLinearPolynomial methodsFor!

- aPositiveInteger

+ aPositiveInteger

cssContentOn: aWriteStream

cssDependentCoefficientContentOn: aWriteStream

cssIndependentCoefficientContentOn: aWriteStream

initializeWith: a 
!CssLinearPolynomial categoriesFor: #-!Configuring!public! !
!CssLinearPolynomial categoriesFor: #+!Configuring!public! !
!CssLinearPolynomial categoriesFor: #cssContentOn:!Printing!public! !
!CssLinearPolynomial categoriesFor: #cssDependentCoefficientContentOn:!private! !
!CssLinearPolynomial categoriesFor: #cssIndependentCoefficientContentOn:!private! !
!CssLinearPolynomial categoriesFor: #initializeWith:!initialize/release!public! !

!CssLinearPolynomial class methodsFor!

forIdentity

with: a 
!CssLinearPolynomial class categoriesFor: #forIdentity!Instance Creation!public! !
!CssLinearPolynomial class categoriesFor: #with:!Instance Creation!public! !
