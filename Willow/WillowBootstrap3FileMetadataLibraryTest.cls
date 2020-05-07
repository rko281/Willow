"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WillowBootstrap3FileMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowBootstrap3FileMetadataLibraryTest guid: (GUID fromString: '{5bbb1c5b-b04a-4658-9408-79071a674b6b}')!
WillowBootstrap3FileMetadataLibraryTest comment: ''!
!WillowBootstrap3FileMetadataLibraryTest categoriesForClass!Willow-Bootstrap-3-Tests-Libraries! !
!WillowBootstrap3FileMetadataLibraryTest methodsFor!

testCssContent	self		assert: WillowBootstrap3FileMetadataLibrary default csswillowbootstrapCssContent		equals:			'/*<n>* willow-bootstrap.css v8.0.0<n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>input[type="number"]::-webkit-outer-spin-button ,<n>input[type="number"]::-webkit-inner-spin-button<n>{<n><t>-webkit-appearance: none;<n>}<n><n>input[type="number"]<n>{<n><t>-moz-appearance: textfield;<n>}'				expandMacros!

testDeployFiles	self		assertFileDeploymentOf: WillowBootstrap3FileMetadataLibrary default		createsAsFolders: #('willow-bootstrap-8.0.0' 'willow-bootstrap-8.0.0/css' 'willow-bootstrap-8.0.0/js')		andFileContentsMatching:			{('willow-bootstrap-8.0.0/css/willow-bootstrap.css' -> 'ac56a8ae26202553d89bd1246e6631e7440fda84').			('willow-bootstrap-8.0.0/js/willow-bootstrap.js' -> 'f6a952e7149bb03d6f767b9523aed49b20372222')}!

testForDevelopment	self		assert: WillowBootstrap3FileMetadataLibrary forDeployment equals: WillowBootstrap3FileMetadataLibrary;		assert: WillowBootstrap3FileMetadataLibrary forDevelopment equals: WillowBootstrap3FileMetadataLibrary!

testIsForDevelopment	self		assert: WillowBootstrap3FileMetadataLibrary isForDevelopment;		assert: WillowBootstrap3FileMetadataLibrary isForDeployment!

testJavascriptContent	self		assert: WillowBootstrap3FileMetadataLibrary default jswillowbootstrapJsContent		equals:			'/*<n>* willow-bootstrap.js v8.0.0<n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>$.prototype.tooltip.Constructor.prototype.destroy=function(){var that = this	clearTimeout(this.timeout)	this.hide(function () {	  null!!=that.$element && that.$element.off("." + that.type).removeData("bs." + that.type)	  if (that.$tip) {		that.$tip.detach()	  }	  that.$tip = null	  that.$arrow = null	  that.$viewport = null	  that.$element = null	})};(function(){Willow.Bootstrap={"cleanModal":function(modal){modal.next("script").remove();modal.remove();if($("#willow-dialog-section").children().length==0){$(".modal-backdrop").remove()}}}}())'				expandMacros!

testVersion	self assert: WillowBootstrap3FileMetadataLibrary version equals: WillowBootstrapFileMetadataLibrary default version! !
!WillowBootstrap3FileMetadataLibraryTest categoriesFor: #testCssContent!public!tests/Accessing! !
!WillowBootstrap3FileMetadataLibraryTest categoriesFor: #testDeployFiles!public!tests/Accessing! !
!WillowBootstrap3FileMetadataLibraryTest categoriesFor: #testForDevelopment!public!tests/Accessing! !
!WillowBootstrap3FileMetadataLibraryTest categoriesFor: #testIsForDevelopment!public!tests/Accessing! !
!WillowBootstrap3FileMetadataLibraryTest categoriesFor: #testJavascriptContent!public!tests/Accessing! !
!WillowBootstrap3FileMetadataLibraryTest categoriesFor: #testVersion!public!tests/Accessing! !

