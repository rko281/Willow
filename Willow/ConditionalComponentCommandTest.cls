"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ConditionalComponentCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ConditionalComponentCommandTest guid: (GUID fromString: '{f3210921-2f13-433c-902f-fe9dc61370e8}')!
ConditionalComponentCommandTest comment: 'A ConditionalComponentCommandTest is a test class for testing the behavior of ConditionalComponentCommand'!
!ConditionalComponentCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ConditionalComponentCommandTest methodsFor!

testApplyToOnWhenConditionsDependsOnComponent	| html |	html := self apply: (ConditionalComponentCommand applying: (ComponentAttributeCommand named: 'rows' with: 2) when: [ :div | div id notNil ]) toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div></div>'.	html := self apply: (ConditionalComponentCommand applying: (ComponentAttributeCommand named: 'rows' with: 2) when: [ :div | div id isNil ]) toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div rows="2"></div>'!

testApplyToOnWhenConditionsIsMet	| html |	html := self apply: (ConditionalComponentCommand applying: (ComponentAttributeCommand named: 'rows' with: 2) when: [ true ]) toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div rows="2"></div>'!

testApplyToOnWhenConditionsIsNotMet	| html |	html := self apply: (ConditionalComponentCommand applying: (ComponentAttributeCommand named: 'rows' with: 2) when: [ false ]) toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div></div>'! !
!ConditionalComponentCommandTest categoriesFor: #testApplyToOnWhenConditionsDependsOnComponent!public!tests! !
!ConditionalComponentCommandTest categoriesFor: #testApplyToOnWhenConditionsIsMet!public!tests! !
!ConditionalComponentCommandTest categoriesFor: #testApplyToOnWhenConditionsIsNotMet!public!tests! !

