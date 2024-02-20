//void drawLabels(){
//   fill(255);
//   textSize(30);
//   pushMatrix();
//   textAlign(LEFT, TOP);
//   translate(-50, 50, 50);
//   scale(0.1);
//   text("2006", 0, 0, 0);
//   popMatrix();
  
//   pushMatrix();
//   textAlign(RIGHT, TOP);
//   translate(50, 50, 50);
//   scale(0.1);
//   text("2023", 0, 0, 0);
//   popMatrix();
  
//   pushMatrix();
//   textAlign(RIGHT, TOP);
//   translate(-50, -50, 50);
//   scale(0.1);
//   text("Dec", 0, 0, 0);
//   popMatrix();
  
//   pushMatrix();
//   textAlign(RIGHT, BOTTOM);
//   translate(-50, 50, 50);
//   scale(0.1);
//   text("Jan", 0, 0, 0);
//   popMatrix();
  
//   pushMatrix();
//   textAlign(LEFT, CENTER);
//   translate(50, 50, 50);
//   scale(0.1);
//   text("Percentage", 0, 0, 0);
//   popMatrix();
  
//   pushMatrix();
//   textAlign(LEFT, CENTER);
//   translate(50, 50, -50);
//   scale(0.1);
//   text("Perta", 0, 0, 0);
//   popMatrix();
// }







  // for(int i=0; i<categories.size(); i++){
    // float yearAxis = map(categories.get(i).year, 2006, 2023, -50, 50);
    // // float monthAxis = categories.get(i)+0.000;
    // float monthAxis = map(categories.get(i).month, 1, 12, -50, 50);
    // float percentageAxis = map(categories.get(i).percentage, 0, 1.1, -50, 50);
    // color c = elementDetermine(categories.get(i).category);

    // We only draw the points that are later than 2005-12-31
    // if (yearAxis > map(2006, 2006, 2023, -50, 50)){
    //     pushMatrix();
    //     translate(yearAxis, monthAxis, percentageAxis);
    //     strokeWeight(2);
    //     stroke(c);
    //     point(0,0,0);
    //     // compute the mouse distance with the point
    //     float mouseObjectDistance = sq(mouseX-screenX(0,0,0)) + sq(mouseY-screenY(0,0,0));
    //     // if the distance is smaller than a certain value
    //     if(mouseObjectDistance < 1000){
    //     // add a bigger point
    //     strokeWeight(10);
    //     point(0,0,0);
    //     fill(255,255,255);
    //     // add text label
    //     textMode(SHAPE);
    //     // if the distance is close, make the textsize smaller
    //     if(cam.getDistance()<100){
    //     textSize(3);}
    //     // if the distance is far, make the textsize bigger
    //     else{
    //         textSize(5);}
    //     String ca = " "+categories.get(i).percentage+"%"+categories.get(i).date;
    //     text(categories.get(i).category+ca,0,0);
    //     }
    //     popMatrix();
    // }
  // }

  // float z1, z2, z3, z4, x1, x2, y1, y2;

//   cColor = color(chinaHue, chinaSaturation, chinaBright, chinaTrans);
//   fill(cColor);

//   for (int i = beginDewey; i < endDewey; i++) {
    
//       beginShape(QUADS);
//       z1 = min(categories.get(i).percentage, Z)+zBase;
//       z2 = min(cVolume[j+1][i], Z)+zBase;
//       z3 = min(cVolume[j+1][i+1], Z)+zBase;
//       z4 = min(cVolume[j][i+1], Z)+zBase;

//       x1 = (i-beginDewey)*adjustX;
//       x2 = (i+1-beginDewey)*adjustX;
//       y1 = j*adjustY;
//       y2 = (j+1)*adjustY;
//       vertex(x1, y1, z1);
//       vertex(x1, y2, z2);
//       vertex(x2, y2, z3);
//       vertex(x2, y1, z4);
//       endShape();
    
//   }
  
  // drawLabels();  
    
  // fill(200, 20);
  // noStroke();
  // box(100);