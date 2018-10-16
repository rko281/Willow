﻿"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #BootstrapDatepickerTemplate
	instanceVariableNames: 'options'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerTemplate guid: (GUID fromString: '{0680375f-0f04-4fe7-8ae2-10c05affff91}')!
BootstrapDatepickerTemplate comment: 'I''m a JSObject used to configure the arrow templates of bootstrap-datepicker'!
!BootstrapDatepickerTemplate categoriesForClass!Willow-Bootstrap-Datepicker! !
!BootstrapDatepickerTemplate methodsFor!

initialize

javascriptContentOn: aStream

leftArrow: aLeftArrowRenderable rightArrow: aRightArrowRenderable
!BootstrapDatepickerTemplate categoriesFor: #initialize!initialization!public! !
!BootstrapDatepickerTemplate categoriesFor: #javascriptContentOn:!printing!public! !
!BootstrapDatepickerTemplate categoriesFor: #leftArrow:rightArrow:!Configuring!public! !

!BootstrapDatepickerTemplate class methodsFor!

context: aWARenderContext owner: anOwner
!BootstrapDatepickerTemplate class categoriesFor: #context:owner:!Instance Creation!public! !
