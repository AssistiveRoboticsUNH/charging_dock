$fn=100;


//difference(){
//rotate([0,0,90])
//docking();
//
//translate([-40, -20, -10])
//cube([80,100,50]);
//}

plug_holder1();


plug2();

 
translate([-0.5,-5, 2])
load_metal_bar();

//difference(){
box2();

//translate([0,25, 10])
//cube([60,100,40], center=true);
//}

//measurement check
//translate([0,15, 14.4])
//cube([70,30,26.8], center=true);

//rotate([0,0,90]) {
//    docking2(); 
// simplebar(conn_h=3);
//// translate([40,3,1.5+1.5+2.0])
////    cube([10,24.5+8,3], center=true); 
//}

module box2(){
    mid_h=23.45;  
 
 
//mid_h=27.3;  // mid space+2bar

//23.45+2*1.9
    
clamp_bar();
translate([0,0,mid_h+ 5.35])
rotate([0,180,0])
clamp_bar();

//pillers
pillers();
translate([0,88.4,0])
pillers();
    
    
//conns
translate([25,-41.21,27.75]) {
    difference(){
cube([22,12,4], center=true);
  translate([2,0,0])
  cylinder(h=20, d=5  , center=true);
    }
}
translate([25, 41.21,27.75]) {
    difference(){
cube([22,12,4], center=true);
  translate([2,0,0])
  cylinder(h=20, d=5  , center=true);
    }
}



}

module pillers(){
translate([12.25,-44.20,14])
cube([6,6,19], center=true);
translate([-12.25,-44.20,14])
cube([6,6,19], center=true);
}


module clamp_bar(){
    difference(){
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

c=0.1; //clearence
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
import("/home/ns/charger_design/lib_stls/metal_bar.stl", center=true);
    
    // translate([-5,10,0])
//cube([94.42, 24.5, 1.95], center=true); 
// 
}

module plug2(){
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

translate([50,-14-2,18]) {
    
    difference(){
        
union(){
cube([20, 4, 40], center=true);

translate([0,28+4,0])
cube([20, 4, 40], center=true); 
    
translate([0,14+2,-14-4])
cube([20, 36, 4], center=true); 
}
    
    translate([0,15,12])
    rotate([90,0,0])
    cylinder(h=50, r=3.5 , center=true);
       
    }
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




module docking2(){

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
