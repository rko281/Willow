"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapNotificationBuilder
	instanceVariableNames: 'alertCommand content dismissCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapNotificationBuilder guid: (GUID fromString: '{9404e937-36ce-43d7-bb92-d2ec61c53123}')!
BootstrapNotificationBuilder comment: 'I''m a builder of bootstrap alerts'!
!BootstrapNotificationBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapNotificationBuilder methodsFor!

buildApplying: aComponentCommand	^ GenericContainerWebView wrapping: content applying: alertCommand + dismissCommand + aComponentCommand!

danger		alertCommand := BootstrapAlertCommand danger!

dismissibleWrapping: aRenderable	| button |	button := BootstrapDismissButton dismissing: Constants >> #aria >> #alert.	content := [ :html | 	html		render: button;		render: aRenderable ].	dismissCommand := [ :container | container addClass bootstrap alertDismissible ]!

informational	alertCommand := BootstrapAlertCommand informational!

initialize	super initialize.	self informational.	dismissCommand := [ :container |  ] asWebComponentCommand.	content := ''!

success		alertCommand := BootstrapAlertCommand success !

warning		alertCommand := BootstrapAlertCommand warning !

wrapping: aRenderable	content := aRenderable! !
!BootstrapNotificationBuilder categoriesFor: #buildApplying:!Building!public! !
!BootstrapNotificationBuilder categoriesFor: #danger!Configuring!public! !
!BootstrapNotificationBuilder categoriesFor: #dismissibleWrapping:!Configuring!public! !
!BootstrapNotificationBuilder categoriesFor: #informational!Configuring!public! !
!BootstrapNotificationBuilder categoriesFor: #initialize!initialization!public! !
!BootstrapNotificationBuilder categoriesFor: #success!Configuring!public! !
!BootstrapNotificationBuilder categoriesFor: #warning!Configuring!public! !
!BootstrapNotificationBuilder categoriesFor: #wrapping:!Configuring!public! !

