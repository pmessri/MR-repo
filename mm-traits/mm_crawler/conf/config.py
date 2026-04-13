# Configuration Settings

# -----wait times-----

# PAGE_WAIT_TIME : wait time when new page is loaded (in seconds)
# ELEMENT_WAIT_TIME: wait time when new element is loaded (in seconds)

wait_time_settings = {
	"PAGE_WAIT_TIME": 3,
	"ELEMENT_WAIT_TIME": 1
}

#-----enable/disable options-----

# MYSQL_SAVE: save data to MySql (True or False)
# MONGODB_SAVE: save data to MongoDb (True or False)

options_settings = {
    "MYSQL_SAVE": True,
    "MONGODB_SAVE": True
}


#-----debug settings-----

# PRINT_TB: print the traceback/exception on terminal (True or False)
# PRINT_DEBUG_INFO: print the debug/informational messages on terminal (True or False)
# PRINT_FULL_DEBUG_INFO: print the debug messages including function call and arguments on terminal (True or False)

debug_settings = {
	"PRINT_TB": True,
	"PRINT_FULL_DEBUG_INFO": True
}