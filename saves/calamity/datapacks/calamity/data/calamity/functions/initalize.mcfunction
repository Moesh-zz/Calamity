# Remove Scoreboard Objectives
scoreboard objectives remove CONST

scoreboard objectives remove AffectedItems
scoreboard objectives remove gameRules
scoreboard objectives remove health
scoreboard objectives remove QueryResult
scoreboard objectives remove SuccessCount
scoreboard objectives remove loggedOff

scoreboard objectives remove teamSelected
scoreboard objectives remove classSelected
scoreboard objectives remove startRound
scoreboard objectives remove spectate

scoreboard objectives remove counter
scoreboard objectives remove progressLights
scoreboard objectives remove progressSecond
scoreboard objectives remove progressSound
scoreboard objectives remove displayPercent
scoreboard objectives remove displaySecond

scoreboard objectives remove outputMajor

# Add Scoreboard Objectives
scoreboard objectives add CONST dummy
scoreboard players set 6 CONST 6
scoreboard players set 12 CONST 12
scoreboard players set 20 CONST 20
scoreboard players set 80 CONST 80
scoreboard players set 100 CONST 100
scoreboard players set -100 CONST -100

scoreboard objectives add AffectedItems dummy
scoreboard objectives add gameRules dummy
	scoreboard players set RunningTime gameRules 400
	scoreboard players set ResettingTime gameRules 400
	scoreboard players set MajorRunningTime gameRules 1200
	scoreboard players set MajorResettingTime gameRules 1200
scoreboard objectives add health health
scoreboard objectives add QueryResult dummy
scoreboard objectives add SuccessCount dummy
scoreboard objectives add loggedOff minecraft.custom:minecraft.leave_game

scoreboard objectives add teamSelected trigger
scoreboard objectives add classSelected trigger
scoreboard objectives add startRound trigger
scoreboard objectives add spectate trigger

scoreboard objectives add counter dummy
scoreboard objectives add progressLights dummy
scoreboard objectives add progressSecond dummy
scoreboard objectives add progressSound dummy
scoreboard objectives add displaySecond dummy
scoreboard objectives add displayPercent dummy

scoreboard objectives add outputMajor dummy

# Remove Scoreboard Teams
team remove lobby
team remove spectator
team remove blue
team remove red

# Add And Configure Scoreboard Teams
team add lobby {"translate":"team.name.lobby"}
team add spectator {"translate":"team.name.spectator"}
	team modify green color green
team add blue {"translate":"team.name.blue"}
	team modify blue collisionRule pushOtherTeams
	team modify blue color blue
	team modify blue deathMessageVisibility always
	team modify blue friendlyFire false
	team modify blue nametagVisibility always
team add red {"translate":"team.name.red"}
	team modify red collisionRule pushOtherTeams
	team modify red color red
	team modify red deathMessageVisibility always
	team modify red friendlyFire false
	team modify red nametagVisibility always

# AddFakePlayersToTeam
team join blue Blue
team join red Red

# RemoveScoreboardTags
tag @a remove Registered
tag @a remove Winner
tag @a remove Spectating
tag @a remove Playing

# Set-up points
kill @e[type=area_effect_cloud,tag=Point]
# Blue
summon minecraft:area_effect_cloud 169 42 118 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingWest","TeamBlue","Log"],CustomNameVisible:1b,Duration:2147483647,Rotation:[90.0f,-0.0f]}
summon minecraft:area_effect_cloud 164 43 142 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingWest","TeamBlue","Cobblestone"],CustomNameVisible:1b,Duration:2147483647,Rotation:[90.0f,-0.0f]}
summon minecraft:area_effect_cloud 150 40 136 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingWest","TeamBlue","GoldIngot"],CustomNameVisible:1b,Duration:2147483647,Rotation:[90.0f,-0.0f]}
summon minecraft:area_effect_cloud 151 56 154 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingWest","TeamBlue","Arrow"],CustomNameVisible:1b,Duration:2147483647,Rotation:[90.0f,-0.0f]}
summon minecraft:area_effect_cloud 157 55 173 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingWest","TeamBlue","TNT"],CustomNameVisible:1b,Duration:2147483647,Rotation:[90.0f,-0.0f]}
summon minecraft:area_effect_cloud 115 50 189 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingEast","TeamBlue","Effect","Regeneration"],CustomNameVisible:1b,Duration:2147483647,Rotation:[-90.0f,-0.0f]}
summon minecraft:area_effect_cloud 102 41 162 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingEast","TeamBlue","Effect","Resistance"],CustomNameVisible:1b,Duration:2147483647,Rotation:[-90.0f,-0.0f]}
summon minecraft:area_effect_cloud 122 32 162 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingEast","TeamBlue","Effect","Strength"],CustomNameVisible:1b,Duration:2147483647,Rotation:[-90.0f,-0.0f]}
summon minecraft:area_effect_cloud 115 18 189 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingEast","TeamBlue","Effect","Speed"],CustomNameVisible:1b,Duration:2147483647,Rotation:[-90.0f,-0.0f]}
# Red
summon minecraft:area_effect_cloud 103 42 118 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingEast","TeamRed","Log"],CustomNameVisible:1b,Duration:2147483647,Rotation:[-90.0f,-0.0f]}
summon minecraft:area_effect_cloud 108 43 142 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingEast","TeamRed","Cobblestone"],CustomNameVisible:1b,Duration:2147483647,Rotation:[-90.0f,-0.0f]}
summon minecraft:area_effect_cloud 122 40 136 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingEast","TeamRed","GoldIngot"],CustomNameVisible:1b,Duration:2147483647,Rotation:[-90.0f,-0.0f]}
summon minecraft:area_effect_cloud 121 56 154 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingEast","TeamRed","Arrow"],CustomNameVisible:1b,Duration:2147483647,Rotation:[-90.0f,-0.0f]}
summon minecraft:area_effect_cloud 115 55 173 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingEast","TeamRed","TNT"],CustomNameVisible:1b,Duration:2147483647,Rotation:[-90.0f,-0.0f]}
summon minecraft:area_effect_cloud 157 50 189 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingWest","TeamRed","Effect","Regeneration"],CustomNameVisible:1b,Duration:2147483647,Rotation:[90.0f,-0.0f]}
summon minecraft:area_effect_cloud 170 41 162 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingWest","TeamRed","Effect","Resistance"],CustomNameVisible:1b,Duration:2147483647,Rotation:[90.0f,-0.0f]}
summon minecraft:area_effect_cloud 150 32 162 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingWest","TeamRed","Effect","Strength"],CustomNameVisible:1b,Duration:2147483647,Rotation:[90.0f,-0.0f]}
summon minecraft:area_effect_cloud 157 18 189 {CustomName:"{\"text\":\"ResourcePoint\"}",Tags:["Point","FacingWest","TeamRed","Effect","Speed"],CustomNameVisible:1b,Duration:2147483647,Rotation:[90.0f,-0.0f]}
# Major Points
summon minecraft:area_effect_cloud 136 55 188 {CustomName:"{\"text\":\"MajorPoint\"}",Tags:["Point","FacingNorth","ExperienceBottle"],CustomNameVisible:1b,Duration:2147483647,Rotation:[180.0f,-0.0f]}
summon minecraft:area_effect_cloud 136 23 188 {CustomName:"{\"text\":\"MajorPoint\"}",Tags:["Point","FacingNorth","IronIngot"],CustomNameVisible:1b,Duration:2147483647,Rotation:[180.0f,-0.0f]}
# Objective
summon minecraft:area_effect_cloud 159 43 100 {CustomName:"{\"text\":\"Objective\"}",Tags:["Point","FacingNorth","TeamBlue"],CustomNameVisible:1b,Duration:2147483647,Rotation:[180.0f,-0.0f]}
summon minecraft:area_effect_cloud 113 43 100 {CustomName:"{\"text\":\"Objective\"}",Tags:["Point","FacingNorth","TeamRed"],CustomNameVisible:1b,Duration:2147483647,Rotation:[180.0f,-0.0f]}

# Configure resource points
function calamity:setup_signs

