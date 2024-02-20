void loadData() {
   table = loadTable("categories_out.csv", "header");
   numRows = table.getRowCount();
   //println("Rows: " + numRows);
   kind = new int[numRows * 5];
   
   for(int i=0; i<numRows; i++){
     int year = table.getInt(i,0);
     int month = table.getInt(i,1);
     String date = table.getString(i,8);

     String category= "Anxiety";
     float percentage = table.getFloat(i,9);
     categories.add(new Category(year, month, date, category, percentage));
     kind[i * 5] = 0;

         // System.out.println(year+" "+month+" "+date+" "+category+" "+percentage);

     category= "Stress";
     percentage = table.getFloat(i,10);
     categories.add(new Category(year, month, date, category, percentage));
          kind[i * 5+1] = 1;

     // System.out.println(year+" "+month+" "+date+" "+category+" "+percentage);

     category= "Panic";
     percentage = table.getFloat(i,11);
     categories.add(new Category(year, month, date, category, percentage));
    kind[i * 5+2] = 2;

     // System.out.println(year+" "+month+" "+date+" "+category+" "+percentage);

     category= "Depression";
     percentage = table.getFloat(i,12);
     categories.add(new Category(year, month, date, category, percentage));
    kind[i * 5+3] = 3;

     // System.out.println(year+" "+month+" "+date+" "+category+" "+percentage);

     category= "Mental_Health";
     percentage = table.getFloat(i,13);
     categories.add(new Category(year, month, date, category, percentage));
      kind[i * 5+4] = 4;

     // System.out.println(year+" "+month+" "+date+" "+category+" "+percentage);
   }
   
   points = new PVector[categories.size()];
   
   System.out.print(categories.size()+ " "+numRows);

   for (int i = 0; i < categories.size(); i++) {
     int year = int(categories.get(i).year);
     int month = int(categories.get(i).month);
     float percentage = categories.get(i).percentage;
     String category = categories.get(i).category;

     //System.out.println(year+" "+month+" "+percentage+" "+category);

     float theta = map(year, 2006, 2025, 0, 2*PI);
     float phi = map(month, 1, 13, 0, 2*PI);
     float r = minRadius;
     if (percentage!=0.0) {
        r = map(log(percentage*1000), log(9.40805E-4*1000), log(1.0416666*1000), minRadius, maxRadius);
     }
     
     float x = r * sin(phi) * cos(theta);
     float y = r * sin(phi) * sin(theta);
     float z = r * cos(phi);
     
     if(percentage<0.01){
        System.out.println(year+" "+month+" "+percentage+" "+category);
     }
       

    // float x = r * cos(theta) * radiusMultiplier;
    // float y = map(month, 1, 12, -100, 100) * radiusMultiplier;
    // float z = map(percentage, 0, 0.2, -100, 100) * radiusMultiplier;

     //z = 

     points[i] = new PVector(x, y, z);
     // percentages[i] = percentage;
   }

//    radius = maxRadius;
 }
