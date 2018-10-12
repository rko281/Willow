"Filed out from Dolphin Smalltalk 7"!

Object subclass: #TableRowCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TableRowCommand guid: (GUID fromString: '{042f1dcd-e593-45a7-b4c9-30325e678103}')!
TableRowCommand comment: 'I''m a command to be applied to a table row. I expect to be evaluated with the current row, the related object and a Canvas'!
!TableRowCommand categoriesForClass!Willow-Frontend! !
!TableRowCommand methodsFor!

+ aTableRowCommand	^CompositeTableRowCommand applyingAll: (Array with: self with: aTableRowCommand)!

applyTo: aTableRow for: aRelatedObject on: aCanvas	self subclassResponsibility!

asTableRowCommand	^self! !
!TableRowCommand categoriesFor: #+!Combining!public! !
!TableRowCommand categoriesFor: #applyTo:for:on:!Applying!public! !
!TableRowCommand categoriesFor: #asTableRowCommand!Converting!public! !

