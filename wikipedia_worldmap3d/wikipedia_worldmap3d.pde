// tobystereo20121002.pde
// 
// http://www.tobystereo.com
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * changing colors and size by moving the mouse
 * 	 
 * MOUSE
 * position x          : size
 * position y          : color
 * 
 * KEYS
 * s                   : save png
 * p                   : save pdf
 *
 *
 *  TODO: 
 *  implement all languages
 *  fix 3D mapping currently only half a sphere 
 
*/

import processing.opengl.*;
import processing.pdf.*;

// GUI using controlP5
import controlP5.*;

  ControlP5 cp5;
  DropdownList d1, d2;
  int cnt = 0;

boolean savePDF = false;
long startMillis;
String language = "es";
String[] lang = {"ar","bg","ca","cs","da","de","en","eo","es","fa","fi","fr","gl","he","hu","id","it","ja","ko","lt","ms","nl","nn","no","pl","pt","ro","ru","sk","sl","sr","sv","tr","uk","vi","vo","war","zh"};
String message; 
boolean doLoop = true;
float pointSize = 0.5;
float rootPointSize = 0.5;
boolean threeD = true;


void setup() {
  size(displayWidth, displayHeight,OPENGL);
//  noCursor();
  startMillis = System.currentTimeMillis();
  println((System.currentTimeMillis() - startMillis) + " ms to loadStrings");
  
  cp5 = new ControlP5(this);
  // create a DropdownList
  d1 = cp5.addDropdownList("languageList")
          .setPosition(25, 50)
          .setHeight(height-100);
          ;
          
  customize(d1); // customize the first list
  if(height<width){
    radius = height/2;
  }  else {
    radius = width/2;
  }
  radius = 500;
}


void draw() {
  // this line will start pdf export, if the variable savePDF was set to true 
  if (savePDF) beginRecord(PDF, timestamp()+"_##.pdf");
  lights();
  
  colorMode(HSB, 360, 100, 100);
  rectMode(CENTER); 
  noStroke();
  if(doLoop){
    background(0,0,100);
    changeLanguage(language);
    doLoop = false;
  }

  // end of pdf recording
  if (savePDF) {
    savePDF = false;
    endRecord();
    pointSize = rootPointSize;
    doLoop = true;
  }
}


int currentLanguage;

void mouseReleased() {
  background(0,0,100);
  angleY = radians(map(mouseX,0,width,-360,360));  
//  angleX = radians(map(mouseY,0,height,360,-360)); 
  doLoop = true;
  changeLanguage(language); 
}

void keyPressed() {
  if (key=='s' || key=='S') saveFrame(timestamp()+"_##.png");
  if (key=='p' || key=='P') {doLoop = true; savePDF = true; pointSize = 0.001;}
  if (keyCode == 'd') {
    println("3D");
    background(0,0,100);
    threeD=true; 
    changeLanguage(language);
    doLoop = true;
  }
  if (key=='f') {
    println("2D");
    background(0,0,100);
    threeD=false; 
    changeLanguage(language); 
    doLoop = true;
  }
//  if (keyCode == DOWN) {
//    if(radius>=25) {
//      background(0,0,100);
//      radius -= 25;
//      changeLanguage(language);
//      doLoop = true;
//    }
//  }
//  if (keyCode == UP) {
//    if(radius<=2.5*width) {
//      background(0,0,100);
//      radius += 25;
//      changeLanguage(language);
//      doLoop = true;
//    }
//  }
  if (keyCode == DOWN) {
      background(0,0,100);
      angleX -= 25;
      changeLanguage(language);
      doLoop = true;
  }
  if (keyCode == UP) {
      background(0,0,100);
      angleX += 25;
      changeLanguage(language);
      doLoop = true;
  }
  if (keyCode == LEFT) {
      background(0,0,100);
      angleY -= 25;
      changeLanguage(language);
      doLoop = true;
  }
  if (keyCode == RIGHT) {
      background(0,0,100);
      angleY += 25;
      changeLanguage(language);
      doLoop = true;
  }
}


String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("$ty$tm$td_$tH$tM$tS", now);
}

String[] lines;
String[] words;

void changeLanguage(String language){  
  String[] lines = loadStrings("/data/csv/live_"+language+".csv");
  for (int i = 0; i < lines.length; i++) {
    // do something with each line:
    String[] words = split(lines[i], ',');

  
    
    if(threeD) {
      float x = map(float(words[2]),-180,180,0,360);
    float y = map(float(words[1]),90,-90,0,180);
      drawSphere(x,y);
    } else {
        float x = map(float(words[2]),-180,180,0,width);
    float y = map(float(words[1]),90,-90,0,height);
      fill(0);
      rect(x,y,pointSize,pointSize);
    }
  }
  
  
}

void customize(DropdownList ddl) {
  // a convenience function to customize a DropdownList
//  ddl.setBackgroundColor(color(255,255,255,0));
  ddl.setItemHeight(18);
  ddl.setBarHeight(25);
  ddl.captionLabel().set("Select Language");
  ddl.captionLabel().style().marginTop = 8;
  ddl.captionLabel().style().marginLeft = 3;
  ddl.valueLabel().style().marginTop = 3;
  for (int i=0;i<lang.length;i++) {
    ddl.setColorLabel(color(map(i,0,lang.length,0,255),map(i,0,lang.length,0,255),map(i,0,lang.length,0,255)));
    ddl.addItem(lang[i],i);
  }
  ddl.scroll(0);
  ddl.setColorBackground(color(0,0,0,15));
  ddl.setColorActive(color(100, 0, 0, 100));
  ddl.setColorForeground(color(150, 0, 0,50));
  ddl.setColorLabel(color(255, 50, 50));
}

void controlEvent(ControlEvent theEvent) {
  // DropdownList is of type ControlGroup.
  // A controlEvent will be triggered from inside the ControlGroup class.
  // therefore you need to check the originator of the Event with
  // if (theEvent.isGroup())
  // to avoid an error message thrown by controlP5.

  if (theEvent.isGroup()) {
    // check if the Event was triggered from a ControlGroup
    println("event from group : "+theEvent.getGroup().getValue()+" from "+theEvent.getGroup());
    int theIndex = int(theEvent.getGroup().getValue());
    language = lang[theIndex];
    doLoop = true;
  } 
  else if (theEvent.isController()) {
    println("event from controller : "+theEvent.getController().getValue()+" from "+theEvent.getController());
  }
}

float t = 0.0;
float s = 0.0;
int radius = 400;
float lastx = 0;
float lasty = 0;
float lastz = 0;
float originX = width/2;
float originY = height/2;
float originZ = 0.0;


float angleY = 0;  
float angleX = -90.0; 
float angleZ = 0.0;

void drawSphere(float col, float row)
{
  pushMatrix();
    
  s=0.0;
  t=0.0;
  translate(width/2, height/2, 0);
  rotateY( angleY );
  rotateX( angleX );
  rotateZ( angleZ );
  
  pushMatrix();
  
  
  s = map(col,-180,180,0,720);  // latitude = horizontal line
  t = map(row,-90,90,0,360);  // longitude = vertical line
  
  float radianS = radians(s);
  float radianT = radians(t);
  
  float thisx = originX + (radius * cos(radianS) * sin(radianT));
  float thisy = originY + (radius * sin(radianS) * sin(radianT));
  float thisz = originZ + (radius * cos(radianT));
  println("thisz: " + thisz);

  stroke(0,0,map(thisz,radius,0,0,100));
  strokeWeight(1);
  point(thisx,thisy,thisz);
//  pushMatrix();
//    translate(thisx,thisy,thisz);
//    sphere(1);
//  popMatrix();  
  
  lastx = thisx;
  lasty = thisy;
  lastz = thisz;
  
  popMatrix();
  popMatrix(); 
}
