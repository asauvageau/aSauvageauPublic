import java.util.ArrayList;
import java.util.Arrays;
import java.util.ListIterator;
import static java.lang.System.*;
ArrayList<String> IList;
ArrayList<String> FList;
ListIterator<String> liter;
ListIterator<String> Fliter;
int screen;
String temp;
String temp2;
String IString;
String FString;
boolean menuRec=false;
int Timer;
int sTimer;
int correct;



void setup() {
  size(1000, 800);
  screen=0;
  frameRate(30);
  Timer=15;
  IString="";
  FString="";
  sTimer=0;
  IList = new ArrayList<String>();
  liter=null;
  FList = new ArrayList<String>();
  Fliter=null;
  for (int i=0; i<=9; i++) {
    int rand=round(random(0, 9));
    String temp1=Integer.toString((int)random(0, 9)).toString();
    IString+=temp1;
    IList.add(temp1);
  }
  println(IList.toString());
  liter=IList.listIterator();
}

void draw() {
  if (screen==0) {
    frameRate(30);
    background(#230EEA);
    textSize(50);
    text("Test Your Memory!", 300, 400);
    if (mousePressed) {
      if (menuRec(0, 0, width, height)) {
        screen=1;
      }
    }
  }
  if (screen==1) {
    background(#230EEA);
    textSize(30);
    text(Timer+" Seconds left", 10, 40);
    sTimer++;
    if (sTimer>=30) {
      Timer--;
      sTimer=0;
    }
    text(IString, 300, 400);

    if (Timer<0) {
      screen=2;
    }
  }
  if (screen==2) {
    background(#230EEA);
    fill(255);
    rect(200, 400, 600, 200);
    fill(0);
    textSize(35);
    text("please enter the line of numbers", 220, 510);
    text(FList.toString(),220,570);
  }
  if (screen==3){
      background(#230EEA);
     text("you got "+correct,200,150);
    text("correct line"+IList.toString(),200,200);
    text("your line   "+FList.toString(),200,250);
    }
  }

void keyPressed() {
  if (key=='1') {
    temp2="1";
    FString+=temp2;
    FList.add(temp2);
    print(FList.toString());

  }
  if (key=='2') {
    String temp2="2";
    FString+=temp2;
    FList.add(temp2);
  }
  if (key=='3') {
    String temp2="3";
    FString+=temp2;
    FList.add(temp2);
  }
  if (key=='4') {
    String temp2="4";
    FString+=temp2;
    FList.add(temp2);
  }
  if (key=='5') {
    String temp2="5";
    FString+=temp2;
    FList.add(temp2);
  }
  if (key=='6') {
    String temp2="6";
    FString+=temp2;
    FList.add(temp2);
  }
  if (key=='7') {
    String temp2="7";
    FString+=temp2;
    FList.add(temp2);
  }
  if (key=='8') {
    String temp2="8";
    FString+=temp2;
    FList.add(temp2);
  }
  if (key=='9') {
    String temp2="9";
    FString+=temp2;
    FList.add(temp2);
  }
  if (key=='0') {
    String temp2="0";
    FString+=temp2;
    FList.add(temp2);
  }
  if (key==BACKSPACE) {
    String temp2="1";
    FString=FString.substring(0, FString.length()-1);
    FList.remove(FString.length());
  }
  if (key==ENTER) {
    Fliter=FList.listIterator();
    correct=0;
    screen=3;
    while(Fliter.hasNext()&&liter.hasNext()){
    if(Fliter.next().equals(liter.next())){
    correct++;
    }
    }}
  
}
boolean menuRec(int x, int y, int width, int height) {
  if (mouseX>=x && mouseX<=x+width &&mouseY>=y && mouseY<=y+height) {
    return true;
  } else {
    return false;
  }
}