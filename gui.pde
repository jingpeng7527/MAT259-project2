void drawInfo() {
  pushMatrix();
  strokeWeight(0.5);
  stroke(fontColor[0]);
  textSize(fontSize[0]);
  scale(0.1);
  textAlign(LEFT, CENTER);
  text("5 Mental Health Checkouts Over Time", 180, 400);
  popMatrix();

  line(20, 55, 460, 55);
  //subheading
  stroke(fontColor[1]);
  textSize(fontSize[2]);
  text("Data Source: Seattle Public Library", 20, 80);
  textSize(fontSize[1]);
  text("MAT 259 | Jing Peng", 20, 110);

  for(int i = 0; i < 5; i++){
    stroke(categoryColors[i]);
    strokeWeight(1);
    fill(categoryColors[i], lightness[i]);
    rect(20, 200 + 15*i, 15, 15);
    fill(255);
    textAlign(LEFT);
    textSize(fontSize[2]);
    pushMatrix();
    translate(0,i*5,0);
    text(categoriesName[i], 50, 200 + 15*i);
    popMatrix();
  }


  textSize(fontSize[2]);
  text("Press  1 - 5 to show different categories", 20, 600);
  text("Press 'a' or 'A' to show all data", 20, 615);
  text("Press 'd' or 'D' to remove ordinates", 20, 630);
  text("Press 'w' or 'W' to show points", 20, 645);
  text("Press 's' or 'S' to show special points", 20, 660);


  noFill();
}


void gui() {
   hint(DISABLE_DEPTH_TEST);
   cam.beginHUD();
   drawInfo();
   cp5.draw();
   cam.endHUD();
   hint(ENABLE_DEPTH_TEST);
}
