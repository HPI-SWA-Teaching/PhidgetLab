*Etoys-playfield
impartPrivatePresenter
	presenter ifNil:
		[presenter := EtoysPresenter new associatedMorph: self.
		presenter standardPlayer]