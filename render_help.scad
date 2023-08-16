$fn=100;

//color("yellow", 0.8)
//difference(){
//import("lib_stls/plug_org_small.stl");
//    
////    union(){
////translate([-15.8,-5,-20])
////cube([100,40,30]);
////
////translate([-140.5,-5,-20])
////cube([100,40,30]);
////
////translate([-60.5,-29,-20])
////cube([50,40,30]);
////
////translate([-60.5,20,-20])
////cube([50,40,30]);
////    }
//    
//}
//
//design_plug_terminal();




translate([0, 49,-2])
parallel_terminal();

//color("gray", 0.4)
//translate([-32, 60, 10])
//rotate([0, 180, 0])
//dock_walmart();

plug_conn_red_black();




color("gray", 0.2) {
    
    translate([30,40,0])
rotate([0,0,30])
plug_conn_red_black();
translate([-35,-28,0])
rotate([0,0,-30])
plug_conn_red_black();
    
    translate([0,20,0])
    plug_conn_red_black(); 
    translate([0,-20,0])
    plug_conn_red_black();
}


//color("gray", 0.6)
//translate([10, 49,-3.5])
//plug_holder1();




module plug_conn_red_black(){
    color("yellow", 0.4)
    difference() {
    translate([-55,65,-8])
    rotate([0,90,0])
    cylinder(h=80, r=10);

    translate([-43,60.50,0])
    cube([30,10,10]);
        
        translate([-43,60.50,-27])
    cube([30,10,10]);
    }


    translate([0,0,-2])
    color("red",0.6)
    import("lib_stls/plug_terminal.stl");

    translate([-55,0,-14])
    rotate([0,180,0])
    color("black", 0.7)
    import("lib_stls/plug_terminal.stl");
}
 

module parallel_terminal(){
    color("red", 0.4) 
    translate([-32, 8, 8])
    load_metal_bar();
     
    color("black", 0.4)
    translate([-32, 8, -20])
    load_metal_bar();
}
 
module design_plug_terminal(){
    translate([-5,50,-3])
    difference()
    {
    translate([-23, 19.5, -20])
    rotate([90,0,0])
    cylinder(h=8, r=30);

    translate([-23, 20.5, -20])
    rotate([90,0,0])
    cylinder(h=12, r=29);
        
        translate([-60,5, -50])
        cube([80,30,54]);
        
    }
}

module plug_holder1(){
w=11;
d=15.9-0.3;
h=21+8;
 
    
    difference()
    {
        
    union(){
    //base
    translate([0,14+2,-14-4])
    cube([24, d+8, 4], center=true); 
    
    //two sides
    translate([0,6.2,-2])
    cube([w, 4, h], center=true);

    translate([0, d+10.2,-2])
    cube([w, 4, h], center=true);
        

    }
        
        translate([0,15,7.0])
        rotate([90,0,0])
        cylinder(h=50, d=5 , center=true);
           
   }
   
   //base conn 
        rotate([0,90,0])
       translate([18,16,23.5]){ 
           //measurement. 
//            translate([-10,-15,-29])
//           cube([10,30,33]);
           
        difference(){
        //base
            translate([0,0,15])
        cube([4,d+8,65], center=true); 
        //    two holes. 
            translate([0, 0,6.5])
            rotate([0,90,0]) {
            cylinder(h=10,d=5, center=true);
                
                translate([-30.2, 0,0])
                cylinder(h=10,d=5, center=true);
            }
        } 
    }
   
   
   
}


module load_metal_bar(){
scale(1020)
//rotate([0,0,90])
import("/home/ns/charger_design/lib_stls/metal_bar.stl", center=true);
    
    // translate([-5,10,0])
//cube([94.42, 24.5, 1.95], center=true); 
// 
}


module dock_walmart(){
    mid_h=26.5-1-0.5;  
 
 
//mid_h=27.3;  // mid space+2bar

//23.45+2*1.9
   
   difference()
    { 
    union(){
clamp_bar();
translate([0,0,mid_h+ 6.4])
rotate([0,180,0])
clamp_bar();


translate([25.5,0, 1 ])
cube([22,94.4,4], center=true);  
    
translate([25.5,0, 30.38 ])
cube([22,94.4,4], center=true);  
    
translate([34.5,0,16 ])
cube([4,94.4,31], center=true);  
    }
    
////conns
translate([30,-38 ,16]) 
rotate([0,90,0])
  cylinder(h=20, d=5  , center=true);
 
translate([30, 38 ,16]) 
rotate([0,90,0])
  cylinder(h=20, d=5  , center=true);
    
    
    translate([24,-38 ,16]) 
//rotate([0,90,0])
  cylinder(h=40, d=5  , center=true);
 
translate([24, 38 ,16]) 
//rotate([0,90,0])
  cylinder(h=40, d=5  , center=true);
    
    
}



}

module clamp_bar(){
    difference()
    {
rotate([0,0,90]) {
    
    difference(){
    union(){
cube([94.42, 24.5+6, 1.95], center=true); 

translate([40.2,0,1.5+3])
 cover();
    
translate([-42.2,0,1.5+3])
 cover();
}
    translate([-46,0,0])
    cube([10,4,20], center=true); //small cut
}
}

c=0.2; //clearence
translate([0,0,2])
cube([24.5+c,94.42+c ,1.95+c], center=true); //metal_bar size

}
}
