"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SpinKitFoldingCube
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitFoldingCube guid: (GUID fromString: '{833792f7-bc7e-4797-be3e-3dba10bd5afd}')!
SpinKitFoldingCube comment: 'I represent an SpinKit animation'!
!SpinKitFoldingCube categoriesForClass!Willow-SpinKit! !
!SpinKitFoldingCube methodsFor!

renderContentOn: aCanvas	aCanvas div		class: SpinKitCssStyles foldingCube;		with: [ self				renderCubeAt: 1 on: aCanvas;				renderCubeAt: 2 on: aCanvas;				renderCubeAt: 4 on: aCanvas;				renderCubeAt: 3 on: aCanvas ]!

renderCubeAt: index on: aCanvas	aCanvas div		class: (SpinKitCssStyles cube: index);		class: SpinKitCssStyles cube! !
!SpinKitFoldingCube categoriesFor: #renderContentOn:!public!rendering! !
!SpinKitFoldingCube categoriesFor: #renderCubeAt:on:!private! !

