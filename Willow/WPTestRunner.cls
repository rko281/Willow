﻿"Filed out from Dolphin Smalltalk 7"!

WillowApplication subclass: #WPTestRunner
	instanceVariableNames: 'contentView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPTestRunner guid: (GUID fromString: '{d0631ace-53a5-4b1f-95e2-a3733e217101}')!
WPTestRunner comment: 'I''m a web version of the test runner '!
!WPTestRunner categoriesForClass!Willow-Playground-TestRunner-Application! !
!WPTestRunner methodsFor!

componentSupplierForApplication

contentView

initialize


initializeContainerView

initialRequest: request

jQueryLibrary

newComponentSupplier

requiredLibraries

toolbarRenderingOnAction: testResult
!WPTestRunner categoriesFor: #componentSupplierForApplication!Accessing!public! !
!WPTestRunner categoriesFor: #contentView!accessing!public! !
!WPTestRunner categoriesFor: #initialize!initialization!public! !
!WPTestRunner categoriesFor: #initializeContainerView!private! !
!WPTestRunner categoriesFor: #initialRequest:!hooks!public! !
!WPTestRunner categoriesFor: #jQueryLibrary!accessing!public! !
!WPTestRunner categoriesFor: #newComponentSupplier!accessing!public! !
!WPTestRunner categoriesFor: #requiredLibraries!public!updating! !
!WPTestRunner categoriesFor: #toolbarRenderingOnAction:!private! !

!WPTestRunner class methodsFor!

applicationTitle

handlerName

sessionClass
!WPTestRunner class categoriesFor: #applicationTitle!accessing!public! !
!WPTestRunner class categoriesFor: #handlerName!accessing!public! !
!WPTestRunner class categoriesFor: #sessionClass!accessing!public! !
