initialization
initialize 
	"initialization"

	super initialize.
	self label: ''.
	self borderWidth: 2.
	bounds := 0@0 corner: 12@12.
	offColor := Color paleYellow.
	onColor := Color paleBlue darker.
	self useSquareCorners.
	self turnOff 