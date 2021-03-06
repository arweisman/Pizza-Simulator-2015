PImage pizzaImg, deliverImg, nextPizzaImg;

int ingredientSelected; // 0 = first ingredient, 1 = second ingredient, etc.
int totalIngredientTypes = 6;
int targetAmount = 7;
int pizzaToMake = 4; //actual amount -1
boolean shouldResetPizzaCount = false;

int sideOfIngredient[]; //target side for ingredients of each type ("sideOfIngredient[0] = 0" means ingredient 0 is on the whole pizza, 1 left, etc)
int ingPerSide[]; //number of ingredients on each side of pizza ("ingPerSide[0] = 3" means there are 3 ingredient types on side 0)
int ingAmount[]; //counter for number of ingredients placed on the pizza for each type
String ingName[];
ArrayList<PVector> ingredientLoc; //x & y = ingredient location, z = ingredient type

void setupPizCre()
{
  if (!didRunPizzaSetup) {
    ingredientSelected = 0;
    sideOfIngredient = new int[totalIngredientTypes];
    ingPerSide = new int[3];
    ingAmount = new int[totalIngredientTypes];
    ingName = new String[totalIngredientTypes];
    ingredientLoc = new ArrayList<PVector>();

    pizzaImg = loadImage("pizza_tray-receipt_2.png");
    deliverImg = loadImage("deliver.png");
    nextPizzaImg = loadImage("nextPizza.png");

    ingName[0] = "Olive";
    ingName[1] = "Pepperoni";
    ingName[2] = "Green Pepper";
    ingName[3] = "Mushroom";
    ingName[4] = "Pineapple";
    ingName[5] = "Onion";
    
    if(shouldResetPizzaCount) {
      pizzaToMake = 4; // actual amount -1 
    }

    didRunPizzaSetup = true;
    setupOrder();
  }
}
void setupOrder()
{
  ingredientLoc.clear();

  for (int i = 0; i < 3; i++) {
    ingPerSide[i] = 0;
  }

  //start array values for which side each ingredient should be on
  for (int i = 0; i < totalIngredientTypes; i++) {
    sideOfIngredient[i] = (int)random(0, 4);
    ingAmount[i] = 0;

    for (int j = 0; j < 3; j++) {
      if (sideOfIngredient[i] == j) {
        ingPerSide[j] += 1;
      }
    }

    println("- " + ingName[i] + " " + sideOfIngredient[i]);
  }
}

//draws all pizza scene elements
void drawPizzaCreation() {
  background(#ED593E);
  image(pizzaImg, 0, 0);
  textAlign(LEFT);

  //draw a pizza (circle)
  //fill(#E0CA78);
  noStroke();

  //Draw Interface
  fill(220);
  ellipse(width-180, 160, 20, 20);
  ellipse(width-180, 290, 20, 20);  
  fill(200, 0, 0);
  ellipse(width-180, 30, 20, 20);
  arc(width-180, 160, 20, 20, PI/2, 3*PI/2);
  arc(width-180, 290, 20, 20, 3*PI/2, 5*PI/2);

  fill(0);
  textSize(24);
  text("Whole Pizza", width-160, 40);
  text("Left Side", width-160, 170);
  text("Right Side", width-160, 300);

  //draw ingredients selection list
  fill(#EDB03E);
  olive(85, height*.125);
  pepperoni(85, height*.275);
  greenpepper(85, height*.42);
  mushroom(85, height*.575);
  pineapple(85, height*.725);
  onion(85, height*.9);

  //--------------DRAW RECIEPT INGREDIENTS----------------
  textSize(18);
  for (int i = 0; i < 3; i++)
  {
    int ingOnSide = 0;
    for (int j = 0; j < totalIngredientTypes; j++)
    {
      if (sideOfIngredient[j] == i)
      {
        ingOnSide++;
        fill(#ED593E);
        if (ingAmount[j] >= targetAmount) {
          fill(0, 200, 0);
        }
        text(ingName[j], width-190, 40+(i*130+20*(ingOnSide)));
      }
    }
  }

  //--------------DELIVER BUTTON----------------
  boolean done = true;
  for (int i = 0; i < totalIngredientTypes; i++)
  {
    if (ingAmount[i] < targetAmount && sideOfIngredient[i] != 3)
    {
      done = false;
    }
  }
  if (done && pizzaToMake == 0) {
    image(deliverImg, width-190, height-100);    
    if (mousePressed) {
      if (mouseX > width-160 && mouseX < width-10 && mouseY > height-70 && mouseY < height-10) {
        shouldResetPizzaCount = true;
        didRunPizzaSetup = false;
        sceneCount = driveScene;
      }
    }
  }
  else if (done && pizzaToMake > 0) {
     image(nextPizzaImg, width-190, height-100);    
    if (mousePressed) {
      if (mouseX > width-160 && mouseX < width-10 && mouseY > height-70 && mouseY < height-10) {
        println("pizzas left: " + pizzaToMake);
        didRunPizzaSetup = false;
        pizzaToMake--;
      }
    }
  }
  //--------------INGREDIENT LOOP----------------
  for (int i = 0; i < totalIngredientTypes; i++) {

    //determine which ingredient is clicked and draw outline of selected ingredient
    if (mousePressed && mouseX > 20 && mouseX < 150 && mouseY > (height*.05) + i * (height*.15) && mouseY < (height*.05) + (i+1) * (height*.15)) {
      ingredientSelected = i;
    }
    if (ingredientSelected == i) {
      noFill();
      stroke(255, 0, 0);
      strokeWeight(3);
      rect(20, (height*.05) + i * (height*.15), 130, (height*.9)/6);
      noStroke();
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
  }
  drawArm();
}
void mouseClickedForPizza() {
  //store a new ingredient location and ingredient type each click
  if (dist(mouseX, mouseY, width/2, height/2) < height * 0.4) {
    for (int i = 0; i < totalIngredientTypes; i++) {
      if (ingredientSelected == i) {
        ingredientLoc.add(new PVector(mouseX, mouseY, i));
      }
      if (ingredientSelected == i && sideOfIngredient[i] == 0) {
        ingAmount[i]++;
      }
      if (ingredientSelected == i && sideOfIngredient[i] == 1 && mouseX < width/2) {
        ingAmount[i]++;
      }
      if (ingredientSelected == i && sideOfIngredient[i] == 2 && mouseX > width/2) {
        ingAmount[i]++;
      }
    }
  }
}

void drawArm() {
  if (dist(mouseX, mouseY, width/2, height/2)<205 || mouseX < width/2)
  {
    pushMatrix();
    translate(mouseX, mouseY);
    fill(0);
    //draw the selected ingredient at pointer
    switch(ingredientSelected) {
    case 0:
      olive(0, 0);
      break;
    case 1:
      pepperoni(0, 0);
      break;
    case 2:
      greenpepper(0, 0);
      break;
    case 3:
      mushroom(0, 0);
      break;
    case 4:
      pineapple(0, 0);
      break;
    case 5:
      onion(-25, -25);
      break;
    }
    popMatrix();
  }
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
  strokeCap(ROUND);
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
  translate(mushx, mushy);
  rotate(mushx-mushy);
  translate(-mushx, -mushy);
  noStroke();
  fill(#caa469);
  ellipse(mushx, mushy, 60, 30);
  fill(75, 61, 36);
  ellipse(mushx, mushy+7.5, 40, 15);
  strokeCap(ROUND);
  strokeWeight(15);
  stroke(#caa469);
  line(mushx, mushy, mushx, mushy+20);
  popMatrix();
}
//pineapple
void pineapple(float pinex, float piney) {
  noStroke();
  pushMatrix();
  translate(pinex, piney);
  rotate((pinex+piney)*3);
  translate(-pinex, -piney);
  fill(#fff460);
  quad(pinex-25, piney-25, pinex+20, piney-15, pinex+3, piney+20, pinex-20, piney+15);
  popMatrix();
}
//onions
void onion(float onix, float oniy) {
  pushMatrix();
  translate(onix, oniy);
  rotate(onix-oniy);
  translate(-onix, -oniy);
  noFill();
  strokeWeight(7);
  strokeCap(SQUARE);
  stroke(214, 108, 191);
  //ellipse(onix, oniy, 65, 65);
  arc(onix, oniy, 65, 65, 0, 2*PI/3);
  stroke(255);
  strokeWeight(5);
  arc(onix, oniy, 60, 60, 0, 2*PI/3);
  //ellipse(onix, oniy, 55, 55);
  popMatrix();
}