"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #WillowBootstrapFileMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowBootstrapFileMetadataLibraryTest guid: (GUID fromString: '{e013a8f6-4869-4954-b5d5-67025cd5af18}')!
WillowBootstrapFileMetadataLibraryTest comment: 'A WillowBootstrapFileMetadataLibraryTest is a test class for testing the behavior of WillowBootstrapFileMetadataLibrary'!
!WillowBootstrapFileMetadataLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Libraries! !
!WillowBootstrapFileMetadataLibraryTest methodsFor!

testCssContent	self		assert: WillowBootstrapFileMetadataLibrary default csswillowbootstrapCssContent		equals:			'/*<n>* willow-bootstrap.css v8.0.0<n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>input[type="number"]::-webkit-outer-spin-button ,<n>input[type="number"]::-webkit-inner-spin-button<n>{<n><t>-webkit-appearance: none;<n>}<n><n>input[type="number"]<n>{<n><t>-moz-appearance: textfield;<n>}'				expandMacros!

testDeployFiles	self		assertFileDeploymentOf: WillowBootstrapFileMetadataLibrary default		createsAsFolders: #('willow-bootstrap-8.0.0' 'willow-bootstrap-8.0.0/css' 'willow-bootstrap-8.0.0/js')		andFileContentsMatching:			{('willow-bootstrap-8.0.0/css/willow-bootstrap.css' -> 'ac56a8ae26202553d89bd1246e6631e7440fda84').			('willow-bootstrap-8.0.0/js/willow-bootstrap.js' -> 'f6a952e7149bb03d6f767b9523aed49b20372222')}!

testForDevelopment	self		assert: WillowBootstrapFileMetadataLibrary forDeployment equals: WillowBootstrapFileMetadataLibrary;		assert: WillowBootstrapFileMetadataLibrary forDevelopment equals: WillowBootstrapFileMetadataLibrary!

testIsForDevelopment	self		assert: WillowBootstrapFileMetadataLibrary isForDevelopment;		assert: WillowBootstrapFileMetadataLibrary isForDeployment!

testJavascriptContent	self		assert: WillowBootstrapFileMetadataLibrary default jswillowbootstrapJsContent		equals:			'/*<n>* willow-bootstrap.js v8.0.0<n>* Copyright 2018 - Buenos Aires Smalltalk<n>* Licensed under the MIT license<n>*/<n>$.prototype.tooltip.Constructor.prototype.destroy=function(){var that = this	clearTimeout(this.timeout)	this.hide(function () {	  null!!=that.$element && that.$element.off("." + that.type).removeData("bs." + that.type)	  if (that.$tip) {		that.$tip.detach()	  }	  that.$tip = null	  that.$arrow = null	  that.$viewport = null	  that.$element = null	})};(function(){Willow.Bootstrap={"cleanModal":function(modal){modal.next("script").remove();modal.remove();if($("#willow-dialog-section").children().length==0){$(".modal-backdrop").remove()}}}}())'				expandMacros!

testVersion	self assert: WillowBootstrapFileMetadataLibrary version equals: WillowBootstrapFileMetadataLibrary default version! !
!WillowBootstrapFileMetadataLibraryTest categoriesFor: #testCssContent!public!tests/Accessing! !
!WillowBootstrapFileMetadataLibraryTest categoriesFor: #testDeployFiles!public!tests/Accessing! !
!WillowBootstrapFileMetadataLibraryTest categoriesFor: #testForDevelopment!public!tests/Accessing! !
!WillowBootstrapFileMetadataLibraryTest categoriesFor: #testIsForDevelopment!public!tests/Accessing! !
!WillowBootstrapFileMetadataLibraryTest categoriesFor: #testJavascriptContent!public!tests/Accessing! !
!WillowBootstrapFileMetadataLibraryTest categoriesFor: #testVersion!public!tests/Accessing! !

