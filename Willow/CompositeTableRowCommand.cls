﻿"Filed out from Dolphin Smalltalk 7"!

TableRowCommand subclass: #CompositeTableRowCommand
	instanceVariableNames: 'commands'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CompositeTableRowCommand guid: (GUID fromString: '{e1d2d752-72f9-43ca-bfb5-1596292b0632}')!
CompositeTableRowCommand comment: 'A row command collecting several sub commands to a component.'!
!CompositeTableRowCommand categoriesForClass!Willow-Frontend! !
!CompositeTableRowCommand methodsFor!

+ aTableRowCommand

applyTo: aTableRow for: aRelatedObject on: aCanvas

initializeApplyingAll: aCommandCollection
!CompositeTableRowCommand categoriesFor: #+!Combining!public! !
!CompositeTableRowCommand categoriesFor: #applyTo:for:on:!Applying!public! !
!CompositeTableRowCommand categoriesFor: #initializeApplyingAll:!initialize/release!public! !

!CompositeTableRowCommand class methodsFor!

applyingAll: aCommandCollection

empty
!CompositeTableRowCommand class categoriesFor: #applyingAll:!instance creation!public! !
!CompositeTableRowCommand class categoriesFor: #empty!instance creation!public! !
