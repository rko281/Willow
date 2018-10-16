"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapNavigationBar
	instanceVariableNames: 'componentCommand brandView navbarContent containerCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapNavigationBar guid: (GUID fromString: '{30037788-e4a0-45da-8ffa-5a1e5d07fa02}')!
BootstrapNavigationBar comment: 'Navbars are responsive meta components that serve as navigation headers for your application or site. They begin collapsed (and are toggleable) in mobile views and become horizontal as the available viewport width increases.'!
!BootstrapNavigationBar categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapNavigationBar methodsFor!

initializeStyledAs: aContainerCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent	containerCommand := aContainerCommand.	componentCommand := aCommandToComponent.	navbarContent := IdentifiedWebView		forDivNamed: 'navbar-content'		containing: aWebView		applying: [ :div | div addClass bootstrap collapse + div addClass bootstrap navbarCollapse ].	brandView := aBrandWebView!

renderContentOn: aCanvas	aCanvas navigation		with: [ aCanvas div				with: [ self renderNavigationBarHeaderOn: aCanvas.					aCanvas render: navbarContent ]				applying: containerCommand ]		applying: [ :nav | nav addClass bootstrap navbar + componentCommand ]!

renderNavigationBarHeaderOn: aCanvas	aCanvas div		with: [ navbarContent identifyIn: aCanvas.			aCanvas				render: (BootstrapHamburgerButton targeting: navbarContent identifier);				render: (self componentSupplier asynchronicLinkLabeled: brandView applying: [ :anchor :constants | (anchor setARIARoleTo: #button) + anchor addClass bootstrap navbarBrand ]) ]		applying: [ :div | div addClass bootstrap navbarHeader ]! !
!BootstrapNavigationBar categoriesFor: #initializeStyledAs:brandedWith:containing:applying:!initialization!public! !
!BootstrapNavigationBar categoriesFor: #renderContentOn:!public!rendering! !
!BootstrapNavigationBar categoriesFor: #renderNavigationBarHeaderOn:!private! !

!BootstrapNavigationBar class methodsFor!

brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent	^ self		styledAs: [ :container | container addClass bootstrap container ]		brandedWith: aBrandWebView		containing: aWebView		applying: aCommandToComponent!

fluidBrandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent	^ self		styledAs: [ :container | container addClass bootstrap containerFluid ]		brandedWith: aBrandWebView		containing: aWebView		applying: aCommandToComponent!

styledAs: aContainerStylingCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent	^ self new		initializeStyledAs: aContainerStylingCommand		brandedWith: aBrandWebView		containing: aWebView		applying: aCommandToComponent asWebComponentCommand ! !
!BootstrapNavigationBar class categoriesFor: #brandedWith:containing:applying:!Instance Creation!public! !
!BootstrapNavigationBar class categoriesFor: #fluidBrandedWith:containing:applying:!Instance Creation!public! !
!BootstrapNavigationBar class categoriesFor: #styledAs:brandedWith:containing:applying:!private/instance creation!public! !

