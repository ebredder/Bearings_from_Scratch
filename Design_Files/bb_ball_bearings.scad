n=12;
ball=6;

dist=2*ball-.75;
outer=40;

hole=6.35;

module balls(){
//balls or BBs/pellets
for(i=[0:n-1]){
    
    rotate([0,0,i*360/n]) translate([dist,0]) circle(d=ball,center=true,$fn=60);
    }
}

module center(){
//center
difference(){
    circle(r=dist-ball/2,center=true,$fn=60);
    circle(d=hole,center=true,$fn=60);
    }
}

module centertop(){
//center top
difference(){
    circle(r=dist-ball/6,center=true,$fn=60);
    circle(d=hole,center=true,$fn=60);
    }
}    

module outside(){
//outside
difference(){
    circle(r=outer/2,center=true,$fn=60);
    circle(r=dist+ball/2,center=true,$fn=60);
    }
}

module outsidetop(){
//outside top
difference(){
    circle(r=outer/2,center=true,$fn=60);
    circle(r=dist+ball/6,center=true,$fn=60);
    }
}

//balls();
//center();
centertop();
//outside();
outsidetop();
