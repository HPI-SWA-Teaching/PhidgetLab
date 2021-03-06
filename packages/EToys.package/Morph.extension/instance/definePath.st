*Etoys-support
definePath
	| points lastPoint aForm offset currentPoint dwell ownerPosition |
	points := OrderedCollection new: 70.
	lastPoint := nil.
	aForm := self imageForm.
	offset := aForm extent // 2.
	ownerPosition := owner position.
	Cursor move show.
	Sensor waitButton.
	[Sensor anyButtonPressed and: [points size < 100]] whileTrue:
		[currentPoint := Sensor cursorPoint.
		dwell := 0.
		currentPoint = lastPoint
			ifTrue:
				[dwell := dwell + 1.
				((dwell \\ 1000) = 0) ifTrue:
					[Beeper beep]]
			ifFalse:
				[self position: (currentPoint - offset).
				self world displayWorld.
				(Delay forMilliseconds: 20) wait.
				points add: currentPoint.
				lastPoint := currentPoint]].
	points size > 1
		ifFalse:
			[self inform: 'no path obtained']
		ifTrue:
			[points size = 100 ifTrue: [self playSoundNamed: 'croak'].

			Transcript cr; show: 'path defined with
', points size printString, ' points'.
			self renderedMorph setProperty: #pathPoints toValue: 
				(points collect: [:p | p - ownerPosition])].

	Cursor normal show
		