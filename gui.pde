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


  textSize(fontSize[2]);
  text("Press 'O' to remove ordinates", 20, 485);
  text("Press 'I' to remove texts", 20, 500);
  text("Press 'Z' to show all data", 20, 515);
  text("Press  0 - 9 to show different dewey classes", 20, 530);
  text("--Press 'A' to show points", 20, 545);
  text("--Press 'S' to show month curves", 20, 560);
  text("--Press 'D' to show year curves", 20, 575);
  text("--Press 'F' to show true data", 20, 590);
  text("--Press 'G' to show predictions", 20, 605);

  noFill();
//   pushMatrix();
//   strokeWeight(0.5);
//   stroke(#FFFFFF);
//   textSize(#FFFFFF);
//   scale(0.1);
//   textAlign(LEFT, CENTER);
//   text("5 categories related to Mental Health from Checkouts Over Time", 180, 400);
//   popMatrix();

//   line(20, 55, 270, 55);
//   //subheading
//   stroke(#FFFFFF);
//   textSize(#FFFFFF);
//   text("Data Source: Seattle Public Library", 20, 65);
//   textSize(#FFFFFF);
//   text("MAT 259 | Jing Peng", 20, 110);


//   textSize(fontSize[2]);
//   text("Press 'O' to remove ordinates", 20, 485);
//   text("Press 'I' to remove texts", 20, 500);
//   text("Press 'Z' to show all data", 20, 515);
//   text("Press  0 - 9 to show different dewey classes", 20, 530);
//   text("--Press 'A' to show points", 20, 545);
//   text("--Press 'S' to show month curves", 20, 560);
//   text("--Press 'D' to show year curves", 20, 575);
//   text("--Press 'F' to show true data", 20, 590);
//   text("--Press 'G' to show predictions", 20, 605);

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
