*Etoys-scripting
asEmptyPermanentScriptor
	"Answer a new empty permanent scriptor derived from info deftly secreted in the receiver.  Good grief"

	| aScriptor aPlayer |
	aPlayer := self valueOfProperty: #newPermanentPlayer.
	aPlayer assureUniClass.
	aScriptor :=  aPlayer newScriptorAround: nil.
	aScriptor position: (self world primaryHand position - (10 @ 10)).
	aPlayer updateAllViewersAndForceToShow: #scripts.
	^ aScriptor