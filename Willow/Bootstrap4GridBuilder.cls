"Filed out from Dolphin Smalltalk 7"!

BootstrapGridBuilder subclass: #Bootstrap4GridBuilder
	instanceVariableNames: 'columnSpec isEvenlyDistributed'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4GridBuilder guid: (GUID fromString: '{d2aac2da-f93f-40d4-abcc-106035b4fffc}')!
Bootstrap4GridBuilder comment: 'I''m a builder easing the creation of Bootstrap grids'!
!Bootstrap4GridBuilder categoriesForClass!Willow-Bootstrap-4-WebViews! !
!Bootstrap4GridBuilder methodsFor!

buildApplying: aRowCommand	^ GenericContainerWebView		wrapping: [ :canvas | 			( 1 to: self numberOfRows )				do: [ :rowIndex | self renderColumnsAt: rowIndex on: canvas ]				separatedBy: [ canvas div apply: [ :div | div addClass bootstrap4 width100Percent ] ]			]		applying: rowCommand + aRowCommand!

columnCountPerRow	^ columnSpec size!

columnsPerRow: anInteger	| spec |	isEvenlyDistributed := true.	spec := OrderedCollection new.	anInteger timesRepeat: [ spec add: 12 // anInteger ].	columnSpec := spec asArray!

columnsWidths: aCollection	AssertionChecker		enforce: [ aCollection sum = 12 ]		because: 'The specified column count must match the grid total count.'.	columnSpec := aCollection.	isEvenlyDistributed := columnSpec asSet size = 1!

contentIndexAt: rowIndex and: columnIndex	^ (rowIndex - 1) * self columnCountPerRow + columnIndex!

forExtraSmallDevices	columnBreakpointBlock := [ :column :count | 	( column when: [ isEvenlyDistributed ] apply: column addClass bootstrap4 column )		+ ( column when: [ isEvenlyDistributed not ] apply: ( column addClass bootstrap4 column: count ) )	]!

forLargeDevices	columnBreakpointBlock := [ :column :count | 	( column when: [ isEvenlyDistributed ] apply: column addClass bootstrap4 columnLarge )		+			( column when: [ isEvenlyDistributed not ] apply: ( column addClass bootstrap4 columnLarge: count ) )	]!

forMediumDevices	columnBreakpointBlock := [ :column :count | 	( column when: [ isEvenlyDistributed ] apply: column addClass bootstrap4 columnMedium )		+			( column when: [ isEvenlyDistributed not ] apply: ( column addClass bootstrap4 columnMedium: count ) )	]!

forSmallDevices	columnBreakpointBlock := [ :column :count | 	( column when: [ isEvenlyDistributed ] apply: column addClass bootstrap4 columnSmall )		+			( column when: [ isEvenlyDistributed not ] apply: ( column addClass bootstrap4 columnSmall: count ) )	]!

initialize	super initialize.	self		columnsPerRow: 2;		forExtraSmallDevices.!

numberOfRows	^ (contents size / self columnCountPerRow) ceiling!

renderColumnsAt: rowIndex on: aCanvas	1 to: self columnCountPerRow do:		[ :columnIndex | self renderContentAt: (self contentIndexAt: rowIndex and: columnIndex) spanning: (columnSpec at: columnIndex) on: aCanvas ]!

renderContentAt: aContentIndex spanning: aColumnCount on: aCanvas	[ aCanvas div		with: ( contents at: aContentIndex )		applying: [ :cell | ( columnBreakpointBlock value: cell value: aColumnCount ) + cellCommand ]	] unless: aContentIndex > contents size! !
!Bootstrap4GridBuilder categoriesFor: #buildApplying:!building!public! !
!Bootstrap4GridBuilder categoriesFor: #columnCountPerRow!private! !
!Bootstrap4GridBuilder categoriesFor: #columnsPerRow:!Configuring!public! !
!Bootstrap4GridBuilder categoriesFor: #columnsWidths:!Configuring!public! !
!Bootstrap4GridBuilder categoriesFor: #contentIndexAt:and:!private! !
!Bootstrap4GridBuilder categoriesFor: #forExtraSmallDevices!Configuring!public! !
!Bootstrap4GridBuilder categoriesFor: #forLargeDevices!Configuring!public! !
!Bootstrap4GridBuilder categoriesFor: #forMediumDevices!Configuring!public! !
!Bootstrap4GridBuilder categoriesFor: #forSmallDevices!Configuring!public! !
!Bootstrap4GridBuilder categoriesFor: #initialize!initialization!public! !
!Bootstrap4GridBuilder categoriesFor: #numberOfRows!private! !
!Bootstrap4GridBuilder categoriesFor: #renderColumnsAt:on:!private! !
!Bootstrap4GridBuilder categoriesFor: #renderContentAt:spanning:on:!private! !

