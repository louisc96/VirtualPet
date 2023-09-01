import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500,P3D);
  arduino = new Arduino(this, Arduino.list()[1], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}


public void draw() {
  background(192);
  int y = arduino.analogRead(5);
  System.out.println(y);
  if(y>500) {
    translate(0,100,150);
  } else if (y>450){ 
    translate(0,60,20);
  } else if (y>400){ 
    translate(0,50,-130);
  } else if (y>350){ 
    translate(0,0,-260);
  } else if (y>300){ 
    translate(0,-50,-390);
  } else if (y>250){ 
    translate(0,-200,-700);
  } else if (y>200){ 
    translate(0,-400,-1200);
  } else if (y>150){ 
    translate(0,-800,-1800);
  } else if (y>100){ 
    translate(0,-1300,-2400);
  }else{
    translate(0,-1800,-3000);
  }
  fill(144, 238, 144);
noStroke();
translate(width/2, height/2);
rotate(PI/3.5);
ellipse(-30, 40, 200, 80);
rotate(PI/2.4);
ellipse(-30, -50, 200, 80);
rotate(PI/2);
ellipse(-120, -60, 200, 80);
rotate(PI/1.8);
ellipse(-110, 50, 200, 80);
noStroke();
fill(0,0,0);
rotate(PI/4.1);
ellipse(10, 80, 50, 300);
ellipse(10, -70, 30, 30);
fill(255,0,0);
noFill();
stroke(0);
arc(20,-90, 20,20, 0, PI/2);
rotate(PI/2);
arc(-90,0, 20,20, 0, PI/2);
}
