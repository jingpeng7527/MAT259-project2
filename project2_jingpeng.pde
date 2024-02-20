/*************************************************************************************
Mat 259 Project 2 3D Visualization: "Mental Health from Checkouts over time"               
Tested in Processing 4                                  
                                                     
Author: Jing Peng                       
Supervisor: George Legrady                           

Purpose: Show how to present volume data in a basic 3D environment     

Usage: 1. A mouse left-drag will rotate the camera around the subject.
          2. A right drag will zoom in and out. 
          3. A middle-drag (command-left-drag on mac) will pan. 
          4. A double-click restores the camera to its original position. 
          5. The shift key constrains rotation and panning to one axis or the other.
*************************************************************************************/

import peasy.*;
import controlP5.*;

PeasyCam cam;
ControlP5 cp5;

PFont font;


int startYear = 2006;
int endYear = 2023;

int[] fontSize = {280, 14, 12};
int[] fontColor = {240, 180};

float radiusMultiplier = 100; // Multiplier for percentage-based radius
float minRadius = 100; // Minimum radius for points
float maxRadius = 200; // Maximum radius for points
float Radius = 200;
float radius = 300;
PVector[] points;
color[] categoryColors = {#b7e1cd, #d7b5e8, #f4f1bb, #f9d0c4, #a6c8ed};
int[] kind;


Table table;
int numRows, numColumns;

ArrayList<Category> categories = new ArrayList<Category>();
// Map<Integer, ArrayList<Category>> map = new HashMap<Integer,ArrayList<Category>>();

void setup() {
  size(1250, 650, P3D);
  font = createFont("Arial", 100);
  cam = new PeasyCam(this, 750);
  // cam.setMinimumDistance(50);
  // cam.setMaximumDistance(800);
  cp5 = new ControlP5(this);

  loadData();

}

void draw() {

  background(56, 48, 60);
  gui();
  

  // noFill();
  // stroke(0);

  // drawInfo();


  for(int k = 0; k < 5 ; k++){
    float theta = map(k, 0, 5, 0, 2*PI);
    float x = radius * cos(theta);
    float y = radius * sin(theta);
    pushMatrix();
    translate(x, y, 0);
    drawCircleAndText();
    drawPoints(k);
    drawLines(k);
    //drawVertex(k);
    popMatrix();
    //drawLabels();

  }
  

  //if((mouseX<180) & (mouseY<180)) {
  //  cam.setActive(false);
  //} else {
  //  cam.setActive(true);
  //}

}
