"Filed out from Dolphin Smalltalk 7"!

BootstrapPlugin subclass: #BootstrapModal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapModal guid: (GUID fromString: '{35bf60b5-be02-432e-88b3-296795650c6c}')!
BootstrapModal comment: 'The modal plugin toggles your hidden content on demand, via data attributes or JavaScript'!
!BootstrapModal categoriesForClass!Willow-Bootstrap-Plugins! !
!BootstrapModal methodsFor!

backdrop: aBooleanOrStatic	"Includes a modal-backdrop element. Alternatively, specify static for a backdrop which doesn't close the modal on click."	self optionAt: #backdrop put: aBooleanOrStatic!

handleUpdate	"Manually readjust the modal’s position if the height of a modal changes while it is open (i.e. in case a scrollbar appears)."	functionName := 'handleUpdate'!

hide	"Manually hides a modal. Returns to the caller before the modal has actually been hidden"	functionName := self lookupValue: #hide!

keyboard: aBoolean	"Closes the modal when escape key is pressed"	self optionAt: #keyboard put: aBoolean!

method	^ self lookupValue: #modal!

onHidden: aFunction	"This event is fired when the modal has finished being hidden from the user (will wait for CSS transitions to complete)."	self call: 'on' with: (self lookupValue: #hiddenModal) with: aFunction!

onHide: aFunction	"This event is fired immediately when the hide instance method has been called."	self call: 'on' with: (self lookupValue: #hideModal) with: aFunction!

onShow: aFunction	"This event fires immediately when the show instance method is called. 	If caused by a click, the clicked element is available as the relatedTarget property of the event."	self call: 'on' with: (self lookupValue: #showModal) with: aFunction!

onShown: aFunction	"This event is fired when the modal has been made visible to the user (will wait for CSS transitions to complete). 	If caused by a click, the clicked element is available as the relatedTarget property of the event."	self call: 'on' with: (self lookupValue: #shownModal) with: aFunction!

show	"Manually opens a modal. Returns to the caller before the modal has actually been shown"	functionName := self lookupValue: #show!

show: aBoolean	"Shows the modal when initialized."	self optionAt: #show put: aBoolean!

toggle	"Manually toggles a modal. Returns to the caller before the modal has actually been shown or hidden"	functionName := self lookupValue: #toggle! !
!BootstrapModal categoriesFor: #backdrop:!Options!public! !
!BootstrapModal categoriesFor: #handleUpdate!Methods!public! !
!BootstrapModal categoriesFor: #hide!Methods!public! !
!BootstrapModal categoriesFor: #keyboard:!Options!public! !
!BootstrapModal categoriesFor: #method!private! !
!BootstrapModal categoriesFor: #onHidden:!Events!public! !
!BootstrapModal categoriesFor: #onHide:!Events!public! !
!BootstrapModal categoriesFor: #onShow:!Events!public! !
!BootstrapModal categoriesFor: #onShown:!Events!public! !
!BootstrapModal categoriesFor: #show!Methods!public! !
!BootstrapModal categoriesFor: #show:!Options!public! !
!BootstrapModal categoriesFor: #toggle!Methods!public! !

