$fn=100;


//difference(){
//rotate([0,0,90])
//docking();
//
//translate([-40, -20, -10])
//cube([80,100,50]);
//}

//bump_switch();

//cylinder(h=17, d=2.6, center=true);


//cylinder(h=3, d=76.2);
//
//cylinder(h=10, d=20);



//translate([0,-16,5.5])

difference(){
plug_holder1();

translate([85, -25, -25])
rotate([0,0,16])
cube([30,30,20]);
}


//color("blue", alpha=0.5){
//    cube([11,15.9,20.9], center=true);
//}
//
//plug_switch();

 
//translate([-0.5,-5, 2])
//load_metal_bar();

//difference()
//{
//dock_walmart();
////
////translate([10,-25, 10])
////cube([60,100,60], center=true);
//}

//measurement check
//translate([0,15, 16.4])
//cube([70,30,26.8], center=true);

//rotate([0,0,90]) {
//    docking_screw(); 
// simplebar(conn_h=3);
//// translate([40,3,1.5+1.5+2.0])
////    cube([10,24.5+8,3], center=true); 
//}




module bump_switch(){
    h2h_outer=12.3;
    h2h_d=9.4;
    
    
    d=13;
    w=18;
    l=8;
    difference(){
    union(){
        translate([0,0,d/2+1-0.1 ])
        cube([l, w, 2], center=true);
        translate([0,0,-d/2 - 1+0.1 ])
        cube([l, w, 2], center=true);
        
        translate([-3-2.5,0,0])
        cube([3,w-6,d+3.8], center=true);
        
        translate([-11, 0, 0])
        rotate([0,90,0])
        cylinder(h=8, d=8.4, center=true);
    }
    

    
    translate([1.5, 0, -5]){
        translate([0, h2h_d/2, 0])
        cylinder(h=30, d=2.7, center=true);
        translate([0, -h2h_d/2, 0])
        cylinder(h=30, d=2.7, center=true);
    }
    
}

    //measurement

//    translate([4,0,5])
//    color("red", alpha=0.4)
//    cube([4,h2h_outer, d], center=true);
    
    
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

module pillers(){
translate([12.25,-44.20,14])
cube([6,6,19], center=true);
translate([-12.25,-44.20,14])
cube([6,6,19], center=true);
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

module cover(){
    
    translate([1,0,-1.5])
    cube([12,24.5+6,6], center=true);
   
//    cube([10,24.5+8+10,3], center=true); 
//    translate([0,-14.763,-2])
//    cube([10,3,3], center=true);   
//     
//         translate([0, 14.763,-2])
//    cube([10,3,3], center=true);  
 
}

module load_metal_bar(){
scale(1020)
//rotate([0,0,90])
import("/home/ns/charger_design/metal_bar.stl", center=true);
    
    // translate([-5,10,0])
//cube([94.42, 24.5, 1.95], center=true); 
// 
}

module plug_switch(){
//    so far working good. 

translate([50,0,20])
rotate([0,90,0]) {
    
difference(){ 
    union(){ 
        difference()
        {
            translate([0,0,10])
        cylinder(h=40, r=13.6+2, center=true);
            translate([0, 0,10])
        cylinder(h=40+10 , r=13.6, center=true);
            
            translate([-20,0,5])
        cube([20, 40, 50+10], center=true);
        }
        
//        two sides

//        translate([-8,13.5,-20])
//        cube([10, 2 , 40]);
//
//        translate([-8,-13.5-2,-20])
//        cube([10, 2 , 40]);
    }

//    connector hole. 
    translate([0, 0,0])
    rotate([90,0,0])
    cylinder(h=50, d=3.5 , center=true);
       
}

    translate([16,0,40]){ 
        difference(){
        //base
        cube([4,20,100], center=true); 
        //    two holes. 
            translate([0, 0,6.5])
            rotate([0,90,0]) {
            cylinder(h=10,d=5.5, center=true);
                
                translate([-30, 0,0])
                cylinder(h=10,d=5.5, center=true);
            }
        } 
    }

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
    translate([32.5+12.5 ,16 , -18])
    cube([65+24+25,d+8,4], center=true); 
        
    //two sides
    translate([0,6.2,-2])
    cube([w, 4, h], center=true);

    translate([0, d+10.2,-2])
    cube([w, 4, h], center=true);
        

    }
     
        //conn bridge
        translate([0,15,7.0])
        rotate([90,0,0])
        cylinder(h=50, d=5 , center=true);
    
        translate([30,16,-16])
        cylinder(h=10,d=5, center=true);
    
        translate([30+30.2,16,-16])
        cylinder(h=10,d=5, center=true);
    
        translate([30+30.2+25,16,-16])
        cylinder(h=10,d=5, center=true);
    
           
   }
   
   
}



module docking(){

mid_h=23.45;  //to reduce 0.6mmm
bar_h=1.9;    
conn_h=4;
    
//mid_h=27.3;  // mid space+2bar

//23.45+2*1.9
    
simplebar(conn_h=conn_h);
translate([0,0,mid_h+2*bar_h+conn_h])
simplebar(conn_h=conn_h);

//measurement check
//translate([20,15, 27.25/2+ conn_h/2])
//cube([70,30,27.3], center=true);


    //back connection
    translate([0, 32.8 , 20-4.35]) {
        difference(){
        cube([105,5,35.25], center=true);

            translate([0, 0,0])
            rotate([90, 0, 0]){
                translate([44-4,0,0])
                cylinder(h=20, d=5 , center=true);

                translate([-44+4,0,0])
                cylinder(h=20, d=5  , center=true);
            }
        }
    }
    
}

module simplebar(conn_h=3){ //bar connector
    
    
   yoff=20;
   difference(){
       translate([0,yoff/2,0])
    cube([95+10, 25+yoff, conn_h], center=true);

    translate([44-4,0,0])
    cylinder(h=20, d=5  , center=true);

    translate([-44+4,0,0])
    cylinder(h=20, d=5 , center=true);
       
           
//    translate([0,0,-3])
//cube([40,10+yoff,20], center=true);

    } 
    
    
//    translate([0,0,-3])
//cube([88,5,5], center=true);

//95-73=22/2=11
//95-7=88/2=44
}




module docking_screw(){

mid_h=23.45;  //to reduce 0.6mmm
bar_h=1.9;    
conn_h=4;
    
//mid_h=27.3;  // mid space+2bar

//23.45+2*1.9
    
simplebar(conn_h=conn_h);
translate([0,0,mid_h+2*bar_h+conn_h])
simplebar(conn_h=conn_h);

//measurement check
//translate([20,15, 27.25/2+ conn_h/2])
//cube([70,30,27.3], center=true);


    //back connection
    translate([0, 32.8 , 20-4.35]) {
        difference(){
        cube([105,5,35.25], center=true);

            translate([0, 0,0])
            rotate([90, 0, 0]){
                translate([44-4,0,0])
                cylinder(h=20, d=5 , center=true);

                translate([-44+4,0,0])
                cylinder(h=20, d=5  , center=true);
            }
        }
    }
    
}
