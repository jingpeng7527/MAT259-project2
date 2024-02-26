void keyPressed() {
  if (keyCode == '1') {
    showCa[0] = !showCa[0];
    showAll = false;
  }
  if (keyCode == '2') {
    showCa[1] = !showCa[1];
    showAll = false;
  }
  if (keyCode == '3') {
    showCa[2] = !showCa[2];
    showAll = false;
  }
  if (keyCode == '4') {
    showCa[3] = !showCa[3];
    showAll = false;
  }
  if (keyCode == '5') {
    showCa[4] = !showCa[4];
    showAll = false;
  }

  if (keyCode == 'a' || keyCode == 'A') {
    showAll = !showAll;
    for (int i = 0; i < 5; i++) {
      showCa[i] = false;
    }
  }
  if (keyCode == 'w' || keyCode == 'W') {
    hasPoints = !hasPoints;
  }
  if (keyCode == 's' || keyCode == 'S') {
    showSpecial = !showSpecial;
  }
  if (keyCode == 'd' || keyCode == 'D') {
    showAxis = !showAxis;
  }
}

void mousePressed(){
  
  for(int i = 0; i <5; i++){
    if ( mouseX > 20 && mouseX < 20+15 && 
    mouseY > 200 + 15*i && mouseY < 200+15*i+15) {
       click[i] = !click[i];
       if(click[i]){
         lightness[i]+=175;
       }else{
         lightness[i]=75;
       }
     }
    }
}
