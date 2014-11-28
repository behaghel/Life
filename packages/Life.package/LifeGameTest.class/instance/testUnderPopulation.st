tests
testUnderPopulation
	"Any live cell with fewer than two live neighbours dies, as if caused by under-population."

	| game |
	game := LifeGame rows: 3 columns: 3.
	(game at: 2 at: 2) turnOn.
	game nextGen.
	self assert: (game at: 2 at: 2) isOff.
	game delete.
	"ensure dead cells remain dead under similar circumstances"
	game := LifeGame rows: 3 columns: 3.
	(game at: 2 at: 2) turnOff.
	game nextGen.
	self assert: (game at: 2 at: 2) isOff.
	game delete.