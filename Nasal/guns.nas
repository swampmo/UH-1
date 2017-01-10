# fire on gun only if guns are here
var selectedPlatform = props.globals.getNode("sim/weight[5]/selected");

setlistener("/sim/signals/fdm-initialized", func() { 

  setlistener("/controls/armament/trigger", func(n) {
      #print("GUNS GUNS GUNS");
      var fire = n.getValue();
      var station = selectedPlatform.getValue();
      #print(station ~ ":" ~ fire);
      if(station=="guns"){
        setprop("/controls/armament/gun-fire", fire);
      }
  }, 1);

    setlistener("/controls/armament/trigger1", func(n) {
      #print("ROCKETS LEFT");
      var fire = n.getValue();
      var station = selectedPlatform.getValue();
      #print(station ~ ":" ~ fire);
      if(station=="guns"){
        setprop("/controls/armament/rocket1-fire", fire);
      }
  }, 1);

    setlistener("/controls/armament/trigger2", func(n) {
      #print("ROCKETS RIGHT");
      var fire = n.getValue();
      var station = selectedPlatform.getValue();
      #print(station ~ ":" ~ fire);
      if(station=="guns"){
        setprop("/controls/armament/rocket2-fire", fire);
      }
  }, 1);  

},1,0);
  
 reload_Cannon = func {
        setprop("ai/submodels/submodel/count",1000);
        setprop("ai/submodels/submodel[1]/count",1000);
        setprop("ai/submodels/submodel[2]/count",1000);
        setprop("ai/submodels/submodel[3]/count",1000);
		setprop("ai/submodels/submodel[4]/count",1000);
		setprop("ai/submodels/submodel[5]/count",1000);
		setprop("ai/submodels/submodel[6]/count",7);
		setprop("ai/submodels/submodel[7]/count",7);
		
}


