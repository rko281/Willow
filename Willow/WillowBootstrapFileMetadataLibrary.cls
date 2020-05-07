"Filed out from Dolphin Smalltalk 7"!

WADeploymentAwareFileMetadataLibrary subclass: #WillowBootstrapFileMetadataLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowBootstrapFileMetadataLibrary guid: (GUID fromString: '{5a8be289-41b8-4ed6-9638-952b8b84544d}')!
WillowBootstrapFileMetadataLibrary comment: 'I''m a library providing some CSS required for the integration to work correctly.'!
!WillowBootstrapFileMetadataLibrary categoriesForClass!Willow-Bootstrap-Libraries! !
!WillowBootstrapFileMetadataLibrary methodsFor!

classification	^ Willow classification!

cleanModalFunctionUsing: script	| function |	function := JSFunction new arguments: #(modal).	function << ((script jQuery new alias: 'modal') next: WAScriptTag new tag) remove.	function << (script jQuery new alias: 'modal') remove.	function <<	(script javascript				if: ((script jQuery id: self constants >> #willow >> #dialogSectionName) children length equalTo: 0)				then: (script jQuery class: self classification >> #bootstrapCommon >> #modalBackdrop) remove).	^ function!

constants	^ Willow constants!

csswillowbootstrapCss	^WAFileLibraryResource		filepath: 'css/willow-bootstrap.css'		mimeType: WAMimeType textCss		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)		contents: self csswillowbootstrapCssContent!

csswillowbootstrapCssContent	^'/*<n>* willow-bootstrap.css v<1s><n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n><2p>'		expandMacrosWith: self version		with: WillowBootstrapCascadingStyleSheetBuilder new build!

jswillowbootstrapJs	^ WAFileLibraryResource		filepath: 'js/willow-bootstrap.js'		mimeType: (WAMimeType main: 'application' sub: 'javascript')		cacheDuration: self class defaultCacheDuration		contents: self jswillowbootstrapJsContent!

jswillowbootstrapJsContent	^ '/*<n>* willow-bootstrap.js v<1s><n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n><2s>'		expandMacrosWith: self version		with:			( self				javascriptContentFrom: [ :script | 					| bootstrap |					self putVersionSpecificHacksOn: script.					bootstrap := script willow bootstrap.					bootstrap						assign:							( GRSmallDictionary new								at: self constants >> #bootstrap >> #cleanModalFunctionName									put: ( self cleanModalFunctionUsing: script );								yourself ).					script << bootstrap asImmediatelyInvokedFunctionExpression					] )!

putVersionSpecificHacksOn: script	!

selectorsToInclude	^ #(csswillowbootstrapCss jswillowbootstrapJs)!

version	^self class version! !
!WillowBootstrapFileMetadataLibrary categoriesFor: #classification!private! !
!WillowBootstrapFileMetadataLibrary categoriesFor: #cleanModalFunctionUsing:!private! !
!WillowBootstrapFileMetadataLibrary categoriesFor: #constants!private! !
!WillowBootstrapFileMetadataLibrary categoriesFor: #csswillowbootstrapCss!Accessing!public! !
!WillowBootstrapFileMetadataLibrary categoriesFor: #csswillowbootstrapCssContent!Accessing!public! !
!WillowBootstrapFileMetadataLibrary categoriesFor: #jswillowbootstrapJs!Accessing!public! !
!WillowBootstrapFileMetadataLibrary categoriesFor: #jswillowbootstrapJsContent!Accessing!public! !
!WillowBootstrapFileMetadataLibrary categoriesFor: #putVersionSpecificHacksOn:!Accessing!public! !
!WillowBootstrapFileMetadataLibrary categoriesFor: #selectorsToInclude!Accessing!public! !
!WillowBootstrapFileMetadataLibrary categoriesFor: #version!Accessing!public! !

!WillowBootstrapFileMetadataLibrary class methodsFor!

forDeployment	^ self !

forDevelopment	^ self !

libraryName	^ 'willow-bootstrap'!

version	^ '8.0.0'! !
!WillowBootstrapFileMetadataLibrary class categoriesFor: #forDeployment!Accessing!public! !
!WillowBootstrapFileMetadataLibrary class categoriesFor: #forDevelopment!Accessing!public! !
!WillowBootstrapFileMetadataLibrary class categoriesFor: #libraryName!Accessing!public! !
!WillowBootstrapFileMetadataLibrary class categoriesFor: #version!Accessing!public! !

