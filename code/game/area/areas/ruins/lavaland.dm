//Lavaland Ruins
//NOTICE: /unpowered means you never get power. Thanks Fikou

/area/ruin/powered/beach

/area/ruin/powered/lavaland_phone_booth
	name = "\improper Phone Booth"

/area/ruin/powered/clownplanet
	name = "\improper Clown Biodome"
	ambientsounds = list('sound/ambience/clown.ogg')

/area/ruin/unpowered/gaia
	name = "\improper Patch of Eden"

/area/ruin/powered/snow_biodome

/area/ruin/powered/gluttony

/area/ruin/powered/golem_ship
	name = "\improper Free Golem Ship"

/area/ruin/powered/greed

/area/ruin/unpowered/hierophant
	name = "\improper Hierophant's Arena"

/area/ruin/powered/pride

/area/ruin/powered/seedvault

/area/ruin/unpowered/elephant_graveyard
	name = "\improper Elephant Graveyard"

/area/ruin/powered/graveyard_shuttle
	name = "\improper Elephant Graveyard"

/area/ruin/syndicate_lava_base
	name = "\improper Secret Base"
	ambience_index = AMBIENCE_DANGER
	ambient_buzz = 'sound/ambience/magma.ogg'

/area/ruin/unpowered/cultaltar
	name = "\improper Cult Altar"
	area_flags = CULT_PERMITTED
	ambience_index = AMBIENCE_SPOOKY

//Symphionia lavaland base

/area/ruin/syndicate_lava_base/engineering
	name = "Symphionia Lavaland Engineering"

/area/ruin/syndicate_lava_base/medbay
	name = "Symphionia Lavaland Medbay"

/area/ruin/syndicate_lava_base/arrivals
	name = "Symphionia Lavaland Arrivals"

/area/ruin/syndicate_lava_base/bar
	name = "\improper Symphionia Lavaland Bar"

/area/ruin/syndicate_lava_base/main
	name = "\improper Symphionia Lavaland Primary Hallway"

/area/ruin/syndicate_lava_base/cargo
	name = "\improper Symphionia Lavaland Cargo Bay"

/area/ruin/syndicate_lava_base/chemistry
	name = "Symphionia Lavaland Chemistry"

/area/ruin/syndicate_lava_base/virology
	name = "Symphionia Lavaland Virology"

/area/ruin/syndicate_lava_base/testlab
	name = "\improper Symphionia Lavaland Experimentation Lab"

/area/ruin/syndicate_lava_base/dormitories
	name = "\improper Symphionia Lavaland Dormitories"

/area/ruin/syndicate_lava_base/telecomms
	name = "\improper Symphionia Lavaland Telecommunications"

//Xeno Nest

/area/ruin/unpowered/xenonest
	name = "The Hive"
	always_unpowered = TRUE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	ambient_buzz = 'sound/ambience/magma.ogg'

//ash walker nest
/area/ruin/unpowered/ash_walkers
	//NOVA EDIT ADDITION BEGIN - ASH WALKER MACHINES FIX
	always_unpowered = FALSE
	power_equip = TRUE
	//NOVA EDIT ADDITION END
	ambient_buzz = 'sound/ambience/magma.ogg'

/area/ruin/unpowered/ratvar
	outdoors = TRUE
	ambient_buzz = 'sound/ambience/magma.ogg'
