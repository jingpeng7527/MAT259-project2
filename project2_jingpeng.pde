/*************************************************************************************
Mat 259 Project 2 3D Visualization: "Mental Health from Checkouts over time"               
Tested in Processing 4                                  
                                                     
Author: Jing Peng                       
Supervisor: George Legrady                           

Purpose: Show how to present volume data in a basic 3D environment     

Usage: 1. A mouse left-drag will rotate the camera around the subject.
       2. A right drag will zoom in and out. 
       3. A middle-drag (command-left-drag on mac) will pan. 
       4. Press 1-5 to show different categories.
       5. Press A to draw the 5 categories in one sphere.
       6. Press 'd' or 'D' to remove ordinates.
       7. Press 'w' or 'W' to show points.
       8. Press 's' or 'S' to show special points.
          
*************************************************************************************/

import peasy.*;
import controlP5.*;

PeasyCam cam;
ControlP5 cp5;

PFont font;

int[] fontSize = {280, 14, 12};
int[] fontColor = {240, 180};

float radiusMultiplier = 100; // Multiplier for percentage-based radius
float minRadius = 100; // Minimum radius for points
float maxRadius = 200; // Maximum radius for points
float Radius = 185; //year, month position radius
float radius = 300; // category radius
PVector[] points;
color[] categoryColors = {#a9d9c4,#dbafb7, #afbcdb, #dbc7af ,#a9d6d9};
boolean[] click = {false,false,false,false,false};

// color[] categoryColors = {#FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF, #FFFFFF};

int l = 75;
int[] lightness = {l,l,l,l,l};

boolean[] showCa = {true, true, true, true, true};

boolean hasPoints = true;
boolean showAll = false;
boolean showSpecial = false;
boolean showAxis = true;

int[] kind;
String[] categoriesName = {"Anxiety", "Stress","Panic","Depression","Mental_Health"};


Table table;
int numRows, numColumns;

ArrayList<Category> categories = new ArrayList<Category>();
ArrayList<Integer> special = new ArrayList<Integer>();

// Map<Integer, ArrayList<Category>> map = new HashMap<Integer,ArrayList<Category>>();

void setup() {
  size(1250, 800, P3D);
  font = createFont("Arial", 100);
  cam = new PeasyCam(this, 900);
  // cam.setMinimumDistance(50);
  // cam.setMaximumDistance(800);
  cp5 = new ControlP5(this);

  loadData();

}

void draw() {

  background(0);
  gui();

  for(int k = 0; k < 5 ; k++){
    if (showCa[k] == true) {
      float theta = map(k, 0, 5, 0, 2*PI);
      float x = radius * cos(theta);
      float y = radius * sin(theta);
      pushMatrix();
      translate(x, y, 0);
      if(showAxis){
        drawCircleAndText();
      }
      if(hasPoints){
        drawPoints(k);
      }
      drawLines(k);
      popMatrix();
    }
  }

  if(showAll){
    if(showAxis){
      drawCircleAndText();
    }
    for(int k = 0; k < 5 ; k++){
      if(hasPoints){
        drawPoints(k);
      }
      drawLines(k);
    }
  }
}
