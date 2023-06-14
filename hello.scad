bx=10;
by=50;
bz=8;

cx=50;
cy=23;
cz=18;

translate([-20,0, -13.5])
cube([bx, by, bz], center=true);
translate([-20,0,13.5])
cube([bx, by, bz], center=true);

translate([-20,21,0])
rotate([90,0,0])
cube([bx, 34, bz], center=true);


//color("blue", 0.8)
//cube([cx, cy, cz], center=true);

