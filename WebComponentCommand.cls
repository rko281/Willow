"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #WebComponentCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
WebComponentCommand guid: (GUID fromString: '{a9f8cb0c-9d5f-47e2-9386-c72a4bfa5c02}')!
WebComponentCommand comment: 'Abstract for the component commands, each subclass should do a single change to a tag element.'!
!WebComponentCommand categoriesForClass!Willow-Frontend! !
!WebComponentCommand methodsFor!

+ aComponentCommand	^ CompositeComponentCommand applyingAll: (Array with: self with: aComponentCommand asWebComponentCommand)!

applyTo: aComponent on: aCanvas	self subclassResponsibility!

asTableRowCommand	^WebComponentCommandToTableRowCommandAdapter adapting: self!

asWebComponentCommand	^ self! !
!WebComponentCommand categoriesFor: #+!combining!public! !
!WebComponentCommand categoriesFor: #applyTo:on:!processing!public! !
!WebComponentCommand categoriesFor: #asTableRowCommand!converting!public! !
!WebComponentCommand categoriesFor: #asWebComponentCommand!converting!public! !

