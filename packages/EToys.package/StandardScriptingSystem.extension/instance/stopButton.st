*Etoys-script-control
stopButton
	"Answer a new button that can serve as a stop button"
	| aButton |
	aButton := ThreePhaseButtonMorph new.
	aButton
		image:  (ScriptingSystem formAtKey: 'StopPic');
		offImage: (ScriptingSystem formAtKey: 'StopPic');
		pressedImage:  (ScriptingSystem formAtKey: 'StopPicOn').
		aButton actionSelector: #stopUp:with:; 
		arguments: (Array with: nil with: aButton);
		actWhen: #buttonUp;
		target: self;
		setNameTo: 'Stop Button'; 
		setBalloonText: 'Pause all ticking scripts.' translated.
	^ aButton