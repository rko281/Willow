"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitCubeGrid
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitCubeGrid guid: (GUID fromString: '{0aba8b85-84d8-4f65-a49e-75ac72f3ff65}')!
SpinKitCubeGrid comment: 'SpinKit animation'!
!SpinKitCubeGrid categoriesForClass!Willow-SpinKit! !
!SpinKitCubeGrid methodsFor!

renderContentOn: aCanvas	aCanvas div		class: SpinKitCssStyles cubeGrid;		with: [ 1 to: 9 do: [ :index | 				aCanvas div					class: SpinKitCssStyles cube;					class: (SpinKitCssStyles cube: index) ] ]! !
!SpinKitCubeGrid categoriesFor: #renderContentOn:!public!rendering! !

