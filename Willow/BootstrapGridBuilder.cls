"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapGridBuilder
	instanceVariableNames: 'contents columnBreakpointBlock rowCommand cellCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapGridBuilder guid: (GUID fromString: '{84f2640d-89ba-4342-a457-5fac8a5cf8a6}')!
BootstrapGridBuilder comment: 'I''m a builder easing the creation of Bootstrap grids'!
!BootstrapGridBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapGridBuilder methodsFor!

addContent: aRenderable	contents add: aRenderable!

applyingToCells: aCellCommand	cellCommand := cellCommand + aCellCommand!

forExtraSmallDevices	self subclassResponsibility!

forLargeDevices	self subclassResponsibility!

forMediumDevices	self subclassResponsibility!

forSmallDevices	self subclassResponsibility!

initialize	super initialize.	contents := OrderedCollection new.	rowCommand := [ :row | row addClass bootstrapCommon row ] asWebComponentCommand.	cellCommand := [  ] asWebComponentCommand! !
!BootstrapGridBuilder categoriesFor: #addContent:!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #applyingToCells:!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #forExtraSmallDevices!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #forLargeDevices!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #forMediumDevices!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #forSmallDevices!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #initialize!initialization!public! !

!BootstrapGridBuilder class methodsFor!

isAbstract	^ self name = #BootstrapGridBuilder! !
!BootstrapGridBuilder class categoriesFor: #isAbstract!public!testing! !

