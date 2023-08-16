# robot_auto_charging


<img src="imgs/prints_all.png">

### part 1: main dock


```
dock_walmart();
```
<img src="imgs/dock1.png">


### part 2: plug holder

```
    //plug_holder1(); 
    difference(){
    plug_holder2(); 
        translate([85, -25, -25])
        rotate([0,0,16])
        cube([30,30,20]);
    }
```

<img src="imgs/plugholder.png">

### part 3: bump switch
```
bump_switch();
////bump switch connector.
cylinder(h=17, d=2.6, center=true);
```
<img src="imgs/bump1.png">

