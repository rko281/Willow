"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitWander
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitWander guid: (GUID fromString: '{80127427-26bb-495d-9b68-4313c4335605}')!
SpinKitWander comment: 'SpinKit animation'!
!SpinKitWander categoriesForClass!Willow-SpinKit! !
!SpinKitWander methodsFor!

renderContentOn: aCanvas	aCanvas div		with: [ 1 to: 3 do: [ :index | aCanvas div apply: [ :div | div addClass spinKit wanderCube ] ] ]		applying: [ :div | div addClass spinKit wander ]! !
!SpinKitWander categoriesFor: #renderContentOn:!public!rendering! !

