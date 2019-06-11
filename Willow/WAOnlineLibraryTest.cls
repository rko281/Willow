"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WAOnlineLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAOnlineLibraryTest guid: (GUID fromString: '{6b4cc3a4-b66b-4aab-ab52-426f268fc42c}')!
WAOnlineLibraryTest comment: 'A WAOnlineLibraryTest is a test class for testing the behavior of WAOnlineLibrary'!
!WAOnlineLibraryTest categoriesForClass!Boardwalk-Tests-WebApplication! !
!WAOnlineLibraryTest methodsFor!

testUpdateRoot	self		assert:			(self builder				rootBlock: [ :root | WATestingOnlineLibrary default updateRoot: root ];				fullDocument: true;				render: '')		equals: '<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdn.example.com/main1.0.1.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!WAOnlineLibraryTest categoriesFor: #testUpdateRoot!public!tests! !

