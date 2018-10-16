"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #BootstrapDatepickerTemplate
	instanceVariableNames: 'options'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerTemplate guid: (GUID fromString: '{0680375f-0f04-4fe7-8ae2-10c05affff91}')!
BootstrapDatepickerTemplate comment: 'I''m a JSObject used to configure the arrow templates of bootstrap-datepicker'!
!BootstrapDatepickerTemplate categoriesForClass!Willow-Bootstrap-Datepicker! !
!BootstrapDatepickerTemplate methodsFor!

initialize	super initialize.	options := GRSmallDictionary new.	options		at: 'leftArrow' put: '';		at: 'rightArrow' put: ''!

javascriptContentOn: aStream	aStream javascript: options!

leftArrow: aLeftArrowRenderable rightArrow: aRightArrowRenderable	options		at: 'leftArrow' put: (self render: aLeftArrowRenderable);		at: 'rightArrow' put: (self render: aRightArrowRenderable)! !
!BootstrapDatepickerTemplate categoriesFor: #initialize!initialization!public! !
!BootstrapDatepickerTemplate categoriesFor: #javascriptContentOn:!printing!public! !
!BootstrapDatepickerTemplate categoriesFor: #leftArrow:rightArrow:!Configuring!public! !

!BootstrapDatepickerTemplate class methodsFor!

context: aWARenderContext owner: anOwner	^ self context: aWARenderContext! !
!BootstrapDatepickerTemplate class categoriesFor: #context:owner:!Instance Creation!public! !

