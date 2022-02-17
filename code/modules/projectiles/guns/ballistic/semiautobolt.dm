/obj/item/gun/ballistic/rifle/semiautobolt
    name = "Semi Internal Rifle"
    desc = "Some kind of semi action rifle. You get the feeling you shouldn't have this."
    icon_state = "moistnugget"
    icon_state = "moistnugget"
    mag_type = /obj/item/ammo_box/magazine/internal/semiboltaction
    bolt_wording = "bolt"
    bolt_type = BOLT_TYPE_STANDARD
    semi_auto = TRUE                                     //i cannot believe making a semi-action was as easy as changing this line to true...
    internal_magazine = TRUE
    fire_sound = "sound/weapons/rifleshot.ogg"
    fire_sound_volume = 80
    vary_fire_sound = FALSE
    rack_sound = "sound/weapons/mosinboltout.ogg"
    bolt_drop_sound = "sound/weapons/mosinboltin.ogg"

obj/item/gun/ballistic/rifle/update_icon()
    ..()
    add_overlay("[icon_state]_bolt[bolt_locked ? "_locked" : ""]")

obj/item/gun/ballistic/rifle/rack(mob/user = null)
    if (bolt_locked == FALSE)
        to_chat(user, "<span class='notice'>You open the bolt of \the [src]</span>")
        playsound(src, rack_sound, rack_sound_volume, rack_sound_vary)
        process_chamber(FALSE, FALSE, FALSE)
        bolt_locked = TRUE
        update_icon()
        return
    drop_bolt(user)

obj/item/gun/ballistic/rifle/can_shoot()
    if (bolt_locked)
        return FALSE
    . = ..()

obj/item/gun/ballistic/rifle/attackby(obj/item/A, mob/user, params)
    if (!bolt_locked)
        to_chat(user, "<span class='notice'>The bolt is closed!</span>")
        return
    . = ..()

/obj/item/gun/ballistic/rifle/examine(mob/user)
    ..()
    to_chat(user, "The bolt is [bolt_locked ? "open" : "closed"].")

///////////////////////
// BOLT ACTION RIFLE //
///////////////////////