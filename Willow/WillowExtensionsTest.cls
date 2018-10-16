"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #WillowExtensionsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
WillowExtensionsTest guid: (GUID fromString: '{f4e4734f-9bdc-4043-8708-78c964da285d}')!
WillowExtensionsTest comment: 'I''m a test case for extensions of basic Willow objects'!
!WillowExtensionsTest categoriesForClass!Willow-Bootstrap-Tests-Frontend! !
!WillowExtensionsTest methodsFor!

assertColumnRenderingOf: columnSize at: index	#('' 'Offset' 'Pull' 'Push')		do: [ :suffix | 			self				assertRenderingOfDivApplying: [ :div | div addClass bootstrap perform: (#'column<1s><2s>:' expandMacrosWith: columnSize with: suffix) with: index ]				equals:					(String						streamContents: [ :stream | 							stream								nextPutAll: '<div class="';								nextPutAll: Classification >> #bootstrap >> (#'column<1s><2s><3p>' expandMacrosWith: columnSize with: suffix with: index);								nextPutAll: '"></div>' ]) ]!

assertRenderingOfDivApplying: aCommand equals: anExpectedHTML	self assert: (self render: [ :html | html div apply: aCommand ]) equals: anExpectedHTML!

testBootstrapClassification	self assert: ReflectiveCascadingStyleSheetBuilder new bootstrap >> #textCenter equals: 'text-center'!

testBootstrapClassificationCommandBuilder	(Classification >> #bootstrap) names		select: [ :selector | (selector beginsWith: #column) not ]		thenDo: [ :selector | 			self				assertRenderingOfDivApplying: [ :div | div addClass bootstrap perform: selector ]				equals:					(String						streamContents: [ :stream | 							stream								nextPutAll: '<div class="';								nextPutAll: Classification >> #bootstrap >> selector;								nextPutAll: '"></div>' ]) ].	1 to: 12 do: [ :index | #('ExtraSmall' 'Small' 'Medium' 'Large') do: [ :columnSize | self assertColumnRenderingOf: columnSize at: index ] ]!

testIsNullCommand	self		assert: CompositeComponentCommand empty isNullCommand;		assert: (CompositeComponentCommand empty + CompositeComponentCommand empty) isNullCommand;		deny: ((ComponentAttributeCommand named: 'rows' with: 2) + (ComponentAttributeCommand named: 'columns' with: 3)) isNullCommand;		deny: DeselectAllOptionsCommand new isNullCommand! !
!WillowExtensionsTest categoriesFor: #assertColumnRenderingOf:at:!private! !
!WillowExtensionsTest categoriesFor: #assertRenderingOfDivApplying:equals:!private! !
!WillowExtensionsTest categoriesFor: #testBootstrapClassification!public!tests! !
!WillowExtensionsTest categoriesFor: #testBootstrapClassificationCommandBuilder!public!tests! !
!WillowExtensionsTest categoriesFor: #testIsNullCommand!public!tests! !

