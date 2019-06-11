"Filed out from Dolphin Smalltalk 7"!

JQPlugin subclass: #BootstrapPlugin
	instanceVariableNames: 'functionName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapPlugin guid: (GUID fromString: '{b0c44b3c-c3df-44cd-aec9-8cfac1b066ae}')!
BootstrapPlugin comment: 'I''m an abstract class for Bootstrap plugins. I provide support to pass a method call as a function argument.'!
!BootstrapPlugin categoriesForClass!Willow-Bootstrap-Plugins! !
!BootstrapPlugin methodsFor!

arguments	^ functionName ifNil: [ super arguments ] ifNotNil: [ :argument | Array with: argument ]!

lookupCssValue: aSymbolOrFunction	^ aSymbolOrFunction isSymbol		then: [ self constants >> #css >> aSymbolOrFunction ]		otherwise: [ aSymbolOrFunction ]!

lookupValue: aSymbolOrObject	^ aSymbolOrObject isSymbol		then: [ self constants >> #bootstrap >> aSymbolOrObject ]		otherwise: [ aSymbolOrObject ]!

optionAt: aKey put: aValue	^ super optionAt: (self lookupValue: aKey) put: (self lookupValue: aValue)! !
!BootstrapPlugin categoriesFor: #arguments!private! !
!BootstrapPlugin categoriesFor: #lookupCssValue:!private! !
!BootstrapPlugin categoriesFor: #lookupValue:!private! !
!BootstrapPlugin categoriesFor: #optionAt:put:!private! !

