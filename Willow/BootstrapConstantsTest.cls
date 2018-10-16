"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #BootstrapConstantsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
BootstrapConstantsTest guid: (GUID fromString: '{02a8e7f8-6d82-4178-b6a7-5dc6842a5dbc}')!
BootstrapConstantsTest comment: 'A BootstrapConstantsTest is a test class for testing the behavior of BootstrapConstants'!
!BootstrapConstantsTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapConstantsTest methodsFor!

assertConstantAt: aSymbol equals: anExpectedValue	self assert: Constants >> #bootstrap >> aSymbol equals: anExpectedValue!

testDataAPI	self		assertConstantAt: #dismiss equals: 'dismiss';		assertConstantAt: #parent equals: 'parent';		assertConstantAt: #target equals: 'target';		assertConstantAt: #toggle equals: 'toggle'.	self		assertConstantAt: #click equals: 'click';		assertConstantAt: #focus equals: 'focus';		assertConstantAt: #hover equals: 'hover';		assertConstantAt: #manual equals: 'manual';		assertConstantAt: #buttons equals: 'buttons'!

testDatepickerDataAPI	self		assertConstantAt: #autoclose equals: 'date-autoclose';		assertConstantAt: #forceParse equals: 'date-force-parse';		assertConstantAt: #keyboardNavigation equals: 'date-keyboard-navigation';		assertConstantAt: #language equals: 'date-language';		assertConstantAt: #orientation equals: 'date-orientation';		assertConstantAt: #todayButton equals: 'date-today-btn';		assertConstantAt: #todayHighlight equals: 'date-today-highlight'!

testDatepickerStartWeekDays	self		assertConstantAt: #monday equals: 1;		assertConstantAt: #tuesday equals: 2;		assertConstantAt: #wednesday equals: 3;		assertConstantAt: #thursday equals: 4;		assertConstantAt: #friday equals: 5;		assertConstantAt: #saturday equals: 6;		assertConstantAt: #sunday equals: 0!

testDatepickerViewModes	self		assertConstantAt: #days equals: 'days';		assertConstantAt: #months equals: 'months';		assertConstantAt: #years equals: 'years';		assertConstantAt: #decades equals: 'decades';		assertConstantAt: #centuries equals: 'centuries'.	self		assertConstantAt: #month equals: 'month';		assertConstantAt: #year equals: 'year';		assertConstantAt: #decade equals: 'decade';		assertConstantAt: #century equals: 'century';		assertConstantAt: #millennium equals: 'millennium'.	self assertConstantAt: #linked equals: 'linked'!

testSelectDataAPI	self		assertConstantAt: #selectedTextFormat equals: 'selected-text-format';		assertConstantAt: #noneSelectedText equals: 'none-selected-text';		assertConstantAt: #width equals: 'width';		assertConstantAt: #actionsBox equals: 'actions-box';		assertConstantAt: #container equals: 'container';		assertConstantAt: #countSelectedText equals: 'count-selected-text';		assertConstantAt: #deselectAllText equals: 'deselect-all-text';		assertConstantAt: #dropdownAlignRight equals: 'dropdown-align-right';		assertConstantAt: #dropupAuto equals: 'dropup-auto';		assertConstantAt: #header equals: 'header';		assertConstantAt: #hideDisabled equals: 'hide-disabled';		assertConstantAt: #iconBase equals: 'icon-base';		assertConstantAt: #liveSearch equals: 'live-search';		assertConstantAt: #liveSearchNormalize equals: 'live-search-normalize';		assertConstantAt: #liveSearchPlaceholder equals: 'live-search-placeholder';		assertConstantAt: #liveSearchStyle equals: 'live-search-style';		assertConstantAt: #maxOptions equals: 'max-options';		assertConstantAt: #maxOptionsText equals: 'max-options-text';		assertConstantAt: #mobile equals: 'mobile';		assertConstantAt: #multipleSeparator equals: 'multiple-separator';		assertConstantAt: #selectAllText equals: 'select-all-text';		assertConstantAt: #selectOnTab equals: 'select-on-tab';		assertConstantAt: #showContent equals: 'show-content';		assertConstantAt: #showIcon equals: 'show-icon';		assertConstantAt: #showSubtext equals: 'show-subtext';		assertConstantAt: #showTick equals: 'show-tick';		assertConstantAt: #style equals: 'style';		assertConstantAt: #tickIcon equals: 'tick-icon';		assertConstantAt: #title equals: 'title';		assertConstantAt: #windowPadding equals: 'window-padding'! !
!BootstrapConstantsTest categoriesFor: #assertConstantAt:equals:!private! !
!BootstrapConstantsTest categoriesFor: #testDataAPI!public!tests! !
!BootstrapConstantsTest categoriesFor: #testDatepickerDataAPI!public!tests! !
!BootstrapConstantsTest categoriesFor: #testDatepickerStartWeekDays!public!tests! !
!BootstrapConstantsTest categoriesFor: #testDatepickerViewModes!public!tests! !
!BootstrapConstantsTest categoriesFor: #testSelectDataAPI!public!tests! !

