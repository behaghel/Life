as yet unclassified 
handleKeystroke: anEvent 
	| keyValue |
	keyValue := anEvent keyValue.
	Transcript show: keyValue; cr.