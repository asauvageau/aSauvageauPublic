int snowNum=200;
float [] xPos = new float[snowNum];
float [] yPos = new float[snowNum];
int [] snowSize = new int[snowNum];
int [] moveRL = new int[snowNum];
PImage snowman;
void setup() {
  size(1000, 1000);
  frameRate(30);
snowman = loadImage("snowman.jpg");
  for (int i = 0; i < snowNum; i++) {
    snowSize[i] = round(random(1, 10));
    moveRL[i] = (int)(random(0, 2));
    xPos[i] = random(0, width);
    yPos[i] = random(0, height);

  }

}
void draw() {

  //background stuff
  background(0);
  fill(255);
  rect(0, 750, 1000, 250);
  fill(#2469DE);
  rect(0, 0, 1000, 250);
  fill(255);
  rect(0, 250, 1000, 350);
  fill(#F6FF00);
  rect(0, 665, width, 5);
  rect(0, 675, width, 5);
  fill(255);
//snowman
  //body
  ellipse(200, 920, 80, 80);
  ellipse(200, 880, 60, 60);
  ellipse(200, 850, 40, 40);
  fill(0);
  //face
  ellipse(193, 845, 5, 5);
  ellipse(207, 845, 5, 5);
  fill(#FC8105);
  noStroke();
  triangle(200, 848, 197, 853, 200, 853);
  stroke(0);
  fill(0);
  arc(200, 855, 10, 15, 0, HALF_PI);
  arc(200, 855, 10, 15, HALF_PI, PI);
  //arms
  strokeWeight(3);
  line(150, 860, 180, 870);
  line(250, 860, 230, 870);
  strokeWeight(1);


  //house
  fill(#A25E1A);
  rect(750, 300, 180, 180);
  fill(#B78623);
  triangle(700, 300, 985, 300, 840, 200);

image(snowman,300,400,150,150);

  //all the snow stuff
  fill(255);
  for (int i = 0; i < snowNum; i++) {

    ellipse(xPos[i], yPos[i], snowSize[i], snowSize[i]);
    //this part moves the flake in the x directiom
    if (moveRL[i] == 1) {
      //this is what makes the snow move back and forth as it falls
      xPos[i] += map(snowSize[i], .5, 10, .2, 1);
    } 
    if (moveRL[i] == 0) {
      xPos[i] -= map(snowSize[i], .5, 10, .2, 1);
    }
    //moves the flake in the y moveRL
    yPos[i] += snowSize[i] + moveRL[i]; 

    if (xPos[i] > width + snowSize[i] || xPos[i] < -snowSize[i] || yPos[i] > height + snowSize[i]) {
      xPos[i] = random(0, width);
      yPos[i] = -snowSize[i];
    }
  }
}