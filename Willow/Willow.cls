"Filed out from Dolphin Smalltalk 7"!

SharedPool subclass: #Willow
	instanceVariableNames: ''
	classVariableNames: 'Classification Constants'
	poolDictionaries: 'RenoirSt'
	classInstanceVariableNames: ''!
Willow guid: (GUID fromString: '{298b99c6-e123-42f6-b624-c6cfab3564b1}')!
Willow comment: 'Willow class	instanceVariableNames: '''''!
!Willow categoriesForClass!Willow-Frontend! !
!Willow class methodsFor!

classification	^ Classification!

constants	^ Constants!

initialize	##(Pragma ignoreForCoverage).	self initializeConstants.	self initializeClasses!

initializeARIAConstants	"Checkout https://www.w3.org/TR/wai-aria/#roles_categorization"	##(Pragma ignoreForCoverage).	Constants bind: #aria to: Namespace new.	self		initializeWidgetRoles;		initializeDocumentStructureRoles;		initializeLandmarkRoles;		initializeLiveRegionRoles;		initializeWindowRoles!

initializeClasses	##(Pragma ignoreForCoverage).	Classification := Namespace new.	Classification		bind: #fadingNotification to: 'willow-fading-notification';		bind: #loading to: 'willow-loading';		bind: #dialogContainer to: 'willow-dialog-container';		bind: #willow to: 'willow';		bind: #disabledComponent to: 'willow-disabled-component'!

initializeConstants	##(Pragma ignoreForCoverage).	Constants := Namespace new.	Constants bind: #css to: CssConstants.	Constants bind: #willow to: Namespace new.	(Constants >> #willow)		bind: #callServerFunctionName to: 'callServer';		bind: #disabledAttributeName to: 'disabled';		bind: #handleAjaxErrorCallFunctionName to: 'handleAjaxErrorCall';		bind: #notificationSectionName to: 'willow-notification-section';		bind: #dialogSectionName to: 'willow-dialog-section'.	self initializeARIAConstants!

initializeDocumentStructureRoles	##(Pragma ignoreForCoverage).	(Constants >> #aria)		bind: #application to: 'application';		bind: #article to: 'article';		bind: #cell to: 'cell';		bind: #columnHeader to: 'columnheader';		bind: #definition to: 'definition';		bind: #directory to: 'directory';		bind: #document to: 'document';		bind: #feed to: 'feed';		bind: #figure to: 'figure';		bind: #group to: 'group';		bind: #heading to: 'heading';		bind: #image to: 'img';		bind: #list to: 'list';		bind: #listItem to: 'listitem';		bind: #math to: 'math';		bind: #none to: 'none';		bind: #note to: 'note';		bind: #presentation to: 'presentation';		bind: #row to: 'row';		bind: #rowGroup to: 'rowgroup';		bind: #rowHeader to: 'rowheader';		bind: #table to: 'table';		bind: #term to: 'term';		bind: #toolbar to: 'toolbar';		bind: #tooltip to: 'tooltip'!

initializeLandmarkRoles	##(Pragma ignoreForCoverage).	(Constants >> #aria)		bind: #banner to: 'banner';		bind: #complementary to: 'complementary';		bind: #contentInfo to: 'contentinfo';		bind: #form to: 'form';		bind: #main to: 'main';		bind: #navigation to: 'navigation';		bind: #region to: 'region';		bind: #search to: 'search'!

initializeLiveRegionRoles	##(Pragma ignoreForCoverage).	(Constants >> #aria)		bind: #alert to: 'alert';		bind: #log to: 'log';		bind: #marquee to: 'marquee';		bind: #status to: 'status';		bind: #timer to: 'timer'!

initializeWidgetRoles	##(Pragma ignoreForCoverage).	(Constants >> #aria)		bind: #button to: 'button';		bind: #checkbox to: 'checkbox';		bind: #gridCell to: 'gridcell';		bind: #link to: 'link';		bind: #menuItem to: 'menuitem';		bind: #menuItemCheckbox to: 'menuitemcheckbox';		bind: #menuItemRadio to: 'menuitemradio';		bind: #option to: 'option';		bind: #progressbar to: 'progressbar';		bind: #radio to: 'radio';		bind: #scrollbar to: 'scrollbar';		bind: #searchbox to: 'searchbox';		bind: #separator to: 'separator';		bind: #slider to: 'slider';		bind: #spinButton to: 'spinbutton';		bind: #switch to: 'switch';		bind: #tab to: 'tab';		bind: #tabPanel to: 'tabpanel';		bind: #textbox to: 'textbox';		bind: #treeItem to: 'treeitem';		bind: #combobox to: 'combobox';		bind: #grid to: 'grid';		bind: #listbox to: 'listbox';		bind: #menu to: 'menu';		bind: #menubar to: 'menubar';		bind: #radioGroup to: 'radiogroup';		bind: #tabList to: 'tablist';		bind: #tree to: 'tree';		bind: #treegrid to: 'treegrid'!

initializeWindowRoles	##(Pragma ignoreForCoverage).	(Constants >> #aria)		bind: #alertDialog to: 'alertdialog';		bind: #dialog to: 'dialog'! !
!Willow class categoriesFor: #classification!accessing!public! !
!Willow class categoriesFor: #constants!accessing!public! !
!Willow class categoriesFor: #initialize!initialization!public! !
!Willow class categoriesFor: #initializeARIAConstants!private / initialization!public! !
!Willow class categoriesFor: #initializeClasses!private / initialization!public! !
!Willow class categoriesFor: #initializeConstants!private / initialization!public! !
!Willow class categoriesFor: #initializeDocumentStructureRoles!private / initialization!public! !
!Willow class categoriesFor: #initializeLandmarkRoles!private / initialization!public! !
!Willow class categoriesFor: #initializeLiveRegionRoles!private / initialization!public! !
!Willow class categoriesFor: #initializeWidgetRoles!private / initialization!public! !
!Willow class categoriesFor: #initializeWindowRoles!private / initialization!public! !

