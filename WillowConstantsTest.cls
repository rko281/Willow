"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #WillowConstantsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowConstantsTest guid: (GUID fromString: '{80895007-c257-46b9-b0b7-1375ce037b5c}')!
WillowConstantsTest comment: 'A WillowConstantsTest is a test class for testing the constants provided by the library'!
!WillowConstantsTest categoriesForClass!Willow-Tests-Frontend! !
!WillowConstantsTest methodsFor!

assertARIAConstant: aSymbol equals: anExpectedValue	self assert: Willow constants >> #aria >> aSymbol equals: anExpectedValue!

testBlockExtension	| html |	html := self		apply: [ :anchor :constants | anchor addScript js: [ :canvas | canvas jQuery this onClick: (canvas jQuery id: constants >> #willow >> #dialogSectionName) clone ] ] asWebComponentCommand		toComponentDefinedBy: [ :canvas | canvas anchor ].	self assert: html equals: '<a id="id1"></a><script type="text/javascript">$("#id1").click(function(){$("#willow-dialog-section").clone()});</script>'!

testCssConstants	[ :command :constants | 	self		assert: constants >> #css >> #inherit equals: 'inherit';		assert: constants >> #css >> #allPetiteCaps equals: 'all-petite-caps' ] asWebComponentCommand!

testDocumentStructureRoles	self		assertARIAConstant: #application equals: 'application';		assertARIAConstant: #article equals: 'article';		assertARIAConstant: #cell equals: 'cell';		assertARIAConstant: #columnHeader equals: 'columnheader';		assertARIAConstant: #definition equals: 'definition';		assertARIAConstant: #directory equals: 'directory';		assertARIAConstant: #document equals: 'document';		assertARIAConstant: #feed equals: 'feed';		assertARIAConstant: #figure equals: 'figure';		assertARIAConstant: #group equals: 'group';		assertARIAConstant: #heading equals: 'heading';		assertARIAConstant: #image equals: 'img';		assertARIAConstant: #list equals: 'list';		assertARIAConstant: #listItem equals: 'listitem';		assertARIAConstant: #math equals: 'math';		assertARIAConstant: #none equals: 'none';		assertARIAConstant: #note equals: 'note';		assertARIAConstant: #presentation equals: 'presentation';		assertARIAConstant: #row equals: 'row';		assertARIAConstant: #rowGroup equals: 'rowgroup';		assertARIAConstant: #rowHeader equals: 'rowheader';		assertARIAConstant: #table equals: 'table';		assertARIAConstant: #term equals: 'term';		assertARIAConstant: #toolbar equals: 'toolbar';		assertARIAConstant: #tooltip equals: 'tooltip'!

testExtraRoles	self		assertARIAConstant: #banner equals: 'banner';		assertARIAConstant: #complementary equals: 'complementary';		assertARIAConstant: #contentInfo equals: 'contentinfo';		assertARIAConstant: #form equals: 'form';		assertARIAConstant: #main equals: 'main';		assertARIAConstant: #navigation equals: 'navigation';		assertARIAConstant: #region equals: 'region';		assertARIAConstant: #search equals: 'search';		assertARIAConstant: #alertDialog equals: 'alertdialog';		assertARIAConstant: #dialog equals: 'dialog';		assertARIAConstant: #alert equals: 'alert';		assertARIAConstant: #log equals: 'log';		assertARIAConstant: #marquee equals: 'marquee';		assertARIAConstant: #status equals: 'status';		assertARIAConstant: #timer equals: 'timer'!

testWidgetRoles	self		assertARIAConstant: #button equals: 'button';		assertARIAConstant: #checkbox equals: 'checkbox';		assertARIAConstant: #gridCell equals: 'gridcell';		assertARIAConstant: #link equals: 'link';		assertARIAConstant: #menuItem equals: 'menuitem';		assertARIAConstant: #menuItemCheckbox equals: 'menuitemcheckbox';		assertARIAConstant: #menuItemRadio equals: 'menuitemradio';		assertARIAConstant: #option equals: 'option';		assertARIAConstant: #progressbar equals: 'progressbar';		assertARIAConstant: #radio equals: 'radio';		assertARIAConstant: #scrollbar equals: 'scrollbar';		assertARIAConstant: #searchbox equals: 'searchbox';		assertARIAConstant: #separator equals: 'separator';		assertARIAConstant: #slider equals: 'slider';		assertARIAConstant: #spinButton equals: 'spinbutton';		assertARIAConstant: #switch equals: 'switch';		assertARIAConstant: #tab equals: 'tab';		assertARIAConstant: #tabPanel equals: 'tabpanel';		assertARIAConstant: #textbox equals: 'textbox';		assertARIAConstant: #treeItem equals: 'treeitem';		assertARIAConstant: #combobox equals: 'combobox';		assertARIAConstant: #grid equals: 'grid';		assertARIAConstant: #listbox equals: 'listbox';		assertARIAConstant: #menu equals: 'menu';		assertARIAConstant: #menubar equals: 'menubar';		assertARIAConstant: #radioGroup equals: 'radiogroup';		assertARIAConstant: #tabList equals: 'tablist';		assertARIAConstant: #tree equals: 'tree';		assertARIAConstant: #treegrid equals: 'treegrid'! !
!WillowConstantsTest categoriesFor: #assertARIAConstant:equals:!private / asserting!public! !
!WillowConstantsTest categoriesFor: #testBlockExtension!public!tests! !
!WillowConstantsTest categoriesFor: #testCssConstants!public!tests! !
!WillowConstantsTest categoriesFor: #testDocumentStructureRoles!public!tests! !
!WillowConstantsTest categoriesFor: #testExtraRoles!public!tests! !
!WillowConstantsTest categoriesFor: #testWidgetRoles!public!tests! !

