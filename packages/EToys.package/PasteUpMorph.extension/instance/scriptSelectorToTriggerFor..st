*Etoys-viewing
scriptSelectorToTriggerFor: aButtonMorph
	"Answer a new selector which will bear the code for aButtonMorph in the receiver"

	| buttonName selectorName |
	buttonName := aButtonMorph externalName.
	selectorName := self assuredPlayer acceptableScriptNameFrom: buttonName  forScriptCurrentlyNamed: nil.

	buttonName ~= selectorName ifTrue:
		[aButtonMorph setNameTo: selectorName].
	^ selectorName