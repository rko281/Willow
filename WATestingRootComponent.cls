"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WATestingRootComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATestingRootComponent guid: (GUID fromString: '{26dbe404-3a7d-48fb-9f68-8f6d77b4d54f}')!
WATestingRootComponent comment: 'I''m a component used for testing purposes'!
!WATestingRootComponent categoriesForClass!Boardwalk-Tests-WebApplication! !
!WATestingRootComponent methodsFor!

renderContentOn: html	html text: 'Hello world!!'!

updateRoot: aRoot	super updateRoot: aRoot.	aRoot title: 'Hello'! !
!WATestingRootComponent categoriesFor: #renderContentOn:!public!rendering! !
!WATestingRootComponent categoriesFor: #updateRoot:!public!updating! !

