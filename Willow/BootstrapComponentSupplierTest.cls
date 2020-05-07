"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapComponentSupplierTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapComponentSupplierTest guid: (GUID fromString: '{f9a95e64-3eb8-412e-9782-a729366e1b91}')!
BootstrapComponentSupplierTest comment: 'A BootstrapComponentSupplierTest is a test class for testing the behavior of BootstrapComponentSupplier'!
!BootstrapComponentSupplierTest categoriesForClass!Willow-Bootstrap-Tests-Frontend! !
!BootstrapComponentSupplierTest methodsFor!

assertRenderingOf: aComponentCreationBlock equals: anExpectedHtml	| component html |	component := aComponentCreationBlock value: self supplierClass online.	html := self render: component.	self assert: html equals: anExpectedHtml!

supplierClass	^ self subclassResponsibility!

testAsynchronicButtonLabeledApplying	self		assertRenderingOf: [ :supplier | 			supplier				asynchronicButtonLabeled: 'Buy'				applying: [ :anchor | anchor addClass bootstrapCommon buttonPrimary ]			]		equals: '<button class="btn btn-primary" type="button">Buy</button>'!

testAsynchronicLinkActingAsButtonLabeledApplying	self		assertRenderingOf: [ :supplier | 			supplier				asynchronicLinkActingAsButtonLabeled: 'Buy'				applying: [ :link | link addClass bootstrapCommon buttonPrimary ]			]		equals:			'<a id="a-id1" role="button" class="btn btn-primary" href="#">Buy</a><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});</script>'!

testAsynchronicLinkLabeledApplying	self		assertRenderingOf:			[ :supplier | supplier asynchronicLinkLabeled: 'Buy' applying: [ :link | link addClass bootstrapCommon buttonPrimary ] ]		equals:			'<a id="a-id1" class="btn-primary">Buy</a><script type="text/javascript">$("#a-id1").click(function(event){arguments[0].preventDefault()});</script>'!

testDateFieldApplying	self		assertRenderingOf: [ :supplier | supplier dateFieldApplying: [ :field | field addClass bootstrapCommon textCenter ] ]		equals:			'<input value="" name="1" type="text" class="form-control text-center" maxlength="10" data-provide="datepicker"/>'!

testDecimalNumberFieldApplying	self assertRenderingOf: [ :supplier | supplier decimalNumberFieldApplying: [ :field |  ] ] equals: '<input value="" name="1" type="number" class="form-control text-right"/>'!

testFieldSetContainingApplyingWithLegendApplying	self		assertRenderingOf: [ :supplier | 			supplier				fieldSetContaining: 'The View'				applying: [ :fieldSet | fieldSet beDisabled ]				withLegend: 'Its Title'				applying: [ :legend | legend beAutofocused ] ]		equals: '<fieldset disabled><legend autofocus>Its Title</legend>The View</fieldset>'!

testMultiLineTextFieldApplying	self		assertRenderingOf:			[ :supplier | supplier multiLineTextFieldApplying: [ :field | field addClass bootstrapCommon textCenter ] ]		equals: '<textarea rows="auto" cols="auto" name="1" class="form-control text-center"></textarea>'!

testMultipleSelectionListBoxDisplayingAtOnceApplying	self		assertRenderingOf: [ :supplier | supplier multipleSelectionListBoxDisplayingAtOnce: 10 applying: [ :listBox |  ] ]		equals: '<select name="1" size="10" class="form-control" multiple></select><input name="2" type="hidden"/>'!

testNaturalNumberFieldApplying	self assertRenderingOf: [ :supplier | supplier naturalNumberFieldApplying: [ :field |  ] ] equals: '<input value="" name="1" type="number" class="form-control text-right" min="0"/>'!

testNotificationBuilder	self		assertRenderingOf: [ :supplier | 			supplier notificationBuilder				wrapping: 'Ouch!!';				danger;				buildApplying: [  ] ]		equals: '<div class="alert alert-danger" role="alert">Ouch!!</div>'!

testSingleSelectionListBoxDisplayingAtOnceApplying	self assertRenderingOf: [ :supplier | supplier singleSelectionListBoxDisplayingAtOnce: 10 applying: [ :listBox |  ] ] equals: '<select name="1" size="10" class="form-control"></select>'!

testSynchronicButtonLabeledApplyingEvaluating	self		assertRenderingOf: [ :supplier | 			supplier				synchronicButtonLabeled: 'Buy'				applying: [ :link | link addClass bootstrapCommon buttonPrimary ]				evaluating: [  ]			]		equals: '<button name="1" class="btn btn-primary" type="submit">Buy</button>'!

testTableBuilder	self		assertRenderingOf: [ :supplier | 			| table |			table := supplier tableBuilder				addColumn: [ :column | 					column						titled: 'Number';						rendering: [ :number | number ]					];				build.			table				changeContentsTo: #(1 2 3);				yourself			]		equals:			'<table id="table-id1" class="table"><thead><th>Number</th></thead><tbody><tr><td>1</td></tr><tr><td>2</td></tr><tr><td>3</td></tr></tbody></table>'!

testUnorderedListApplyingListingApplyingToEach 	self		assertRenderingOf: [ :supplier | 			supplier				unorderedListApplying: [  ]				listing:					#('Cras justo odio' 'Dapibus ac facilisis in' 'Morbi leo risus' 'Porta ac consectetur ac' 'Vestibulum at eros')				applyingToEach: [  ]			]		equals:			'<ul class="list-group"><li class="list-group-item">Cras justo odio</li><li class="list-group-item">Dapibus ac facilisis in</li><li class="list-group-item">Morbi leo risus</li><li class="list-group-item">Porta ac consectetur ac</li><li class="list-group-item">Vestibulum at eros</li></ul>'! !
!BootstrapComponentSupplierTest categoriesFor: #assertRenderingOf:equals:!private! !
!BootstrapComponentSupplierTest categoriesFor: #supplierClass!private! !
!BootstrapComponentSupplierTest categoriesFor: #testAsynchronicButtonLabeledApplying!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testAsynchronicLinkActingAsButtonLabeledApplying!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testAsynchronicLinkLabeledApplying!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testDateFieldApplying!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testDecimalNumberFieldApplying!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testFieldSetContainingApplyingWithLegendApplying!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testMultiLineTextFieldApplying!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testMultipleSelectionListBoxDisplayingAtOnceApplying!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testNaturalNumberFieldApplying!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testNotificationBuilder!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testSingleSelectionListBoxDisplayingAtOnceApplying!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testSynchronicButtonLabeledApplyingEvaluating!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testTableBuilder!public!tests/Supplying! !
!BootstrapComponentSupplierTest categoriesFor: #testUnorderedListApplyingListingApplyingToEach!public!tests/Supplying! !

!BootstrapComponentSupplierTest class methodsFor!

isAbstract	^ self name = #BootstrapComponentSupplierTest! !
!BootstrapComponentSupplierTest class categoriesFor: #isAbstract!public!testing! !

