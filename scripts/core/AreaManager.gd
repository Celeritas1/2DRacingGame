extends Node

var currentArea = 0 # Current Area num you are in
var racesDoneforArea = 0 # Count of Races done within the current Area 
var areas = ["Desert Rally", "City Street Mania", "Touge Night"] # Names of the different Areas
var areaRequirements = [2, 4, 6, 8] # Required Races per Area to unlock next
var areaMultiplier = 0 # Money multiplier earned through Area progression

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
	
