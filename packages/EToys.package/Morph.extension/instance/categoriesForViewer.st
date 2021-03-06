*Etoys
categoriesForViewer
	"Answer a list of symbols representing the categories to offer in the 
	viewer, in order"
	| dict |
	dict := Dictionary new.
	self unfilteredCategoriesForViewer
		withIndexDo: [:cat :index | dict at: cat put: index].
	self filterViewerCategoryDictionary: dict.
	^ dict keys asArray sort: [:a :b | (dict at: a)
						< (dict at: b)]