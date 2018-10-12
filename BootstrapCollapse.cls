"Filed out from Dolphin Smalltalk 7"!

BootstrapPlugin subclass: #BootstrapCollapse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapCollapse guid: (GUID fromString: '{07352b10-cff3-475c-890e-6918429d01db}')!
BootstrapCollapse comment: 'Flexible plugin that utilizes a handful of classes for easy toggle behavior.'!
!BootstrapCollapse categoriesForClass!Willow-Bootstrap-Plugins! !
!BootstrapCollapse methodsFor!

hide	functionName := self lookupValue: #hide!

method	^ 'collapse'!

parent: aSelector	"If a selector is provided, then all collapsible elements under the specified parent will be closed 	when this collapsible item is shown. (similar to traditional accordion behavior - this is dependent 	on the panel class)"	self optionAt: #parent put: aSelector!

show	functionName := self lookupValue: #show!

toggle	functionName := self lookupValue: #toggle!

toggle: aBoolean	"Toggles the collapsible element on invocation"	self optionAt: #toggle put: aBoolean! !
!BootstrapCollapse categoriesFor: #hide!Methods!public! !
!BootstrapCollapse categoriesFor: #method!private! !
!BootstrapCollapse categoriesFor: #parent:!Options!public! !
!BootstrapCollapse categoriesFor: #show!Methods!public! !
!BootstrapCollapse categoriesFor: #toggle!Methods!public! !
!BootstrapCollapse categoriesFor: #toggle:!Options!public! !

