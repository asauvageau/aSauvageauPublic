import java.util.Scanner;
String[] SeenData;
int screen=0;

PImage starImage;
PImage shotImage;
boolean menuRec=false;
int SeenAny=0;
int SeenNone=0;
int Fan=0;
int NotFan=0;
int NAFan=0;
int pm=0;
int aotc=0;
int rots=0;
int anh=0;
int tesb=0;
int rotj=0;
int shotTotal;
int han=0;
int greedo;
int noIdea;
ArrayList<String> seenList;

void setup()
{
  size(800, 600);
  frameRate(30);
  starImage = loadImage("star_wars_image.png");
  shotImage = loadImage("Shot_First.jpg");
  String[] lines=loadStrings("NewStarWars.txt");
  for (int i=2; i<lines.length; i++) {
    String[] data=lines[i].split(",");
    if (data[1].equals("Yes")) {
      SeenAny++;
    }
    if (data[1].equals("No")) {
      SeenNone++;
    }

    if (data[2].equals("Yes")) {
      Fan++;
    }
    if (data[2].equals("No")) {
      NotFan++;
    } 
    if (data[2].equals(" ")) {
      NAFan++;
    }
    if (data[3].equals("Star Wars: Episode I  The Phantom Menace")) {
      pm++;
    }
    if (data[4].equals("Star Wars: Episode II  Attack of the Clones")) {
      aotc++;
    }
    if (data[5].equals("Star Wars: Episode III  Revenge of the Sith")) {
      rots++;
    }
    if (data[6].equals("Star Wars: Episode IV  A New Hope")) {
      anh++;
    }
    if (data[7].equals("Star Wars: Episode V The Empire Strikes Back")) {
      tesb++;
    }
    if (data[8].equals("Star Wars: Episode VI Return of the Jedi")) {
      rotj++;
    }
    if (data[29].equals("Han")) {
      han++;
      shotTotal++;
    }
    if (data[29].equals("Greedo")) {
      greedo++;
      shotTotal++;
    }
    if (data[29].equals("I don't understand this question")) {
      noIdea++;
      shotTotal++;
    }
  }

  println(han);
  println(greedo);
  println(noIdea);
  println(shotTotal);
}



void draw() {
  if (screen==0) {
    //  fill(87, 2, 245);
    image(starImage, 0, 0, width, height);
    fill(232, 12, 12);

    fill(200, 100, 100);


    if (mousePressed) {
      if (menuRec(0, 0, width, height)) {
        screen=1;
      }
    }
  }
  if (screen==1) {
    fill(3, 142, 245);
    rect(0, 0, width, height);
    fill(160, 12, 87);
    rect(20, 20, 760, 50);
    fill(0);
    textSize(30);
    text("How many people have seen Star Wars?", 75, 55);
    if (mousePressed) {
      if (menuRec(20, 20, 760, 50)) {
        screen=2;
      }
    }



    fill(160, 12, 87);
    rect(20, 90, 760, 50);
    fill(0);
    textSize(30);
    text("How many people are star wars fans?", 85, 125);  
    if (mousePressed) {
      if (menuRec(20, 90, 760, 50)) {
        screen=3;
      }
    }

    fill(160, 12, 87);
    rect(20, 160, 760, 50);
    fill(0);
    textSize(30);
    text("What are the best and worst star wars movies?", 65, 195);
    if (mousePressed) {
      if (menuRec(20, 160, 760, 50)) {
        screen=4;
      }
    }

    fill(160, 12, 87);
    rect(20, 230, 760, 50);
    fill(0);
    textSize(30);
    text("Who Shot First?", 275, 265);
    if (mousePressed) {
      if (menuRec(20, 230, 760, 50)) {
        screen=5;
      }
    }

    fill(160, 12, 87);
    rect(20, 300, 760, 50);
    fill(160, 12, 87);
    rect(20, 370, 760, 50);
    fill(160, 12, 87);
    rect(20, 440, 760, 50);


    fill(160, 12, 87);
    rect(20, 510, 760, 50);
    fill(0);
    textSize(30);
    text("Back to main menu", 270, 545);
    if (mousePressed) {
      if (menuRec(20, 510, 760, 50)) {
        screen=0;
      }
    }
  }

  //most seen star wars movie screen
  if (screen==2) {
    fill(87, 2, 245);
    rect(0, 0, width, height);
    fill(100, 0, 100);
    rect(0, 0, 100, 50);
    fill(0);
    textSize(20);
    text("Back", 25, 35);
    if (mousePressed) {
      if (menuRec(0, 0, 100, 50)) {
        screen=1;
      }
    }
    fill(0);
    rect(50, 550, 700, 1);
    fill(0);
    rect(50, 100, 1, 450);
    text("Yes", 140, 580);
    text("No", 300, 580);
    double SeenAny1=(double)SeenAny/((double)SeenAny+(double)SeenNone);
    int SeenAny2=(int)(SeenAny1*100);
    textSize(30);
    text("How many people have seen a Star Wars movie?", 80, 100);
    textSize(60);
    text(SeenAny2+"%", 100, 500);
    text(100-SeenAny2+"%", 250, 500);
  }
  if (screen==3) {
    fill(87, 2, 245);
    rect(0, 0, width, height);
    fill(100, 0, 100);
    rect(0, 0, 100, 50);
    fill(0);
    textSize(20);
    text("Back", 25, 35);
    if (mousePressed) {
      if (menuRec(0, 0, 100, 50)) {
        screen=1;
      }
    }
  }
  if (screen==4) {
    fill(87, 2, 245);
    rect(0, 0, width, height);
    fill(100, 0, 100);
    rect(0, 0, 100, 50);
    fill(0);
    textSize(20);
    text("Back", 25, 35);
    if (mousePressed) {
      if (menuRec(0, 0, 100, 50)) {
        screen=1;
      }
    }
  }
  //shot first
  if (screen==5) {
    fill(87, 2, 245);
    rect(0, 0, width, height);
    fill(100, 0, 100);
    rect(0, 0, 100, 50);
    image(shotImage, 300, 0, 500, 400);

    fill(0);
    textSize(20);
    text("Back", 25, 35);
    if (mousePressed) {
      if (menuRec(0, 0, 100, 50)) {
        screen=1;
      }
    }
    fill(0);
    rect(50, 550, 700, 1);
    fill(0);
    rect(50, 100, 1, 450);
    text("Han shot first", 140, 580);
    text("Greedo shot first", 300, 580);
    text("Dont undertand the question", 470, 580);
    textSize(50);
    text((int)((double)han/(double)shotTotal*100)+"%", 150, 500);
    text((int)((double)greedo/(double)shotTotal*100)+"%", 320, 500);
    text((int)((double)noIdea/(double)shotTotal*100)+"%", 500, 500);
  }
}




boolean menuRec(int x, int y, int width, int height) {
  if (mouseX>=x && mouseX<=x+width &&mouseY>=y && mouseY<=y+height) {
    return true;
  } else {
    return false;
  }
}