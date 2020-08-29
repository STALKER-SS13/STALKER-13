#define ST_WHITELISTFILE "[global.config.directory]/st_whitelist.txt"

GLOBAL_LIST(st_whitelist)
GLOBAL_PROTECT(st_whitelist)

/proc/load_st_whitelist()
	GLOB.st_whitelist = list()
	var/swl_text = file2text(ST_WHITELISTFILE)
	var/regex/swl_regex = new(@"^(?!#)(.+?)\s+=\s+(.+)", "gm")
	while(swl_regex.Find(swl_text))
		GLOB.st_whitelist[swl_regex.group[1]] += list(swl_regex.group[2])

/proc/check_st_whitelist(ckey, access_to)
	if(!GLOB.st_whitelist)
		return FALSE
	//if(ckey == "valtosss")
	//	return TRUE
	for (var/WL in GLOB.st_whitelist[ckey])
		if (WL == access_to)
			return TRUE
	return FALSE

#undef ST_WHITELISTFILE
