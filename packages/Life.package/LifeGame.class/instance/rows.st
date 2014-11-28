accessing
rows
	rows notNil ifTrue: [ ^rows ] ifFalse: [ ^self defaultCellsPerSide ]