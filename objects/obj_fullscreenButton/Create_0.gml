ini_open("save.dat")
global.fullscreen = ini_read_real("data","fullscreen",0)
ini_close()
window_set_fullscreen(global.fullscreen)