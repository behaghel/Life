tests
testSurviving
	"Any live cell with two or three live neighbours lives on to the next generation."

	| game |
	game := LifeGame rows: 3 columns: 3.
	(game at: 2 at: 2) turnOn. "cell under test"
	(game at: 1 at: 2) turnOn. "1 neighbour alive"
	(game at: 3 at: 2) turnOn. "2 neighbours alive"
	game nextGen.
	self assert: (game at: 2 at: 2) isOn.
	game delete.
	
	"ensure it only occur to live cells"
	game := LifeGame rows: 3 columns: 3.
	(game at: 2 at: 2) turnOff. "cell under test"
	(game at: 1 at: 2) turnOn. "1 neighbour alive"
	(game at: 3 at: 2) turnOn. "2 neighbours alive"
	game nextGen.
	self assert: (game at: 2 at: 2) isOff.
	game delete.