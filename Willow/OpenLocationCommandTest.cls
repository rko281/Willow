"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #OpenLocationCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OpenLocationCommandTest guid: (GUID fromString: '{75ebbdfc-29f2-41fd-ba99-9285af94d54d}')!
OpenLocationCommandTest comment: ''!
!OpenLocationCommandTest categoriesForClass!Willow-Tests-Frontend! !
!OpenLocationCommandTest methodsFor!

testForNewBrowsingContextNavigatingTo	| html |	html := self		apply: (OpenLocationCommand forNewBrowsingContextNavigatingTo: 'http://www.google.com' seasideUrl)		toComponentDefinedBy: [ :canvas | canvas anchor ].	self		assert: html		equals: '<a target="_blank" rel="noopener noreferrer" href="http://www.google.com/"></a>'!

testForSameBrowsingContextNavigatingTo	| html |	html := self		apply:			(OpenLocationCommand forSameBrowsingContextNavigatingTo: 'http://www.google.com' seasideUrl)		toComponentDefinedBy: [ :canvas | canvas anchor ].	self assert: html equals: '<a href="http://www.google.com/"></a>'! !
!OpenLocationCommandTest categoriesFor: #testForNewBrowsingContextNavigatingTo!public!tests! !
!OpenLocationCommandTest categoriesFor: #testForSameBrowsingContextNavigatingTo!public!tests! !

