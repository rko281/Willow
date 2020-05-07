"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WillowBootstrap3ExtensionsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
WillowBootstrap3ExtensionsTest guid: (GUID fromString: '{a40cdc24-a131-4571-a71e-97fccd74bb26}')!
WillowBootstrap3ExtensionsTest comment: 'I''m a test for extensions to Willow for Bootstrap 3'!
!WillowBootstrap3ExtensionsTest categoriesForClass!Willow-Bootstrap-3-Tests-Frontend! !
!WillowBootstrap3ExtensionsTest methodsFor!

assertColumnRenderingOf: columnSize at: index	#('' 'Offset' 'Pull' 'Push')		do: [ :suffix | 			self				assertRenderingOfDivApplying: [ :div | 					div addClass bootstrap3						perform: ( #'column<1s><2s>:' expandMacrosWith: columnSize with: suffix )						with: index					]				equals:					( String						streamContents: [ :stream | 							stream								nextPutAll: '<div class="';								nextPutAll:									Classification >> #bootstrap3										>> ( #'column<1s><2s><3p>' expandMacrosWith: columnSize with: suffix with: index );								nextPutAll: '"></div>'							] )			]!

assertRenderingOfDivApplying: aCommand equals: anExpectedHTML	self assert: (self render: [ :html | html div apply: aCommand ]) equals: anExpectedHTML!

testBootstrapClassification	self		assert: ReflectiveCascadingStyleSheetBuilder new bootstrap3 >> #textCenter		equals: 'text-center'!

testBootstrapClassificationCommandBuilder	( Classification >> #bootstrap3 ) names		select: [ :selector | ( selector beginsWith: #column ) not ]		thenDo: [ :selector | 			self				assertRenderingOfDivApplying: [ :div | div addClass bootstrap3 perform: selector ]				equals:					( String						streamContents: [ :stream | 							stream								nextPutAll: '<div class="';								nextPutAll: Classification >> #bootstrap3 >> selector;								nextPutAll: '"></div>'							] )			].	1 to: 12 do: [ :index | 		#('ExtraSmall' 'Small' 'Medium' 'Large')			do: [ :columnSize | self assertColumnRenderingOf: columnSize at: index ]		]! !
!WillowBootstrap3ExtensionsTest categoriesFor: #assertColumnRenderingOf:at:!private! !
!WillowBootstrap3ExtensionsTest categoriesFor: #assertRenderingOfDivApplying:equals:!private! !
!WillowBootstrap3ExtensionsTest categoriesFor: #testBootstrapClassification!public!tests! !
!WillowBootstrap3ExtensionsTest categoriesFor: #testBootstrapClassificationCommandBuilder!public!tests! !

