"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitFlow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitFlow guid: (GUID fromString: '{19ec706d-302f-45b1-81cf-21af1f6f1d2a}')!
SpinKitFlow comment: 'SpinKit animation'!
!SpinKitFlow categoriesForClass!Willow-SpinKit! !
!SpinKitFlow methodsFor!

renderContentOn: aCanvas	aCanvas div		with: [ 1 to: 3 do: [ :index | aCanvas div apply: [ :div | div addClass spinKit flowDot ] ] ]		applying: [ :div | div addClass spinKit flow ]! !
!SpinKitFlow categoriesFor: #renderContentOn:!public!rendering! !

