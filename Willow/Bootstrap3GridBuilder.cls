"Filed out from Dolphin Smalltalk 7"!

BootstrapGridBuilder subclass: #Bootstrap3GridBuilder
	instanceVariableNames: 'columnSpec'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3GridBuilder guid: (GUID fromString: '{b05f9981-dbdc-4485-9400-46decd6febee}')!
Bootstrap3GridBuilder comment: 'I''m a builder easing the creation of Bootstrap grids'!
!Bootstrap3GridBuilder categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3GridBuilder methodsFor!

buildApplying: aRowCommand	^ ( 1 to: self numberOfRows )		collect: [ :rowIndex | 			GenericContainerWebView				wrapping: [ :canvas | self renderColumnsAt: rowIndex on: canvas ]				applying: rowCommand + aRowCommand			]!

columnCountPerRow	^ columnSpec size!

columnsPerRow: anInteger	| spec |	spec := OrderedCollection new.	anInteger timesRepeat: [ spec add: 12 // anInteger ].	columnSpec := spec asArray!

columnsWidths: aCollection	AssertionChecker enforce: [ aCollection sum = 12 ] because: 'The specified column count must match the grid total count.'.	columnSpec := aCollection!

contentIndexAt: rowIndex and: columnIndex	^ (rowIndex - 1) * self columnCountPerRow + columnIndex!

forExtraSmallDevices 	columnBreakpointBlock := [ :column :count | column addClass bootstrap3 columnExtraSmall: count ]!

forLargeDevices	columnBreakpointBlock := [ :column :count | column addClass bootstrap3 columnLarge: count ]!

forMediumDevices	columnBreakpointBlock := [ :column :count | column addClass bootstrap3 columnMedium: count ]!

forSmallDevices	columnBreakpointBlock := [ :column :count | column addClass bootstrap3 columnSmall: count ]!

initialize	super initialize.	columnSpec := #(6 6).	cellCommand := [  ] asWebComponentCommand.	self forMediumDevices!

numberOfRows	^ (contents size / self columnCountPerRow) ceiling!

renderColumnsAt: rowIndex on: aCanvas	1 to: self columnCountPerRow do:		[ :columnIndex | self renderContentAt: (self contentIndexAt: rowIndex and: columnIndex) spanning: (columnSpec at: columnIndex) on: aCanvas ]!

renderContentAt: aContentIndex spanning: aColumnCount on: aCanvas	[ aCanvas div		with: ( contents at: aContentIndex )		applying: [ :cell | ( columnBreakpointBlock value: cell value: aColumnCount ) + cellCommand ]	] unless: aContentIndex > contents size! !
!Bootstrap3GridBuilder categoriesFor: #buildApplying:!building!public! !
!Bootstrap3GridBuilder categoriesFor: #columnCountPerRow!private! !
!Bootstrap3GridBuilder categoriesFor: #columnsPerRow:!Configuring!public! !
!Bootstrap3GridBuilder categoriesFor: #columnsWidths:!Configuring!public! !
!Bootstrap3GridBuilder categoriesFor: #contentIndexAt:and:!private! !
!Bootstrap3GridBuilder categoriesFor: #forExtraSmallDevices!Configuring!public! !
!Bootstrap3GridBuilder categoriesFor: #forLargeDevices!Configuring!public! !
!Bootstrap3GridBuilder categoriesFor: #forMediumDevices!Configuring!public! !
!Bootstrap3GridBuilder categoriesFor: #forSmallDevices!Configuring!public! !
!Bootstrap3GridBuilder categoriesFor: #initialize!initialization!public! !
!Bootstrap3GridBuilder categoriesFor: #numberOfRows!private! !
!Bootstrap3GridBuilder categoriesFor: #renderColumnsAt:on:!private! !
!Bootstrap3GridBuilder categoriesFor: #renderContentAt:spanning:on:!private! !

