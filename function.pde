void drawLines(int category){
    PVector p1;
    PVector p2;
    beginShape(); 
    stroke(categoryColors[category]);
    // stroke(#FFFFFF);
    noFill();
    //fill(categoryColors[category], 50);
    // noStroke();
    strokeWeight(1);
    //tint(255, 126); 
    for (int i = 0; i < 17; i++) {
        for (int j = 0; j < 11; j++) {
            // stroke(#FFFFFF);
            // strokeWeight(1);
            p1 = points[(i*12+j)*5+category];
            curveVertex(p1.x, p1.y, p1.z);
        }
    }
    endShape();

    beginShape(); 
    stroke(categoryColors[category]);
    // stroke(#FFFFFF);
    noFill();
    //fill(categoryColors[category], 50);
    //noStroke();
    for (int j = 0; j < 11; j++) {
        for (int i = 0; i < 17; i++) {
            p1 = points[(i*12+j)*5+category];
            curveVertex(p1.x, p1.y, p1.z);
        }
     }
     endShape();
}

void drawVertex(int category){
    PVector p;
    //int start = 0;
    for (int i = 0; i < 17; ++i) {
       for(int j = 0; j< 11; j++){
           //for (int category = 0; category < 5; category++) {
               beginShape();
               fill(categoryColors[category], 50);
               noStroke();
               p = points[(i*12+j)*5+category];
               vertex(p.x, p.y, p.z);
               p = points[(i*12+(j+1))*5+category];
               vertex(p.x, p.y, p.z);
               p = points[((i+1)*12+(j+1))*5+category];
               vertex(p.x, p.y, p.z);
               endShape();

               beginShape();
               fill(categoryColors[category], 50);
               noStroke();
               p = points[(i*12+j)*5+category];
               vertex(p.x, p.y, p.z);
               p = points[((i+1)*12+j)*5+category];
               vertex(p.x, p.y, p.z);
               p = points[((i+1)*12+(j+1))*5+category];
               vertex(p.x, p.y, p.z);
               endShape();
               // Category c = categories.get((i*12+j)*5+category);
               // System.out.println("i: "+c.year+c.month+c.category+" j: "+j+" category: "+category);

       }
    }

    // 2023
    for(int m = 0; m < 11; m++){
         int i = (17 * 12 + m) * 5 + category;
         beginShape();
         fill(categoryColors[category], 50);
         noStroke();
         p = points[i];
          vertex(p.x, p.y, p.z);
          p = points[i+5];
          vertex(p.x, p.y, p.z);
          p = points[m*5+5];
          vertex(p.x, p.y, p.z);
          endShape();

          beginShape();
          fill(categoryColors[category], 50);
          noStroke();
          p = points[i];
          vertex(p.x, p.y, p.z);
          p = points[m*5+5];
          vertex(p.x, p.y, p.z);
          p = points[m*5+10];
          vertex(p.x, p.y, p.z);
          endShape();

           //Category c = categories.get(i);
           //System.out.println("i: "+c.year+c.month+c.category+" j: "+" category: "+category);
    }
     
     // 12
    for(int m = 0; m < 17; m++){
     int i = (m * 12 + 11) * 5 + category;
         beginShape();
         fill(categoryColors[category], 50);
         noStroke();
          p = points[i];
          vertex(p.x, p.y, p.z);
          p = points[i-55];
          vertex(p.x, p.y, p.z);
          p = points[i+5];
          vertex(p.x, p.y, p.z);
          endShape();

          beginShape();
          fill(categoryColors[category], 50);
          noStroke();
          p = points[i];
          vertex(p.x, p.y, p.z);
          p = points[i+60];
          vertex(p.x, p.y, p.z);
          p = points[i+5];
          vertex(p.x, p.y, p.z);
          endShape();

//       Category c = categories.get(i);
//       System.out.println("kkk"+"i: "+c.year+c.month+c.category+" j: "+" category: "+category);
    }
}

 void drawCircleAndText() {
    pushMatrix();
    //translate(0, 0, -50);
    //stroke(180);
    // strokeWeight(1);
    noFill();
    //rotateY(PI/2);
    stroke(180);
    strokeWeight(1);
    ellipse(0, 0, maxRadius, maxRadius);
    popMatrix();


    for (int i = 0; i < 12; i++) {
      //noFill();
      pushMatrix();
      float theta = (i+1)*PI*2/12;
      translate(Radius*cos(theta+PI/2), Radius*sin(theta+PI/2));
      rotate(theta+PI/2+PI);
      textAlign(LEFT, CENTER);
      fill(180);
      textSize(15);
      text(i+1, 1, 0);
      popMatrix();
    }
    //if (showTitle) {
    //  textAlign(RIGHT, CENTER);
    //  fill(180);
    //  textSize(20);
    //  text(movieTitle, 190, 0);
    //  //text(movieTitle, 190, 80);
    //}

    
    // Draw the second circle at a 90-degree angle from the first circle
    
    rotateY(PI/2);
    pushMatrix();
    //translate(50, 0, 0);
    noFill();
    stroke(180);
    strokeWeight(1);
    //stroke(180);
    // strokeWeight(1);
    //translate(0, 0, -50);
    ellipse(0, 0, maxRadius, maxRadius);
    popMatrix();
    
    for (int i = 0; i < 18; i++) {
        pushMatrix();
        float theta = (i)*TWO_PI/18;
        translate(Radius*cos(theta+PI/2), Radius*sin(theta+PI/2));
        rotate(theta+PI);
        textAlign(RIGHT, CENTER);
        fill(180);
        textSize(15);
        text(i+2006+" ", 0, 0);
        popMatrix();
    }
}

void drawPoints(int category){
    pushMatrix();
    stroke(categoryColors[category], 180);
    strokeWeight(4);
    for (int i = 0; i < 17; ++i) {
       for(int j = 0; j< 11; j++){
            int m = (i * 12 + j) * 5 + category;
            PVector p1 = points[m];
            point(p1.x, p1.y, p1.z);
       }
    }
    popMatrix();
}
