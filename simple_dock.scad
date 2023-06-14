 

 
dock();
robot();
 
//color("gray",0.6) {
//    robot();
//    
//    translate([0,5,0])
//rotate([0,0,30])
//robot();
//    
//    translate([0,-5,0])
//rotate([0,0,-30])
//robot();
//    
//    translate([0,20,0])
//    robot();
//   
//    translate([0,-20,0])
//    robot();
//}

 
module dock(){
z_off=5.2;
translate([0,0, -z_off])
color("red", 0.9)
cube([10,50,3], center=true);

translate([0,0, z_off])
color("black", 0.9)
cube([10,50,3], center=true);

}

module robot(){

 
 translate([8,3.5,0])
 
// difference()
 {
 rotate([0,90,-90])
 scale(2)
 import("/home/ns/charger_design/13123_mp3_vehicle_charger_v1_L2.stl");
 
//translate([26,0,0])
//cube([20,20,15], center=true);
 }


color("gray")
translate([80, -10, 10])
cube([80,60,20], center=true);

translate([ 30,0,0])
cube([30,10,12], center=true);

}