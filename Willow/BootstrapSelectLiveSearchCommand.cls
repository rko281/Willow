﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #BootstrapSelectLiveSearchCommand
	instanceVariableNames: 'normalize placeholderOptional searchStyle'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelectLiveSearchCommand guid: (GUID fromString: '{54301ee3-c54a-4f26-bb9a-69cb9ef4d28f}')!
BootstrapSelectLiveSearchCommand comment: 'I''m a component command enabling the live search options on Bootstrap Select using the Data-API'!
!BootstrapSelectLiveSearchCommand categoriesForClass!Willow-Bootstrap-Frontend! !
!BootstrapSelectLiveSearchCommand methodsFor!

applyTo: aComponent on: aCanvas

declare: aMetadataKey with: aMetadataValue applyingTo: aComponent on: aCanvas

initializeNormalize: aBoolean placeholderOptional: anOptional style: theSearchStyle
!BootstrapSelectLiveSearchCommand categoriesFor: #applyTo:on:!processing!public! !
!BootstrapSelectLiveSearchCommand categoriesFor: #declare:with:applyingTo:on:!private! !
!BootstrapSelectLiveSearchCommand categoriesFor: #initializeNormalize:placeholderOptional:style:!initialization!public! !

!BootstrapSelectLiveSearchCommand class methodsFor!

default

normalize: aBoolean placeholderOptional: anOptional style: theSearchStyle

normalize: aBoolean placeholderText: aString style: aSearchStyle
!BootstrapSelectLiveSearchCommand class categoriesFor: #default!Instance Creation!public! !
!BootstrapSelectLiveSearchCommand class categoriesFor: #normalize:placeholderOptional:style:!Instance Creation!public! !
!BootstrapSelectLiveSearchCommand class categoriesFor: #normalize:placeholderText:style:!Instance Creation!public! !
