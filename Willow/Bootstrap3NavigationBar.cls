"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #Bootstrap3NavigationBar
	instanceVariableNames: 'componentCommand brandView navbarContent containerCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3NavigationBar guid: (GUID fromString: '{11b2dad4-05e4-482b-b55d-39e099612fe7}')!
Bootstrap3NavigationBar comment: 'Navbars are responsive meta components that serve as navigation headers for your application or site. They begin collapsed (and are toggleable) in mobile views and become horizontal as the available viewport width increases.'!
!Bootstrap3NavigationBar categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3NavigationBar methodsFor!

initializeStyledAs: aContainerCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent	containerCommand := aContainerCommand.	componentCommand := aCommandToComponent.	navbarContent := IdentifiedWebView		forDivNamed: 'navbar-content'		containing: aWebView		applying: [ :div | div addClass bootstrap3 collapse + div addClass bootstrap3 navbarCollapse ].	brandView := aBrandWebView!

renderContentOn: aCanvas	aCanvas navigation		with: [ aCanvas div				with: [ self renderNavigationBarHeaderOn: aCanvas.					aCanvas render: navbarContent					]				applying: containerCommand			]		applying: [ :nav | nav addClass bootstrap3 navbar + componentCommand ]!

renderNavigationBarHeaderOn: aCanvas	aCanvas div		with: [ navbarContent identifyIn: aCanvas.			aCanvas				render: ( Bootstrap3HamburgerButton targeting: navbarContent identifier );				render:					( self componentSupplier						asynchronicLinkLabeled: brandView						applying: [ :anchor :constants | ( anchor setARIARoleTo: #button ) + anchor addClass bootstrap3 navbarBrand ] )			]		applying: [ :div | div addClass bootstrap3 navbarHeader ]! !
!Bootstrap3NavigationBar categoriesFor: #initializeStyledAs:brandedWith:containing:applying:!initialization!public! !
!Bootstrap3NavigationBar categoriesFor: #renderContentOn:!public!rendering! !
!Bootstrap3NavigationBar categoriesFor: #renderNavigationBarHeaderOn:!private! !

!Bootstrap3NavigationBar class methodsFor!

brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent	^ self		styledAs: [ :container | container addClass bootstrap3 container ]		brandedWith: aBrandWebView		containing: aWebView		applying: aCommandToComponent!

fluidBrandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent	^ self		styledAs: [ :container | container addClass bootstrap3 containerFluid ]		brandedWith: aBrandWebView		containing: aWebView		applying: aCommandToComponent!

styledAs: aContainerStylingCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent	^ self new		initializeStyledAs: aContainerStylingCommand		brandedWith: aBrandWebView		containing: aWebView		applying: aCommandToComponent asWebComponentCommand ! !
!Bootstrap3NavigationBar class categoriesFor: #brandedWith:containing:applying:!Instance Creation!public! !
!Bootstrap3NavigationBar class categoriesFor: #fluidBrandedWith:containing:applying:!Instance Creation!public! !
!Bootstrap3NavigationBar class categoriesFor: #styledAs:brandedWith:containing:applying:!private/instance creation!public! !

