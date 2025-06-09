extends Node

var currentArea = 0
var racesDoneforArea = 0
var areas = ["", "", ""]
var areaRequirements = [2, 4, 6, 8]
var areaMultiplier = 0

func raceComplete():
	racesDoneforArea += 1
	if racesDoneforArea >= areaRequirements[currentArea]:
		unlockNextArea()
		

func unlockNextArea():
	if currentArea < areaRequirements.size() - 1:
		currentArea += 1
		areaMultiplier += 0.5
		racesDoneforArea = 0
		print("Congratulations! You have unlocked a new Area : %s" % (areas[currentArea] + 1))
	else:
		print("Congratulations! You have unlocked the Final Area : %s" % (areas[-1]))
	
