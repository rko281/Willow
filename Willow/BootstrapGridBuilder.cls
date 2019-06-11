"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapGridBuilder
	instanceVariableNames: 'columnSpec rowCommand cellCommand columnBreakpointBlock contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapGridBuilder guid: (GUID fromString: '{84f2640d-89ba-4342-a457-5fac8a5cf8a6}')!
BootstrapGridBuilder comment: 'I''m a builder easing the creation of Bootstrap grids'!
!BootstrapGridBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapGridBuilder methodsFor!

addContent: aRenderable	contents add: aRenderable!

applyingToCells: aCellCommand	cellCommand := cellCommand + aCellCommand!

buildApplying: aRowCommand	^ (1 to: self numberOfRows) collect: [ :rowIndex | GenericContainerWebView wrapping: [ :canvas | self renderColumnsAt: rowIndex on: canvas ] applying: rowCommand + aRowCommand ]!

columnCountPerRow	^ columnSpec size!

columnsPerRow: anInteger	| spec |	spec := OrderedCollection new.	anInteger timesRepeat: [ spec add: 12 // anInteger ].	columnSpec := spec asArray!

columnsWidths: aCollection	AssertionChecker enforce: [ aCollection sum = 12 ] because: 'The specified column count must match the grid total count.'.	columnSpec := aCollection!

contentIndexAt: rowIndex and: columnIndex	^ (rowIndex - 1) * self columnCountPerRow + columnIndex!

forExtraSmallDevices	columnBreakpointBlock := [ :column :count | column addClass bootstrap columnExtraSmall: count ]!

forLargeDevices	columnBreakpointBlock := [ :column :count | column addClass bootstrap columnLarge: count ]!

forMediumDevices	columnBreakpointBlock := [ :column :count | column addClass bootstrap columnMedium: count ]!

forSmallDevices	columnBreakpointBlock := [ :column :count | column addClass bootstrap columnSmall: count ]!

initialize	super initialize.	columnSpec := #(6 6).	rowCommand := [ :row | row addClass bootstrap row ] asWebComponentCommand.	cellCommand := [  ] asWebComponentCommand.	self forMediumDevices.	contents := OrderedCollection new!

numberOfRows	^ (contents size / self columnCountPerRow) ceiling!

renderColumnsAt: rowIndex on: aCanvas	1 to: self columnCountPerRow do:		[ :columnIndex | self renderContentAt: (self contentIndexAt: rowIndex and: columnIndex) spanning: (columnSpec at: columnIndex) on: aCanvas ]!

renderContentAt: aContentIndex spanning: aColumnCount on: aCanvas	[ aCanvas div		with: ( contents at: aContentIndex )		applying: [ :cell | ( columnBreakpointBlock value: cell value: aColumnCount ) + cellCommand ]	] unless: aContentIndex > contents size! !
!BootstrapGridBuilder categoriesFor: #addContent:!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #applyingToCells:!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #buildApplying:!building!public! !
!BootstrapGridBuilder categoriesFor: #columnCountPerRow!private! !
!BootstrapGridBuilder categoriesFor: #columnsPerRow:!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #columnsWidths:!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #contentIndexAt:and:!private! !
!BootstrapGridBuilder categoriesFor: #forExtraSmallDevices!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #forLargeDevices!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #forMediumDevices!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #forSmallDevices!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #initialize!initialization!public! !
!BootstrapGridBuilder categoriesFor: #numberOfRows!private! !
!BootstrapGridBuilder categoriesFor: #renderColumnsAt:on:!private! !
!BootstrapGridBuilder categoriesFor: #renderContentAt:spanning:on:!private! !

