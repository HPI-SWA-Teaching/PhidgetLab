*Etoys-playfield
paintBackground
	| pic rect |
	self world prepareToPaint.
	pic := self backgroundSketch.
	pic ifNotNil: [pic editDrawingIn: self forBackground: true]		"need to resubmit it? (tck comment)"
		ifNil: [rect := self bounds.
			pic := self world drawingClass new form: 
				(Form extent: rect extent depth: Display depth).
			pic bounds: rect.
			"self world addMorphBack: pic.  done below"
			pic := self backgroundSketch: pic.	"returns a different guy"
			pic ifNotNil: [pic editDrawingIn: self forBackground: true]]