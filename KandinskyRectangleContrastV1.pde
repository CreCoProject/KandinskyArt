// Setup the Program Environment
void setup()
{
  // Make a Landscape Canvas
  size(500, 300);
  // Present the Menue
  Menue();
}

// Method to draw a Rectangle Figure
void paintRectangle(int x1, int y1, int x2, int y2)
{
  // Calculation of the Space in booth Directions 
  int xd = x2 -x1;
  int yd = y2-y1;
  
  // Calculation of the Center Point
  int xc = (x1+x2)/2;
  int yc = (y1+y2)/2;
  
  // Choose a Size for the Rectangle
  int xdc = int(random(xd*0.7));
  int ydc = int(random(yd*0.7));
  
  // Calculate the Coordinates for the Left Uppermost Corner
  int xk = xc - (xdc/2);
  int yk = yc - (ydc/2);
  
  // Draw the Rectangle
  rect(xk, yk, xdc, ydc);
}

// Call Method for Drawing
void drawing()
{
  // Clear Background to Black
  background(0);
  
  // Paint two Instances of the Rectangular Figures
  paintRectangle(0, 0, width/2, height);
  paintRectangle(width/2, 0, width, height);
}

// Method to save the Actual Image
void saving()
{
  // Save the Image
  save("ActualImage.png");
}

// Dummy draw Method
void draw()
{
}

// Method to Handling Key Presses Events
void keyPressed()
{
  // switch about the pressed Key
  switch(key)
  {
    // Handling drawing Request
    case 'n' : drawing(); break;
    // Handling Saving Request
    case 's' : saving(); break;
  }
}

// Method to show the Menue
void Menue()
{
  println("Welcome to the Kandinsky Triangle Direction Contrst");
  println("With pressing Key n you can generate a new Image");
  println("With pressing Key s you can save the actual Image");
}
