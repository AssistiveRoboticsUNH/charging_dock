$fn=100;


difference(){
rotate([0,0,90])
docking();

translate([-40, -20, -10])
cube([80,100,50]);
}

//plug_holder1();


//plug2();
 

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

mid_h=23.45;
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



