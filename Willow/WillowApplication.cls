﻿"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WillowApplication
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
WillowApplication guid: (GUID fromString: '{81886630-cc91-4b8d-83f9-fd68c4699099}')!
WillowApplication comment: 'I''m a basic Willow application providing some guidance to the developers.'!
!WillowApplication categoriesForClass!Willow-Applications! !
!WillowApplication methodsFor!

applicationTitle

componentSupplierForApplication

contentView

deploymentMode

initialRequest: aRequest

jQueryLibrary

language

renderContentOn: aCanvas

renderDialogAndNotificationSectionsOn: aCanvas

requiredLibraries

updateRoot: aRoot
!WillowApplication categoriesFor: #applicationTitle!accessing!public! !
!WillowApplication categoriesFor: #componentSupplierForApplication!accessing!public! !
!WillowApplication categoriesFor: #contentView!accessing!public! !
!WillowApplication categoriesFor: #deploymentMode!accessing!public! !
!WillowApplication categoriesFor: #initialRequest:!hooks!public! !
!WillowApplication categoriesFor: #jQueryLibrary!accessing!public! !
!WillowApplication categoriesFor: #language!accessing!public! !
!WillowApplication categoriesFor: #renderContentOn:!public!rendering! !
!WillowApplication categoriesFor: #renderDialogAndNotificationSectionsOn:!private / rendering!public! !
!WillowApplication categoriesFor: #requiredLibraries!accessing!public! !
!WillowApplication categoriesFor: #updateRoot:!public!updating! !

!WillowApplication class methodsFor!

applicationTitle

errorHandlerFactory

handlerName

installFileHandlerAccordingTo: theDeploymentMode

registerAsApplicationUsing: deploymentModeClass

registerAsDeployedApplication

registerAsDevelopmentApplication

sessionClass

unregisterFromApplications
!WillowApplication class categoriesFor: #applicationTitle!accessing!public! !
!WillowApplication class categoriesFor: #errorHandlerFactory!accessing!public! !
!WillowApplication class categoriesFor: #handlerName!accessing!public! !
!WillowApplication class categoriesFor: #installFileHandlerAccordingTo:!private/utility!public! !
!WillowApplication class categoriesFor: #registerAsApplicationUsing:!private/utility!public! !
!WillowApplication class categoriesFor: #registerAsDeployedApplication!public!utility! !
!WillowApplication class categoriesFor: #registerAsDevelopmentApplication!public!utility! !
!WillowApplication class categoriesFor: #sessionClass!accessing!public! !
!WillowApplication class categoriesFor: #unregisterFromApplications!public!utility! !
