﻿"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #CombinedWebInteractionInterpreterTest
	instanceVariableNames: 'okButton cancelButton'
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
CombinedWebInteractionInterpreterTest guid: (GUID fromString: '{c0934444-ad85-4d35-8a86-556e1c043707}')!
CombinedWebInteractionInterpreterTest comment: 'A CombinedWebInteractionInterpreterTest is a test class for testing the behavior of CombinedWebInteractionInterpreter'!
!CombinedWebInteractionInterpreterTest categoriesForClass!Willow-Tests-WebInteraction! !
!CombinedWebInteractionInterpreterTest methodsFor!

buttons

setUp

testAddCssClass

testAddCssClassToComponentsMatching

testChangeCssClassTo

testCloseAllDialogs

testCloseLastDialog

testConfirmAsking

testDetermineBehaviorByEvaluating

testDetermineBehaviorByEvaluatingWith

testDisable

testEnable

testEvaluate

testEvaluateWith

testExecuteOnClient

testFocus

testFocusUsing

testInform

testInformSelection

testOnlyWhenDetermineBehaviorByEvaluating

testOpen

testRemove

testRemoveCssClassFromComponentsMatching

testRemoveCssClassFromComponentsWithClass

testRender

testRenderAll

testScrollingIntoView

testSerializeChildForm

testSerializeContainerForm

testSerializeForm

testSerializeIt

testSerializeWithHiddenInputs

testSetValueToThenTriggerChangeOf

testSetValueToWithoutTriggeringChangeOnComponentWithId

testShowLoadingNotificationStyledAsAll

testShowWhileCallingServerToRender

testSubmitForm

testSubmitFormStyledAs

testTemporarilyDisableAndTransformInto

testTemporarilyDisableAndTransformSelfInto

testToggleCssClass

testToggleCssClassOn

testToggleCssClassOnComponentsMatching

testTransformInto
!CombinedWebInteractionInterpreterTest categoriesFor: #buttons!initialization!public! !
!CombinedWebInteractionInterpreterTest categoriesFor: #setUp!initialization!public! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testAddCssClass!public!tests/Configuring / CSS! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testAddCssClassToComponentsMatching!public!tests/Configuring / CSS! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testChangeCssClassTo!public!tests/Configuring / CSS! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testCloseAllDialogs!public!tests/Configuring / Dialogs! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testCloseLastDialog!public!tests/Configuring / Dialogs! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testConfirmAsking!public!tests/Configuring! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testDetermineBehaviorByEvaluating!public!tests/Configuring! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testDetermineBehaviorByEvaluatingWith!public!tests/Configuring! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testDisable!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testEnable!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testEvaluate!public!tests/Configuring! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testEvaluateWith!public!tests/Configuring! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testExecuteOnClient!public!tests/Configuring! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testFocus!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testFocusUsing!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testInform!public!tests/Configuring! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testInformSelection!public!tests/Configuring! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testOnlyWhenDetermineBehaviorByEvaluating!public!tests/Configuring! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testOpen!public!tests/Configuring / Dialogs! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testRemove!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testRemoveCssClassFromComponentsMatching!public!tests/Configuring / CSS! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testRemoveCssClassFromComponentsWithClass!public!tests/Configuring / CSS! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testRender!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testRenderAll!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testScrollingIntoView!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testSerializeChildForm!public!tests/Configuring / Serialization! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testSerializeContainerForm!public!tests/Configuring / Serialization! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testSerializeForm!public!tests/Configuring / Serialization! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testSerializeIt!public!tests/Configuring / Serialization! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testSerializeWithHiddenInputs!public!tests/Configuring / Serialization! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testSetValueToThenTriggerChangeOf!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testSetValueToWithoutTriggeringChangeOnComponentWithId!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testShowLoadingNotificationStyledAsAll!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testShowWhileCallingServerToRender!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testSubmitForm!public!tests/Configuring / Serialization! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testSubmitFormStyledAs!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testTemporarilyDisableAndTransformInto!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testTemporarilyDisableAndTransformSelfInto!public!tests/Configuring/DOM! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testToggleCssClass!public!tests/Configuring / CSS! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testToggleCssClassOn!public!tests/Configuring / CSS! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testToggleCssClassOnComponentsMatching!public!tests/Configuring / CSS! !
!CombinedWebInteractionInterpreterTest categoriesFor: #testTransformInto!public!tests/Configuring/DOM! !
