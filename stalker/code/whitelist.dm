
#define ST_WHITELISTFILE "config/st_whitelist.txt"

GLOBAL_LIST(st_whitelist)
GLOBAL_PROTECT(st_whitelist)

/proc/load_st_whitelist()
	GLOB.st_whitelist = list()
	var/swl_text = file2text(ST_WHITELISTFILE)
	var/regex/swl_regex = new(@"^(?!#)(.+?)\s+=\s+(.+)", "gm")
	while(swl_regex.Find(swl_text))
		GLOB.st_whitelist[swl_regex.group[1]] += list(swl_regex.group[2])

/proc/check_st_whitelist(ckey, job_title)
	if(!GLOB.st_whitelist)
		return FALSE
	if(check_rights(R_ADMIN))
		return TRUE
	for (var/WL in GLOB.st_whitelist[ckey])
		if (WL == job_title)
			return TRUE
	return FALSE

#undef ST_WHITELISTFILE

/*
#define WHITELISTFILE "config/alienwhitelist.txt"

var/list/st_whitelist

/proc/load_st_whitelist()
	st_whitelist = file2list(WHITELISTFILE)
	if(!st_whitelist.len)	st_whitelist = null

/proc/check_st_whitelist(ckey, job_title)
	if(!whitelist)
		return 0
		if(ckey == "malgover")
			return 1
	for(var/line in st_whitelist)
		var/list/pair = text2list(line, " = ")
		if(pair[1] == ckey && pair[2] == job_title)
			return 1
	return 0

#undef WHITELISTFILE
*/