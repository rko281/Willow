"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #TableWebViewBuilder
	instanceVariableNames: 'columnRenderers rowCommand tableCommand headerProvider footerProvider'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TableWebViewBuilder guid: (GUID fromString: '{32aa71ab-0d6e-4594-b0d2-818372f97bde}')!
TableWebViewBuilder comment: 'I''m a builder of TableWebVIews'!
!TableWebViewBuilder categoriesForClass!Willow-Core-WebViews! !
!TableWebViewBuilder methodsFor!

addColumn: aMonadycBlock	| builder |	builder := WebTableColumnRendererBuilder on: self.	aMonadycBlock value: builder.	columnRenderers add: builder build!

apply: aTableCommand	tableCommand := tableCommand + aTableCommand!

applyToEachRow: aRowCommand	rowCommand := aRowCommand!

buildApplying: aComponentCommand	^ TableWebView		definedBy: columnRenderers		applying: tableCommand + aComponentCommand		headerRenderedBy: (headerProvider value: columnRenderers)		applyingToEachRow: rowCommand		footerRenderedBy: (footerProvider value: columnRenderers)!

doNotRenderFooter	footerProvider := [ :columns | NullTableFooterWebView new ]!

doNotRenderHeader	headerProvider := [ :columns | [ :canvas |  ] ]!

initialize	super initialize.	columnRenderers := OrderedCollection new.	tableCommand := [  ] asWebComponentCommand.	rowCommand := [  ] asWebComponentCommand.	self		doNotRenderHeader;		doNotRenderFooter!

renderFooter	footerProvider := [ :columns | TableFooterWebView definedBy: columns ]!

renderHeader	headerProvider := [ :columns | TableHeaderWebView definedBy: columns ]!

styledWith: aCssClass	self apply: (ComponentClassificationCommand toStyleWith: aCssClass)! !
!TableWebViewBuilder categoriesFor: #addColumn:!Configuring!public! !
!TableWebViewBuilder categoriesFor: #apply:!Configuring!public! !
!TableWebViewBuilder categoriesFor: #applyToEachRow:!Configuring!public! !
!TableWebViewBuilder categoriesFor: #buildApplying:!Building!public! !
!TableWebViewBuilder categoriesFor: #doNotRenderFooter!private / configuring!public! !
!TableWebViewBuilder categoriesFor: #doNotRenderHeader!private / configuring!public! !
!TableWebViewBuilder categoriesFor: #initialize!initialization!public! !
!TableWebViewBuilder categoriesFor: #renderFooter!private / configuring!public! !
!TableWebViewBuilder categoriesFor: #renderHeader!private / configuring!public! !
!TableWebViewBuilder categoriesFor: #styledWith:!Configuring!public! !

