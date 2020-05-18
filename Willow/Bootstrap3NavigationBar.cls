﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #Bootstrap3NavigationBar
	instanceVariableNames: 'componentCommand brandView navbarContent containerCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3NavigationBar guid: (GUID fromString: '{11b2dad4-05e4-482b-b55d-39e099612fe7}')!
Bootstrap3NavigationBar comment: 'Navbars are responsive meta components that serve as navigation headers for your application or site. They begin collapsed (and are toggleable) in mobile views and become horizontal as the available viewport width increases.'!
!Bootstrap3NavigationBar categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3NavigationBar methodsFor!

initializeStyledAs: aContainerCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent

renderContentOn: aCanvas

renderNavigationBarHeaderOn: aCanvas
!Bootstrap3NavigationBar categoriesFor: #initializeStyledAs:brandedWith:containing:applying:!initialization!public! !
!Bootstrap3NavigationBar categoriesFor: #renderContentOn:!public!rendering! !
!Bootstrap3NavigationBar categoriesFor: #renderNavigationBarHeaderOn:!private! !

!Bootstrap3NavigationBar class methodsFor!

brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent

fluidBrandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent

styledAs: aContainerStylingCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent
!Bootstrap3NavigationBar class categoriesFor: #brandedWith:containing:applying:!Instance Creation!public! !
!Bootstrap3NavigationBar class categoriesFor: #fluidBrandedWith:containing:applying:!Instance Creation!public! !
!Bootstrap3NavigationBar class categoriesFor: #styledAs:brandedWith:containing:applying:!private/instance creation!public! !
