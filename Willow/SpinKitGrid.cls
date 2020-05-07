"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitGrid
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitGrid guid: (GUID fromString: '{52bc56b8-5007-4fc1-a821-590c56773df2}')!
SpinKitGrid comment: 'SpinKit animation'!
!SpinKitGrid categoriesForClass!Willow-SpinKit! !
!SpinKitGrid methodsFor!

renderContentOn: aCanvas	aCanvas div		with: [ 1 to: 9 do: [ :index | aCanvas div apply: [ :div | div addClass spinKit gridCube ] ] ]		applying: [ :div | div addClass spinKit grid ]! !
!SpinKitGrid categoriesFor: #renderContentOn:!public!rendering! !

