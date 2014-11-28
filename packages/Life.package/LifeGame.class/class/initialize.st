initialize-release
initialize

	"we need the same instance of block to sort points otherwise = on SortedCollection return false."
	pointsSortBlock := [:p1 :p2 | 
		(p1 x < p2 x) or: [(p1 x = p2 x) and: [p1 y < p2 y]]]