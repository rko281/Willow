"Filed out from Dolphin Smalltalk 7"!

TableRowCommand subclass: #WebComponentCommandToTableRowCommandAdapter
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebComponentCommandToTableRowCommandAdapter guid: (GUID fromString: '{e78e13a3-78e5-4fbc-b707-d33e5453e588}')!
WebComponentCommandToTableRowCommandAdapter comment: 'I''m an adapter for web component commands allowing to use it as table row commnands'!
!WebComponentCommandToTableRowCommandAdapter categoriesForClass!Willow-Core-Frontend! !
!WebComponentCommandToTableRowCommandAdapter methodsFor!

applyTo: aTableRow for: aRelatedObject on: aCanvas	command applyTo: aTableRow on: aCanvas!

initializeAdapting: aWebComponentCommand	command := aWebComponentCommand! !
!WebComponentCommandToTableRowCommandAdapter categoriesFor: #applyTo:for:on:!Applying!public! !
!WebComponentCommandToTableRowCommandAdapter categoriesFor: #initializeAdapting:!initialization!public! !

!WebComponentCommandToTableRowCommandAdapter class methodsFor!

adapting: aWebComponentCommand	^self new initializeAdapting: aWebComponentCommand! !
!WebComponentCommandToTableRowCommandAdapter class categoriesFor: #adapting:!Instance Creation!public! !

