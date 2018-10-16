﻿"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #TableWebViewBuilder
	instanceVariableNames: 'columnRenderers rowCommand tableCommand headerProvider footerProvider'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TableWebViewBuilder guid: (GUID fromString: '{32aa71ab-0d6e-4594-b0d2-818372f97bde}')!
TableWebViewBuilder comment: 'I''m a builder of TableWebVIews'!
!TableWebViewBuilder categoriesForClass!Willow-WebViews! !
!TableWebViewBuilder methodsFor!

addColumn: aMonadycBlock

apply: aTableCommand

applyToEachRow: aRowCommand

buildApplying: aComponentCommand

doNotRenderFooter

doNotRenderHeader

initialize

renderFooter

renderHeader

styledWith: aCssClass
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
