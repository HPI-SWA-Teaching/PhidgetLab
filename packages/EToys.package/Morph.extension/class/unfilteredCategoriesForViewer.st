*Etoys
unfilteredCategoriesForViewer
	"Answer a list of symbols representing the categories to offer in the viewer for one of my instances, in order of:
	- masterOrderingOfCategorySymbols first
	- others last in order by translated wording"
	"
	Morph unfilteredCategoriesForViewer
	"

	| aClass additions masterOrder |
	aClass := self.
	additions := OrderedCollection new.
	[aClass == Morph superclass ] whileFalse: [
		additions addAll: (aClass allAdditionsToViewerCategories keys asArray
			sort: [ :a :b | a translated < b translated ]).
		aClass := aClass superclass ]. 

	masterOrder := EToyVocabulary masterOrderingOfCategorySymbols.

	^(masterOrder intersection: additions), (additions difference: masterOrder).