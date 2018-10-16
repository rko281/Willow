"Filed out from Dolphin Smalltalk 7"!

TableRowCommand subclass: #PluggableTableRowCommand
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PluggableTableRowCommand guid: (GUID fromString: '{83958668-a1e8-44f4-ab1f-25a88fe5c18b}')!
PluggableTableRowCommand comment: 'I''m a configurable table row command'!
!PluggableTableRowCommand categoriesForClass!Willow-Frontend! !
!PluggableTableRowCommand methodsFor!

applyTo: aTableRow for: aRelatedObject on: aCanvas	block value: aTableRow value: aRelatedObject value: aCanvas!

initializeToExecute: aTryadicBlock	block := aTryadicBlock! !
!PluggableTableRowCommand categoriesFor: #applyTo:for:on:!Applying!public! !
!PluggableTableRowCommand categoriesFor: #initializeToExecute:!initialization!public! !

!PluggableTableRowCommand class methodsFor!

toExecute: aTryadicBlock	^self new initializeToExecute: aTryadicBlock! !
!PluggableTableRowCommand class categoriesFor: #toExecute:!instance creation / private!public! !

