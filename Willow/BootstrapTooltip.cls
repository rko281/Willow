"Filed out from Dolphin Smalltalk 7"!

BootstrapPlugin subclass: #BootstrapTooltip
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapTooltip guid: (GUID fromString: '{e6c0d1ae-4080-4637-a700-9fb127a4d646}')!
BootstrapTooltip comment: 'The tooltip plugin let''s  you show or  hide tooltips, via data attributes or JavaScript'!
!BootstrapTooltip categoriesForClass!Willow-Bootstrap-Plugins! !
!BootstrapTooltip methodsFor!

animation: aBoolean	"Apply a CSS fade transition to the tooltip"	self optionAt: #animation put: aBoolean!

container: aStringOrFalse	"Appends the tooltip to a specific element. 	Example: container: 'body'. 	This option is particularly useful in that it allows you to position the tooltip in the flow of the document near the triggering element	- which will prevent the tooltip from floating away from the triggering element during a window resize."	self optionAt: #container put: aStringOrFalse!

delay: aNumberOrObject	"Delay showing and hiding the tooltip (ms) - does not apply to manual trigger type	If a number is supplied, delay is applied to both hide/show	Use an instance of BootstrapDelayConfiguration to specify a different delay for hide or show"	self optionAt: #delay put: aNumberOrObject!

hide	"Hides an element's tooltip. Returns to the caller before the tooltip has actually been hidden (i.e. before the hidden.bs.tooltip event occurs). 	This is considered a manual triggering of the tooltip."	functionName := self lookupValue: #hide!

html: aBoolean	"Insert HTML into the tooltip. If false, jQuery's text method will be used to insert content into the DOM. Use text if you're worried about XSS attacks."	self optionAt: #html put: aBoolean!

htmlTitle: aRenderable	self		html: true;		title: (self render: aRenderable)!

method	^ 'tooltip'!

placement: aStringOrFunction	"How to position the tooltip - top | bottom | left | right | auto.	When auto is specified, it will dynamically reorient the tooltip. 	For example, if placement is auto left, the tooltip will display to the left when possible, otherwise it will display right.	When a function is used to determine the placement, it is called with the tooltip DOM node as its first argument and the triggering element DOM node as its second. 	The this context is set to the tooltip instance."	self optionAt: #placement put: (self lookupCssValue: aStringOrFunction)!

sanitize: aBoolean	"Enable or disable the sanitization. If activated 'template', 'content' and 'title' options will be sanitized."	self optionAt: #sanitize put: aBoolean!

sanitizeFunction: aJSFunction	"Here you can supply your own sanitize function. This can be useful if you prefer to use a dedicated library to perform sanitization."	self optionAt: #sanitizeFn put: aJSFunction!

selector: aString	"If a selector is provided, tooltip objects will be delegated to the specified targets. 	In practice, this is used to enable dynamic HTML content to have tooltips added. "	self optionAt: #selector put: aString!

show	"Reveals an element's tooltip. Returns to the caller before the tooltip has actually been shown (i.e. before the shown.bs.tooltip event occurs). 	This is considered a manual triggering of the tooltip. Tooltips with zero-length titles are never displayed."	functionName := self lookupValue: #show!

template: aRenderable	"Base HTML to use when creating the tooltip.	The tooltip's title will be injected into the .tooltip-inner.	.tooltip-arrow will become the tooltip's arrow.	The outermost wrapper element should have the .tooltip class."	self optionAt: #template put: (self render: aRenderable)!

title: aStringOrFunction	"Default title value if title attribute isn't present.	If a function is given, it will be called with its this reference set to the element that the tooltip is attached to."	self optionAt: #title put: aStringOrFunction!

toggle	"Toggles an element's tooltip. Returns to the caller before the tooltip has actually been shown or hidden. 	This is considered a manual triggering of the tooltip."	functionName := self lookupValue: #toggle!

trigger: aString	"How tooltip is triggered - click | hover | focus | manual. 	You may pass multiple triggers; separate them with a space. manual cannot be combined with any other trigger."	self optionAt: #trigger put: aString!

whiteList: anAssociationArray	"Object which contains allowed attributes and tags"	| object |	object := GRSmallDictionary new.	anAssociationArray do: [ :association | object at: association key put: association value asArray ].	self optionAt: #whiteList put: object! !
!BootstrapTooltip categoriesFor: #animation:!Options!public! !
!BootstrapTooltip categoriesFor: #container:!Options!public! !
!BootstrapTooltip categoriesFor: #delay:!Options!public! !
!BootstrapTooltip categoriesFor: #hide!Methods!public! !
!BootstrapTooltip categoriesFor: #html:!Options!public! !
!BootstrapTooltip categoriesFor: #htmlTitle:!Options!public! !
!BootstrapTooltip categoriesFor: #method!private! !
!BootstrapTooltip categoriesFor: #placement:!Options!public! !
!BootstrapTooltip categoriesFor: #sanitize:!Options!public! !
!BootstrapTooltip categoriesFor: #sanitizeFunction:!Options!public! !
!BootstrapTooltip categoriesFor: #selector:!Options!public! !
!BootstrapTooltip categoriesFor: #show!Methods!public! !
!BootstrapTooltip categoriesFor: #template:!Options!public! !
!BootstrapTooltip categoriesFor: #title:!Options!public! !
!BootstrapTooltip categoriesFor: #toggle!Methods!public! !
!BootstrapTooltip categoriesFor: #trigger:!Options!public! !
!BootstrapTooltip categoriesFor: #whiteList:!Options!public! !

