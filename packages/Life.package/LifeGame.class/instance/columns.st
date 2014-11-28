accessing
columns
	columns notNil ifTrue: [ ^columns ] ifFalse:  [ ^self defaultCellsPerSide ]