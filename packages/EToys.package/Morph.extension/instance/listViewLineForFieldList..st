*Etoys-support
listViewLineForFieldList: aFieldList
	"Answer a ListLineView object which describes the receiver"

	| aLine |
	aLine := ListViewLine new objectRepresented: self.
	aFieldList do:
		[:fieldSym | aLine addMorphBack: (self readoutForField: fieldSym).
		aLine addTransparentSpacerOfSize: (7 @ 0)].
	^ aLine