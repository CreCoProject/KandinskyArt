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
  // Clear Background to whithe
  background(0, random(200)+50, 0);
  // Choose a Number of Circles
  int z = int(random(30)+6);
  // Iterrate about the needed Circles
  for(int n = 0; n < z; n++)
  {
    stroke(110, 110, 50);
    strokeWeight(random(36));
    // Set a nice bluly Color
    fill(random(50), random(50), random(255), random(255));
    // Draw the Circle
    circle(random(width), random(height), random(min(width, height)));
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
  println("Welcome to the Kandinsky Circle Spreader");
  println("With pressing Key n you can generate a new Image");
  println("With pressing Key s you can save the actual Image");
}
