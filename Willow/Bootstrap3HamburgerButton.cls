"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #Bootstrap3HamburgerButton
	instanceVariableNames: 'targetIdentifier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3HamburgerButton guid: (GUID fromString: '{b85fe2e4-3e37-4758-a0a0-35284126879a}')!
Bootstrap3HamburgerButton comment: 'The hamburger button  is a button typically placed in the top left or top right of a graphical user interface. It carries an icon consisting of three parallel horizontal lines.Selecting (tapping or clicking) this button results in a menu being revealed (sliding out or popping up).'!
!Bootstrap3HamburgerButton categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3HamburgerButton methodsFor!

buttonCommand	^ [ :button :constants | 	button addClass bootstrap3 navbarToggle + button addClass bootstrap3 collapsed		+ ( button setData: constants >> #bootstrap >> #toggle to: constants >> #css >> #collapse )		+ ( button setData: constants >> #bootstrap >> #target to: targetIdentifier )		+ ( button setARIAAttribute: 'expanded' to: false greaseString )	]!

initializeTargeting: aStringOrSymbol	targetIdentifier := '#', aStringOrSymbol greaseString!

renderContentOn: aCanvas	aCanvas button		bePush;		with: [ self renderIconOn: aCanvas ] applying: self buttonCommand!

renderIconOn: aCanvas	3 timesRepeat: [ aCanvas span apply: [ :span | span addClass bootstrap3 iconBar ] ]! !
!Bootstrap3HamburgerButton categoriesFor: #buttonCommand!private/rendering!public! !
!Bootstrap3HamburgerButton categoriesFor: #initializeTargeting:!initialize!public! !
!Bootstrap3HamburgerButton categoriesFor: #renderContentOn:!public!rendering! !
!Bootstrap3HamburgerButton categoriesFor: #renderIconOn:!private/rendering!public! !

!Bootstrap3HamburgerButton class methodsFor!

targeting: aStringOrSymbol	^self new initializeTargeting: aStringOrSymbol ! !
!Bootstrap3HamburgerButton class categoriesFor: #targeting:!Instance Creation!public! !

