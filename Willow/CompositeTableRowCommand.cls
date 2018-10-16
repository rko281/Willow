"Filed out from Dolphin Smalltalk 7"!

TableRowCommand subclass: #CompositeTableRowCommand
	instanceVariableNames: 'commands'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CompositeTableRowCommand guid: (GUID fromString: '{e1d2d752-72f9-43ca-bfb5-1596292b0632}')!
CompositeTableRowCommand comment: 'A row command collecting several sub commands to a component.'!
!CompositeTableRowCommand categoriesForClass!Willow-Frontend! !
!CompositeTableRowCommand methodsFor!

+ aTableRowCommand	^self class applyingAll: (		OrderedCollection new 			addAll: commands;			add: aTableRowCommand;			yourself)!

applyTo: aTableRow for: aRelatedObject on: aCanvas 	commands do: [ :command | command applyTo: aTableRow for: aRelatedObject on: aCanvas ]!

initializeApplyingAll: aCommandCollection	commands := OrderedCollection withAll: aCommandCollection! !
!CompositeTableRowCommand categoriesFor: #+!Combining!public! !
!CompositeTableRowCommand categoriesFor: #applyTo:for:on:!Applying!public! !
!CompositeTableRowCommand categoriesFor: #initializeApplyingAll:!initialize/release!public! !

!CompositeTableRowCommand class methodsFor!

applyingAll: aCommandCollection	^self new initializeApplyingAll: aCommandCollection!

empty	^self applyingAll: #()! !
!CompositeTableRowCommand class categoriesFor: #applyingAll:!instance creation!public! !
!CompositeTableRowCommand class categoriesFor: #empty!instance creation!public! !

