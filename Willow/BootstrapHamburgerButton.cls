"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapHamburgerButton
	instanceVariableNames: 'targetIdentifier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapHamburgerButton guid: (GUID fromString: '{dcda8089-2579-4b48-960a-e22dfaa2e5d0}')!
BootstrapHamburgerButton comment: 'The hamburger button  is a button typically placed in the top left or top right of a graphical user interface. It carries an icon consisting of three parallel horizontal lines.Selecting (tapping or clicking) this button results in a menu being revealed (sliding out or popping up).'!
!BootstrapHamburgerButton categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapHamburgerButton methodsFor!

buttonCommand	^ [ :button :constants | 	button addClass bootstrap navbarToggle + button addClass bootstrap collapsed + (button setData: constants >> #bootstrap >> #toggle to: constants >> #css >> #collapse)		+ (button setData: constants >> #bootstrap >> #target to: targetIdentifier) + (button setARIAAttribute: 'expanded' to: false greaseString) ]!

initializeTargeting: aStringOrSymbol	targetIdentifier := '#', aStringOrSymbol greaseString!

renderContentOn: aCanvas	aCanvas button		bePush;		with: [ self renderIconOn: aCanvas ] applying: self buttonCommand!

renderIconOn: aCanvas	3 timesRepeat: [ aCanvas span apply: [ :span | span addClass bootstrap iconBar ] ]! !
!BootstrapHamburgerButton categoriesFor: #buttonCommand!private/rendering!public! !
!BootstrapHamburgerButton categoriesFor: #initializeTargeting:!initialize!public! !
!BootstrapHamburgerButton categoriesFor: #renderContentOn:!public!rendering! !
!BootstrapHamburgerButton categoriesFor: #renderIconOn:!private/rendering!public! !

!BootstrapHamburgerButton class methodsFor!

targeting: aStringOrSymbol	^self new initializeTargeting: aStringOrSymbol ! !
!BootstrapHamburgerButton class categoriesFor: #targeting:!Instance Creation!public! !

