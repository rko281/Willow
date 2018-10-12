"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #BootstrapSelectLiveSearchCommand
	instanceVariableNames: 'normalize placeholderOptional searchStyle'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelectLiveSearchCommand guid: (GUID fromString: '{54301ee3-c54a-4f26-bb9a-69cb9ef4d28f}')!
BootstrapSelectLiveSearchCommand comment: 'I''m a component command enabling the live search options on Bootstrap Select using the Data-API'!
!BootstrapSelectLiveSearchCommand categoriesForClass!Willow-Bootstrap-Frontend! !
!BootstrapSelectLiveSearchCommand methodsFor!

applyTo: aComponent on: aCanvas	self		declare: 'live-search'			with: true greaseString			applyingTo: aComponent			on: aCanvas;		declare: 'live-search-normalize'			with: normalize			applyingTo: aComponent			on: aCanvas.	placeholderOptional		withContentDo: [ :placeholder | 			self				declare: 'live-search-placeholder'				with: placeholder				applyingTo: aComponent				on: aCanvas ].	self		declare: 'live-search-style'		with: searchStyle		applyingTo: aComponent		on: aCanvas!

declare: aMetadataKey with: aMetadataValue applyingTo: aComponent on: aCanvas	(ComponentMetadataCommand toDeclare: aMetadataKey with: aMetadataValue) applyTo: aComponent on: aCanvas!

initializeNormalize: aBoolean placeholderOptional: anOptional style: theSearchStyle	normalize := aBoolean greaseString.	placeholderOptional := anOptional.	searchStyle := theSearchStyle! !
!BootstrapSelectLiveSearchCommand categoriesFor: #applyTo:on:!processing!public! !
!BootstrapSelectLiveSearchCommand categoriesFor: #declare:with:applyingTo:on:!private! !
!BootstrapSelectLiveSearchCommand categoriesFor: #initializeNormalize:placeholderOptional:style:!initialization!public! !

!BootstrapSelectLiveSearchCommand class methodsFor!

default	^ self normalize: false placeholderOptional: Optional unused style: Constants >> #bootstrap >> #contains!

normalize: aBoolean placeholderOptional: anOptional style: theSearchStyle	^ self new initializeNormalize: aBoolean placeholderOptional: anOptional style: theSearchStyle!

normalize: aBoolean placeholderText: aString style: aSearchStyle	^ self normalize: aBoolean placeholderOptional: (Optional containing: aString) style: aSearchStyle! !
!BootstrapSelectLiveSearchCommand class categoriesFor: #default!Instance Creation!public! !
!BootstrapSelectLiveSearchCommand class categoriesFor: #normalize:placeholderOptional:style:!Instance Creation!public! !
!BootstrapSelectLiveSearchCommand class categoriesFor: #normalize:placeholderText:style:!Instance Creation!public! !

