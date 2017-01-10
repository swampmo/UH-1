
#On verifie et on largue
var dropTanks = func(){
        for(var i = 2 ;i < 5 ; i = i + 1 ){
           var select = getprop("sim/weight["~ i ~"]/selected");
           if(select == "droptank"){ load.dropLoad(i);}

        }
}

var clean = func(){

        setprop("sim/weight[5]/selected", "none");
        
      
}


var spray = func(){

        setprop("sim/weight[5]/selected", "sprayer");
        
}

var luggage = func(){

        setprop("sim/weight[5]/selected", "luggage");
        
        

}

var sar = func() {
        
        setprop("sim/weight[5]/selected", "sar");
       


}
var guns = func() {
        
        setprop("sim/weight[5]/selected", "guns");
       


}




#La boite de dialogue
#var ext_loads_dlg = gui.Dialog.new("dialog","Aircraft/F-15C/Dialogs/external-loads.xml");

#Begining of the dropable function.
#It has to be simplified and generic made
#Need to know how to make a table
dropLoad = func (number) {
          var select = getprop("sim/weight["~ number ~"]/selected");
          if(select != "none"){
                if(select == "Droptank"){
                     tank_submodel(number,select);
                     setprop("consumables/fuel/tank["~ number ~"]/selected", 0);
                     settimer(func load.dropLoad_stop(number),2);
                     setprop("controls/armament/station["~ number ~"]/release", 1);
                     setprop("sim/weight["~ number ~"]/selected", "none");
                     setprop("sim/weight["~ number ~"]/weight-lb", 0);
                }else{
                     load.dropMissile(number);
                     settimer(func load.dropLoad_stop(number),0.5);
                }


           }

           
}


#Need to be changed
dropLoad_stop = func(n) {     
         setprop("controls/armament/station["~ n ~"]/release", 0);
}








