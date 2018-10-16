"Filed out from Dolphin Smalltalk 7"!

WASystemConfiguration subclass: #WillowSystemConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowSystemConfiguration guid: (GUID fromString: '{b8460fe3-1aa3-4541-8602-7858d76e0db2}')!
WillowSystemConfiguration comment: 'I provide configuration for a Willow Application. For the moment the deployment mode.'!
!WillowSystemConfiguration categoriesForClass!Willow-Applications! !
!WillowSystemConfiguration methodsFor!

describeOn: config	(config classBinding: self class deploymentModeClassKey)		comment: 'The deployment mode of the application.';		options: WADeploymentMode subclasses;		default: WAApplicationInDevelopment.	(config string: self class languageKey)		group: #willow;		comment: 'The language of the application ("en" if absent)';		default: 'en'! !
!WillowSystemConfiguration categoriesFor: #describeOn:!description!public! !

!WillowSystemConfiguration class methodsFor!

deploymentModeClassKey	 ^#deploymentModeClass!

languageKey	 ^#language! !
!WillowSystemConfiguration class categoriesFor: #deploymentModeClassKey!Accessing!public! !
!WillowSystemConfiguration class categoriesFor: #languageKey!Accessing!public! !

