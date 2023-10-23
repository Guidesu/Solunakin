/// Trim for Symphionia mobs, outfits and corpses.
/datum/id_trim/syndicom
	assignment = "Symphionia Overlord"
	trim_state = "trim_syndicate"
	department_color = COLOR_SYNDIE_RED
	subdepartment_color = COLOR_SYNDIE_RED
	sechud_icon_state = SECHUD_SYNDICATE
	access = list(ACCESS_SYNDICATE)

/// Trim for Symphionia mobs, outfits and corpses.
/datum/id_trim/syndicom/crew
	assignment = "Symphionia Operative"
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS)

/// Interdyne medical Staff
/datum/id_trim/syndicom/Interdyne/pharmacist
	assignment = "Interdyne Pharmacist"
	trim_state = "trim_medicaldoctor"
	sechud_icon_state = SECHUD_SYNDICATE_INTERDYNE
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS, ACCESS_SURGERY)

/// Interdyne head medical Staff
/datum/id_trim/syndicom/Interdyne/pharmacist_director
	assignment = "Interdyne Pharmacist Director"
	trim_state = "trim_medicaldoctor"
	department_color = COLOR_SYNDIE_RED_HEAD
	subdepartment_color = COLOR_SYNDIE_RED_HEAD
	sechud_icon_state = SECHUD_SYNDICATE_INTERDYNE_HEAD
	access = list(ACCESS_SYNDICATE, ACCESS_ROBOTICS, ACCESS_SURGERY)

/// Trim for the space IRS agents (why are they syndie access? I wouldn't worry about it.)
/datum/id_trim/syndicom/irs
	assignment = "Internal Revenue Service Agent"
	trim_state = "trim_securityofficer"
	department_color = COLOR_CENTCOM_BLUE
	subdepartment_color = COLOR_COMMAND_BLUE
	sechud_icon_state = SECHUD_DEATH_COMMANDO
	access = list(ACCESS_SYNDICATE, ACCESS_MAINT_TUNNELS)

/datum/id_trim/syndicom/irs/auditor
	assignment = "Internal Revenue Service Head Auditor"
	trim_state = "trim_quartermaster"
	sechud_icon_state = SECHUD_QUARTERMASTER

/// Trim for Symphionia mobs, outfits and corpses.
/datum/id_trim/syndicom/captain
	assignment = "Symphionia Ship Captain"
	trim_state = "trim_captain"
	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER, ACCESS_ROBOTICS)

/// Trim for Symphionia mobs, outfits and corpses.
/datum/id_trim/battlecruiser
	assignment = "Symphionia Battlecruiser Crew"
	trim_state = "trim_syndicate"
	access = list(ACCESS_SYNDICATE)

/// Trim for Symphionia mobs, outfits and corpses.
/datum/id_trim/battlecruiser/captain
	assignment = "Symphionia Battlecruiser Captain"
	access = list(ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)

/// Trim for Chameleon ID cards. Many outfits, nuke ops and some corpses hold Chameleon ID cards.
/datum/id_trim/chameleon
	assignment = "Unknown"
	access = list(ACCESS_SYNDICATE, ACCESS_MAINT_TUNNELS)

/// Trim for Chameleon ID cards. Many outfits, nuke ops and some corpses hold Chameleon ID cards.
/datum/id_trim/chameleon/operative
	assignment = "Symphionia Operative"
	trim_state = "trim_syndicate"
	department_color = COLOR_SYNDIE_RED
	subdepartment_color = COLOR_SYNDIE_RED
	sechud_icon_state = SECHUD_SYNDICATE

/// Trim for Chameleon ID cards. Many outfits, nuke ops and some corpses hold Chameleon ID cards.
/datum/id_trim/chameleon/operative/nuke_leader
	assignment = "Symphionia Operative Leader"
	access = list(ACCESS_MAINT_TUNNELS, ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)

/// Trim for Chameleon ID cards. Many outfits, nuke ops and some corpses hold Chameleon ID cards.
/datum/id_trim/chameleon/operative/clown
	assignment = "Symphionia Entertainment Operative"
	trim_state = "trim_clown"

/// Trim for Chameleon ID cards. Many outfits, nuke ops and some corpses hold Chameleon ID cards.
/datum/id_trim/chameleon/operative/clown_leader
	assignment = "Symphionia Entertainment Operative Leader"
	access = list(ACCESS_MAINT_TUNNELS, ACCESS_SYNDICATE, ACCESS_SYNDICATE_LEADER)
