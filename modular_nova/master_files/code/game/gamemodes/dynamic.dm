#define MIN_MIDROUND_COST 20
#define ALT_MIDROUND_LOWER_TIME 4500
#define ALT_MIDROUND_UPPER_TIME 10500

// A lite version of the intercept, which only sends a paper with goals and a trait report (or a lack thereof)
<<<<<<< HEAD:modular_skyrat/master_files/code/game/gamemodes/dynamic.dm
/datum/game_mode/dynamic/proc/send_trait_report()
	. = "<b><i>Conglomeration of Colonists Status Summary</i></b><hr>"
=======
/datum/controller/subsystem/dynamic/proc/send_trait_report()
	. = "<b><i>Central Command Status Summary</i></b><hr>"
>>>>>>> Nova/master:modular_nova/master_files/code/game/gamemodes/dynamic.dm

	var/greenshift = GLOB.dynamic_forced_extended || (threat_level < MIN_MIDROUND_COST && shown_threat < MIN_MIDROUND_COST) // if both shown and real threat are below any ruleset, its greenshift time
	generate_station_goals(greenshift ? INFINITY : CONFIG_GET(number/station_goal_budget))

	if(GLOB.station_goals.len > 0)
		. = "<hr><b>No assigned goals.</b><BR>"
	else
		var/list/texts = list("<hr><b>Special Orders for [station_name()]:</b><BR>")
		for(var/datum/station_goal/station_goal as anything in GLOB.station_goals)
			station_goal.on_report()
			texts += station_goal.get_report()

		. += texts.Join("<hr>")
	if(!SSstation.station_traits.len)
		. = "<hr><b>No identified shift divergencies.</b><BR>"
	else
		var/list/trait_list_strings = list()
		for(var/datum/station_trait/station_trait as anything in SSstation.station_traits)
			if(!station_trait.show_in_report)
				continue
			trait_list_strings += "[station_trait.get_report()]<BR>"
		if(trait_list_strings.len > 0)
			. += "<hr><b>Identified shift divergencies:</b><BR>" + trait_list_strings.Join()

	. += "<hr>This concludes your shift-start evaluation. Have a secure shift!<hr>\
	<p style=\"color: grey; text-align: justify;\">This label certifies an Intern has reviewed the above before sending. This document is the property of Symphionia Corporation.</p>"

	print_command_report(., "Conglomeration of Colonists Status Summary", announce = FALSE)
	priority_announce("Hello, crew of [station_name()]. Our intern has finished their shift-start divergency and goals evaluation, which has been sent to your communications console. Have a secure shift!", "Divergency Report", SSstation.announcer.get_rand_report_sound())

/datum/controller/subsystem/dynamic
	/// Desired median point for midrounds, plus or minus the midround_roll_distance.
	var/midround_median_frequency = 36000

/// Divides threat budget based on the server config
/datum/controller/subsystem/dynamic/generate_budgets()
	if(CONFIG_GET(flag/split_threat_budget))
		return ..()

	round_start_budget = 0
	initial_round_start_budget = 0
	mid_round_budget = threat_level

/// Gets the chance for a heavy ruleset midround injection, the dry_run argument is only used for forced injection.
/datum/controller/subsystem/dynamic/get_heavy_midround_injection_chance(dry_run)
	var/next_midround_roll = next_midround_injection() - SSticker.round_start_time

	var/heavy_coefficient = CLAMP01((next_midround_roll - midround_light_upper_bound) / (midround_heavy_lower_bound - midround_light_upper_bound))

	return 100 * heavy_coefficient

/// Determines the next midround injection attempt based on the set median and roll distance.
/datum/controller/subsystem/dynamic/next_midround_injection()
	if(!isnull(next_midround_injection))
		return next_midround_injection

	if(last_midround_injection_attempt == 0)
		last_midround_injection_attempt = SSticker.round_start_time

	next_midround_injection = last_midround_injection_attempt + rand((midround_median_frequency - midround_roll_distance), (midround_median_frequency + midround_roll_distance))

	return next_midround_injection

/// If a midround injection fails to run, this can be called by the particular rule (if required) to attempt an alternate.
/datum/controller/subsystem/dynamic/proc/alternate_midround_injection()
	next_midround_injection = world.time + rand(ALT_MIDROUND_LOWER_TIME, ALT_MIDROUND_UPPER_TIME)
	log_dynamic_and_announce("Alternate midround injection in [DisplayTimeText(next_midround_injection - world.time)]")

#undef MIN_MIDROUND_COST
#undef ALT_MIDROUND_LOWER_TIME
#undef ALT_MIDROUND_UPPER_TIME
