extends Node2D
var room = "Home-Alis"
var entry = "Entry2"
var loaded = false
var clear = false
var text = ['']
var paused = false
var song = "Home.mp3"
var songreset = true
var songplaying = true
var happened = {
	'wakeup' : false,
	'waitingoutside' : false,
	'goschool' : false,
	'doorconfrontation':false
}
var decision = []
var decisionevent = ''
var movementoverride = null
