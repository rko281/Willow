"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapFieldAddonBuilder
	instanceVariableNames: 'groupCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapFieldAddonBuilder guid: (GUID fromString: '{91ccd266-c572-4de1-9ea5-e14c230b2d35}')!
BootstrapFieldAddonBuilder comment: ''!
!BootstrapFieldAddonBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapFieldAddonBuilder methodsFor!

appendButton: aButtonLikeComponent	self subclassResponsibility!

appendText: aRenderable	self subclassResponsibility!

beLarge	groupCommand := [ :div | div addClass bootstrapCommon inputGroupLarge ]!

beSmall	groupCommand := [ :div | div addClass bootstrapCommon inputGroupSmall ]!

initialize	groupCommand := CompositeComponentCommand empty!

prependButton: aButtonLikeComponent	self subclassResponsibility!

prependText: aRenderable	self subclassResponsibility!

wrapping: aField	self subclassResponsibility! !
!BootstrapFieldAddonBuilder categoriesFor: #appendButton:!configuring!public! !
!BootstrapFieldAddonBuilder categoriesFor: #appendText:!configuring!public! !
!BootstrapFieldAddonBuilder categoriesFor: #beLarge!configuring!public! !
!BootstrapFieldAddonBuilder categoriesFor: #beSmall!configuring!public! !
!BootstrapFieldAddonBuilder categoriesFor: #initialize!initialization!public! !
!BootstrapFieldAddonBuilder categoriesFor: #prependButton:!configuring!public! !
!BootstrapFieldAddonBuilder categoriesFor: #prependText:!configuring!public! !
!BootstrapFieldAddonBuilder categoriesFor: #wrapping:!Configuring!public! !

!BootstrapFieldAddonBuilder class methodsFor!

isAbstract	^ self name = #BootstrapFieldAddonBuilder! !
!BootstrapFieldAddonBuilder class categoriesFor: #isAbstract!public!testing! !

