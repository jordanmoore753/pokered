RedsHouse2F_Object:
	db $a ; border block

	def_warp_events
	warp_event  7,  1, REDS_HOUSE_1F, 3

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_MOM, STAY, LEFT, TEXT_REDSHOUSE2F_POKEMON
	object_event 5, 5, SPRITE_YOUNGSTER, STAY, LEFT, TEXT_REDSHOUSE2F_YOUNGSTER2, OPP_BUG_CATCHER, 1

	def_warps_to REDS_HOUSE_2F
