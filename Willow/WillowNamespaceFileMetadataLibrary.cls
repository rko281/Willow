"Filed out from Dolphin Smalltalk 7"!

WADeploymentAwareFileMetadataLibrary subclass: #WillowNamespaceFileMetadataLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
WillowNamespaceFileMetadataLibrary guid: (GUID fromString: '{7a3b231d-6b4b-48aa-ba28-bd47993ffb6c}')!
WillowNamespaceFileMetadataLibrary comment: 'I''m a library providing some basic object used to define and access some utility functions.'!
!WillowNamespaceFileMetadataLibrary categoriesForClass!Willow-Core-Libraries! !
!WillowNamespaceFileMetadataLibrary methodsFor!

callServerFunction	| function |	function := JSFunction new arguments: (Array with: self sessionInformation asJavascript).	function << (self sessionInformation property: 'dataType') assign: 'script'.	function << (self sessionInformation property: 'error')		assign: WillowJavascriptNamespace new handleAjaxErrorCallFunction.	function << function jQuery call: 'ajax' with: self sessionInformation.	^ function!

defaultHandleAjaxErrorCallFunction	^ JSFunction new arguments: #(xmlHttpRequest textStatus errorThrown)!

globalWillowNamespaceDeclaration	^ JSDeclareGlobalNamespace named: self willowNamespace!

jswillowJs	^ WAFileLibraryResource		filepath: 'js/willow.js'		mimeType: WAMimeType textJavascript		cacheDuration:			(Duration				days: 0				hours: 0				minutes: 30				seconds: 0)		contents: (GRDelayedSend receiver: self selector: #jswillowJsContent)!

jswillowJsContent	^ '/*!!* willow.js v<1s>* Copyright 2018 - Buenos Aires Smalltalk* Licensed under the MIT license*/"use strict";<2s>'		expandMacrosWith: self version		with:			(self				javascriptContentFrom: [ :script | 					script << self globalWillowNamespaceDeclaration.					script << (script javascript if: (self willowNamespace identicalTo: JSStream undefined) then: (self willowNamespace assign: self willowDefaults)) ])!

nonFileSelectors	^ OrderedCollection new		addAll: super nonFileSelectors;		addAll: #(globalWillowNamespaceDeclaration willowNamespace defaultHandleAjaxErrorCallFunction sessionInformation willowDefaults callServerFunction);		yourself!

selectorsToInclude	^ #(jswillowJs)!

sessionInformation	^ JSStream on: 'sessionInformation'!

version	^self class version!

willowDefaults	^ GRSmallDictionary new		at: 'version' put: self version;		at: Constants >> #willow >> #handleAjaxErrorCallFunctionName			put: self defaultHandleAjaxErrorCallFunction;		at: Constants >> #willow >> #callServerFunctionName put: self callServerFunction;		yourself!

willowNamespace	^ WillowJavascriptNamespace new! !
!WillowNamespaceFileMetadataLibrary categoriesFor: #callServerFunction!private! !
!WillowNamespaceFileMetadataLibrary categoriesFor: #defaultHandleAjaxErrorCallFunction!private! !
!WillowNamespaceFileMetadataLibrary categoriesFor: #globalWillowNamespaceDeclaration!private! !
!WillowNamespaceFileMetadataLibrary categoriesFor: #jswillowJs!Accessing!public! !
!WillowNamespaceFileMetadataLibrary categoriesFor: #jswillowJsContent!Accessing!public! !
!WillowNamespaceFileMetadataLibrary categoriesFor: #nonFileSelectors!Accessing!public! !
!WillowNamespaceFileMetadataLibrary categoriesFor: #selectorsToInclude!Accessing!public! !
!WillowNamespaceFileMetadataLibrary categoriesFor: #sessionInformation!private! !
!WillowNamespaceFileMetadataLibrary categoriesFor: #version!Accessing!public! !
!WillowNamespaceFileMetadataLibrary categoriesFor: #willowDefaults!private! !
!WillowNamespaceFileMetadataLibrary categoriesFor: #willowNamespace!private! !

!WillowNamespaceFileMetadataLibrary class methodsFor!

forDeployment	^ self !

forDevelopment	^ self !

libraryName	^ 'willow'!

version	^ '8.0.1'! !
!WillowNamespaceFileMetadataLibrary class categoriesFor: #forDeployment!Accessing!public! !
!WillowNamespaceFileMetadataLibrary class categoriesFor: #forDevelopment!Accessing!public! !
!WillowNamespaceFileMetadataLibrary class categoriesFor: #libraryName!Accessing!public! !
!WillowNamespaceFileMetadataLibrary class categoriesFor: #version!Accessing!public! !

