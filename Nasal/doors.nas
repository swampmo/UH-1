# =====
# Doors
# =====

Doors = {};

Doors.new = func {
   obj = { parents : [Doors],
           pilot : aircraft.door.new("instrumentation/doors/pilot", 4.0),
		   copilot : aircraft.door.new("instrumentation/doors/copilot", 4.0),
		   leftchief : aircraft.door.new("instrumentation/doors/leftchief", 4.0),
		   rightchief : aircraft.door.new("instrumentation/doors/rightchief", 4.0),
		   leftslide : aircraft.door.new("instrumentation/doors/leftslide", 6.0),
		   rightslide : aircraft.door.new("instrumentation/doors/rightslide", 6.0)
           
         };
   return obj;
};

Doors.pilotexport = func {
   me.pilot.toggle();
}
Doors.copilotexport = func {
   me.copilot.toggle();
}
Doors.leftchiefexport = func {
   me.leftchief.toggle();
}
Doors.rightchiefexport = func {
   me.rightchief.toggle();
}
Doors.leftslideexport = func {
   me.leftslide.toggle();
}
Doors.rightslideexport = func {
   me.rightslide.toggle();
}


# ==============
# Initialization
# ==============

# objects must be here, otherwise local to init()
doorsystem = Doors.new();

