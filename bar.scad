$fn=100;


//rotate([0,0,90])
//docking();

//plug_holder1();

difference(){
plug2();


//
//translate([105,0,10])
//cube([90,50,50], center=true);

}


//cylinder(h=37, d=3, center=true);


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
simplebar();
translate([0,0,32+1])
simplebar();

//translate([20,0,14+2.5])
//cube([5,5,28], center=true);

translate([0, 27.5,20-4])
cube([105,10,37], center=true);
    
}

module simplebar(){
   yoff=20;
   difference(){
       translate([0,yoff/2,0])
    cube([95+10, 25+yoff, 5], center=true);

    translate([44-4,0,0])
    cylinder(h=20, r=3.5 , center=true);

    translate([-44+4,0,0])
    cylinder(h=20, r=3.5 , center=true);
       
           
//    translate([0,0,-3])
//cube([40,10+yoff,20], center=true);

    } 
    
    
//    translate([0,0,-3])
//cube([88,5,5], center=true);

//95-73=22/2=11
//95-7=88/2=44
}



