﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapNavigationBar
	instanceVariableNames: 'componentCommand brandView navbarContent containerCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapNavigationBar guid: (GUID fromString: '{30037788-e4a0-45da-8ffa-5a1e5d07fa02}')!
BootstrapNavigationBar comment: 'Navbars are responsive meta components that serve as navigation headers for your application or site. They begin collapsed (and are toggleable) in mobile views and become horizontal as the available viewport width increases.'!
!BootstrapNavigationBar categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapNavigationBar methodsFor!

initializeStyledAs: aContainerCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent

renderContentOn: aCanvas

renderNavigationBarHeaderOn: aCanvas
!BootstrapNavigationBar categoriesFor: #initializeStyledAs:brandedWith:containing:applying:!initialization!public! !
!BootstrapNavigationBar categoriesFor: #renderContentOn:!public!rendering! !
!BootstrapNavigationBar categoriesFor: #renderNavigationBarHeaderOn:!private! !

!BootstrapNavigationBar class methodsFor!

brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent

fluidBrandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent

styledAs: aContainerStylingCommand brandedWith: aBrandWebView containing: aWebView applying: aCommandToComponent
!BootstrapNavigationBar class categoriesFor: #brandedWith:containing:applying:!Instance Creation!public! !
!BootstrapNavigationBar class categoriesFor: #fluidBrandedWith:containing:applying:!Instance Creation!public! !
!BootstrapNavigationBar class categoriesFor: #styledAs:brandedWith:containing:applying:!private/instance creation!public! !
