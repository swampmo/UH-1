# =====
# Doors
# =====
Doors = {};

Doors.new = func {
   obj = { parents : [Doors],
 leftFrontDoor : aircraft.door.new("instrumentation/doors/leftFrontDoor", 8.0),
rightFrontDoor: aircraft.door.new("instrumentation/doors/rightFrontDoor", 8.0),
leftSideDoor: aircraft.door.new("instrumentation/doors/leftSideDoor", 8.0),
rightSideDoor: aircraft.door.new("instrumentation/doors/rightSideDoor", 8.0),
leftSlideDoor: aircraft.door.new("instrumentation/doors/leftSlideDoor", 8.0),
rightSlideDoor: aircraft.door.new("instrumentation/doors/rightSlideDoor", 8.0),
  };
   return obj;
};

Doors.leftFrontDoorexport = func {
   me.leftFrontDoor.toggle();
}

Doors.rightFrontDoorexport = func {
   me.rightFrontDoor.toggle();
}
Doors.leftSideDoorexport = func {
   me.leftSideDoor.toggle();
}
Doors.rightSideDoorexport = func {
   me.rightSideDoor.toggle();
}
Doors.leftSlideDoorexport = func {
   me.leftSlideDoor.toggle();
}
Doors.rightSlideDoorexport = func {
   me.rightSlideDoor.toggle();
}

# ==============
# Initialization
# ==============

# objects must be here, otherwise local to init()
doorsystem = Doors.new();
