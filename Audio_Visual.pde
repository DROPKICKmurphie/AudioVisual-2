PImage imageOne;
PImage imageTwo;
PImage imageThree;

import ddf.minim.*;

Minim minim;

AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;


void setup() {
  size(600, 900, P3D);
  background(#000000);

  imageOne = loadImage("1.png");
  imageTwo = loadImage("2.png");
  imageThree = loadImage("3.png");
  
  imageMode(CENTER);
  
   minim = new Minim(this);
  player = minim.loadFile("one.mp3");
  player2 = minim.loadFile("two.mp3");
  player3 = minim.loadFile("three.mp3");

  
}

void draw() {
  noCursor();
  
  if(mouseX < width/3){
    image(imageOne, width/2, height/2);
    player.play();
  }  else if(mouseX > width/3 && mouseX < 2*width/3) {
    image(imageTwo, width/2, height/2);
    player2.play();
    player.pause();
  }  else if(mouseX > width/3) {
    image(imageThree, width/2, height/2);
    player3.play();
    player2.pause();
  }
}
