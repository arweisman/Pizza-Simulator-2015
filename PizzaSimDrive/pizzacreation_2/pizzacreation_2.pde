
int ingredientSelected; // 0 = first ingredient, 1 = second ingredient, etc.
int totalIngredientTypes = 6;
int targetIngredientNum = 10;

  
int ingredientSide[]; //target side for ingredients of each type (x[0] = 0 means ing 1 is on the whole pizza)
int ingAmount[]; //number of ingredients placed on the pizza for each type
ArrayList<PVector> ingredientLoc; //x & y = ingredient location, z = ingredient type

void setup() {
  size(900, 600);

  ingredientSelected = 0;
  ingredientSide = new int[totalIngredientTypes];
  ingAmount = new int[totalIngredientTypes];
  ingredientLoc = new ArrayList<PVector>();

  //start array values for which side each ingredient should be on
  for (int i = 0; i < totalIngredientTypes; i++) {
    ingredientSide[i] = (int)random(0, 3);
    ingAmount[i] = 0;
  }
}

void draw() {
  drawPizzaCreation();
}

void drawPizzaCreation() {
  background(#ED593E);

  //draw a pizza (circle)
  fill(#E0CA78);
  noStroke();
  ellipse(width/2, height/2, height*0.8, height*0.8);

  //draw interface
  fill(255);
  rect(10, 10, 150, height/2);
  rect(width-200, 10, 190, height*.75);


  fill(0);
  textSize(18);
  text("Whole Pizza", width-190, 40);
  text("Left Side", width-190, 170);
  text("Right Side", width-190, 300);
  text("ingAmount[0]:" + ingAmount[0], width-190, 400); //--------ingredient counter, remove--------
  text("ingAmount[1]:" + ingAmount[1], width-190, 420); //
  text("ingAmount[2]:" + ingAmount[2], width-190, 440); //


  //draw ingredients selection list (placeholder)
  fill(200);
  rect(20, 20, 130, 40);
  rect(20, 70, 130, 40);
  rect(20, 120, 130, 40);

  //primary loop over number of ingredient types
  for (int i = 0; i < totalIngredientTypes; i++) {

    //determine which ingredient is clicked and draw outline of selected ingredient
    if (mousePressed && mouseX > 20 && mouseX < 150 && mouseY > 20 + i * 50 && mouseY < 60 + i * 50) {
      ingredientSelected = i;
    }

    if (ingredientSelected == i) {
      noFill();
      stroke(255, 0, 0);
      strokeWeight(3);
      rect(20, 20 + i * 50, 130, 40);
      noStroke();
    }

    if (ingAmount[0] < targetIngredientNum) {
     fill(0);
    } else {
     fill(255);
     rect(width-160, height-100, 150, 50);
     fill(0, 255, 0);
    }
    textSize(12);
    if (ingredientSide[i] == 0) {
      text("Ingredient" + (i+1), width-190, 60 + i * 20);
    } 
    if (ingredientSide[i] == 1) {
      text("Ingredient" + (i+1), width-190, 190 + i * 20);
    }    
    if (ingredientSide[i] == 2) {
      text("Ingredient" + (i+1), width-190, 320 + i * 20);
    }
  }

  //place selected ingredients at array of locations on pizza
  for (PVector p : ingredientLoc) {
    if (p.z == 0) {
      olive(p.x, p.y);
    }
    if (p.z == 1) {
      pepperoni(p.x, p.y);
    }
    if (p.z == 2) {
      greenpepper(p.x, p.y);
    }
     if (p.z == 3) {
      mushroom(p.x, p.y);
  }
   if (p.z == 4) {
      pineapple(p.x, p.y);
   }
   if (p.z == 5) {
      onion(p.x, p.y);
   } 
  drawArm();
}
}

void mouseClicked() {
  //store a new ingredient location and ingredient type each click
  if (dist(mouseX, mouseY, width/2, height/2) < height * 0.4) {
    for (int i = 0; i < totalIngredientTypes; i++) {
      if (ingredientSelected == i) {
        ingredientLoc.add(new PVector(mouseX, mouseY, i));
      }
      if (ingredientSelected == i && ingredientSide[i] == 0) {
        ingAmount[i]++;
      }
      if (ingredientSelected == i && ingredientSide[i] == 1 && mouseX < width/2) {
        ingAmount[i]++;
      }
      if (ingredientSelected == i && ingredientSide[i] == 2 && mouseX > width/2) {
        ingAmount[i]++;
      }
    }
  }
}

void drawArm() {
  pushMatrix();
  translate(mouseX, mouseY);
  fill(0);
  ellipse(0, 0, 10, 10);
  popMatrix();
}
//olives
void olive(float olivex, float olivey) {
  noFill();
  strokeWeight(10);
  stroke(0);
  ellipse(olivex, olivey, 25, 25);
}
//pepperoni
void pepperoni(float pepx, float pepy) {
  noStroke();
  fill(200, 0, 0);
  ellipse(pepx, pepy, 60, 60);
}
//green peppers
void greenpepper(float greenx, float greeny) {
  noFill();
  pushMatrix();
  translate(greenx, greeny);
  rotate(greenx+greeny);
  translate(-greenx, -greeny);
  stroke(18, 191, 4);
  strokeWeight(10);
  arc(greenx, greeny, 30, 40, 0, PI);
  pushMatrix();
  translate(greenx-10, greeny-12);
  rotate(2*PI/3);
  arc(0, 0, 30, 40, 0, PI);
  popMatrix();
  pushMatrix();
  translate(greenx+8, greeny-12);
  rotate(4*PI/3);
  arc(0, 0, 30, 40, 0, PI);
  popMatrix();
  popMatrix();
}

//mushroom
void mushroom(float mushx, float mushy) {
  pushMatrix();
  translate(mushx,mushy);
  rotate(mushx-mushy);
  translate(-mushx, -mushy);
  noStroke();
  fill(255, 242, 165);
  ellipse(mushx, mushy, 60, 30);
  fill(75, 61, 36);
  ellipse(mushx, mushy+7.5, 40, 15);
  strokeCap(ROUND);
  strokeWeight(15);
  stroke(255, 242, 165);
  line(mushx, mushy, mushx, mushy+20);
  popMatrix();
}
//pineapple
void pineapple(float pinex, float piney) {
  noStroke();
  translate(pinex, piney);
  rotate((pinex+piney)*3);
  translate(-pinex, -piney);
  fill(255, 255, 0);
  quad(pinex-25, piney-25, pinex+20, piney-15, pinex+3, piney+20, pinex-20, piney+15);
  popMatrix();
}
//onions
void onion(float onix, float oniy) {
  noFill();
  strokeWeight(7);
  stroke(214, 108, 191);
  ellipse(onix, oniy, 65, 65);
  stroke(255);
  strokeWeight(5);
  ellipse(onix, oniy, 55, 55);
}