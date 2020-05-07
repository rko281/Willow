"Filed out from Dolphin Smalltalk 7"!

WillowBootstrapFileMetadataLibrary subclass: #WillowBootstrap3FileMetadataLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowBootstrap3FileMetadataLibrary guid: (GUID fromString: '{4812cd9e-87e8-4801-9450-eb03a7d179a4}')!
WillowBootstrap3FileMetadataLibrary comment: ''!
!WillowBootstrap3FileMetadataLibrary categoriesForClass!Willow-Bootstrap-3-Libraries! !
!WillowBootstrap3FileMetadataLibrary methodsFor!

putVersionSpecificHacksOn: script	self replaceTooltipDestroyFunctionIn: script!

replaceTooltipDestroyFunctionIn: script	"This fixes a problem in Bootstrap v3.3.7 when calling destroy in a tooltip twice. Checkout https://github.com/twbs/bootstrap/issues/21830 "	script << (JSStream this alias: '$.prototype.tooltip.Constructor.prototype.destroy')		assign:			(JSFunction new				add:					(JSStream						on:							'var that = this	clearTimeout(this.timeout)	this.hide(function () {	  null!!=that.$element && that.$element.off("." + that.type).removeData("bs." + that.type)	  if (that.$tip) {		that.$tip.detach()	  }	  that.$tip = null	  that.$arrow = null	  that.$viewport = null	  that.$element = null	})');				yourself)! !
!WillowBootstrap3FileMetadataLibrary categoriesFor: #putVersionSpecificHacksOn:!Accessing!public! !
!WillowBootstrap3FileMetadataLibrary categoriesFor: #replaceTooltipDestroyFunctionIn:!private! !

