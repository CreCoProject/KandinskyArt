// Setup the Program Environment
void setup()
{
  // Make a Landscape Canvas
  size(500, 300);
  // Present the Menue
  Menue();
}

// Call Method for Drawing
void drawing()
{
  // Clear Background to Black
  background(0);
  // Choose a Number of Figures
  int z = int(random(6));
  // Iterrate about the needed Figures
  for(int n  = 0; n < z; n++)
  {
    // Draw a Triangle as Figure across the Canvas
    triangle(random(width), random(height),
      random(width), random(height),
      random(width), random(height));
  }
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
