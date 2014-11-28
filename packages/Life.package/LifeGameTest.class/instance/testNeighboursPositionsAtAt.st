tests
testNeighboursPositionsAtAt

	| game neighbours11 expected11 neighbours22 expected22 expected13 neighbours13 |
	game := LifeGame new.
	expected11 := LifeGame sortCollectionOfPoints: {2@1. 1@2. 2@2}.
	neighbours11 := game neighboursPositionsAt: 1 at: 1.
	self assert: neighbours11 =  expected11.
	expected22 := LifeGame sortCollectionOfPoints: {1@1. 2@1. 3@1. 1@2. 3@2. 1@3. 2@3. 3@3}.
	neighbours22 := game neighboursPositionsAt: 2 at: 2.
	self assert: neighbours22 = expected22.
	game delete.
	game := LifeGame rows: 3 columns: 3.
	expected13 := LifeGame sortCollectionOfPoints: { 1@2. 2@2. 2@3 }.
	neighbours13 := game neighboursPositionsAt: 1 at: 3.
	self assert: neighbours13 = expected13.