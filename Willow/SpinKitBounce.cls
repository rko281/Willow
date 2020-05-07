"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitBounce
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitBounce guid: (GUID fromString: '{c6d63f77-9eee-4fb4-ad32-3d73662e9f6f}')!
SpinKitBounce comment: 'I''m an SpinKit animation'!
!SpinKitBounce categoriesForClass!Willow-SpinKit! !
!SpinKitBounce methodsFor!

renderContentOn: aCanvas	aCanvas div		with: [ 1 to: 2 do: [ :index | aCanvas div apply: [ :div | div addClass spinKit bounceDot ] ] ]		applying: [ :div | div addClass spinKit bounce ]! !
!SpinKitBounce categoriesFor: #renderContentOn:!public!rendering! !

