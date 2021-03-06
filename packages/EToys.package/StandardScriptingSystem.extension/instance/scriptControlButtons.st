*Etoys-script-control
scriptControlButtons
	"Answer a composite object that serves to control the stop/stop/go status of a Presenter"

	| wrapper |
	wrapper := AlignmentMorph newRow setNameTo: 'script controls'.
	wrapper vResizing: #shrinkWrap.
	wrapper hResizing: #shrinkWrap.
	wrapper addMorph: self stopButton.
	wrapper addMorphBack: self stepButton.
	wrapper addMorphBack: self goButton.
	wrapper beTransparent.
	^ wrapper