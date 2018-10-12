"Filed out from Dolphin Smalltalk 7"!

JQPlugin subclass: #BootstrapPlugin
	instanceVariableNames: 'functionName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapPlugin guid: (GUID fromString: '{986cbd37-24e2-4a6a-8b06-def082633362}')!
BootstrapPlugin comment: 'I''m an abstract class for Bootstrap plugins. I provide support to pass a method call as a function argument.'!
!BootstrapPlugin categoriesForClass!Willow-Bootstrap-Plugins! !
!BootstrapPlugin methodsFor!

arguments	^ functionName ifNil: [ super arguments ] ifNotNil: [ :argument | Array with: argument ]!

lookupCssValue: aSymbolOrFunction	^ aSymbolOrFunction isSymbol		ifTrue: [ self constants >> #css >> aSymbolOrFunction ]		ifFalse: [ aSymbolOrFunction ]!

lookupValue: aSymbolOrObject	^ aSymbolOrObject isSymbol		ifTrue: [ self constants >> #bootstrap >> aSymbolOrObject ]		ifFalse: [ aSymbolOrObject ]!

optionAt: aKey put: aValue	^ super optionAt: (self lookupValue: aKey) put: (self lookupValue: aValue)! !
!BootstrapPlugin categoriesFor: #arguments!private! !
!BootstrapPlugin categoriesFor: #lookupCssValue:!private! !
!BootstrapPlugin categoriesFor: #lookupValue:!private! !
!BootstrapPlugin categoriesFor: #optionAt:put:!private! !

