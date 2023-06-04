// Setup the Program Environment
void setup()
{
  // Make a Landscape Canvas
  size(500, 300);
  // Present the Menue
  Menue();
}

// Class for Handling the Rectangles
class Rectangle{
  // Declare Memory for the delta Values
  // Size of the Cell in both direction; Size of the drawn Cell
  float dx, dy, dd;
  
  // Method to initalize the Rectangle
  Rectangle(float d)
  {
    // Calculate the Size of the Cells 
    dx = width / d;
    dy = height / d;
    // Choose a Size for the drawn Cell
    dd = random( min(height, width)*0.7)/d;
  }
  
  // Method to drawn a Cell at the given Position in the Structure
  void paintFigure(float x, float y)
  {
    // Calculate the Corner Edge of the drawn Cell
    float xc = ((x+0.5)*dx)-(dd/2);
    float yc = ((y+0.5)*dy)-(dd/2);
    // Draw the Cell Figure
    rect(xc, yc, dd, dd);
  }
}


// Call Method for Drawing
void drawing()
{
  // Clear Canvas to Background Black
  background(0);
  // Choose a number of Cells, and make One Cell at min
  int d = int(random(11)+1);
  // Initalize a Master Rectangle
  Rectangle recta = new Rectangle(d);
  // Iterrate about the Cells in Both Directions
  for(int n = 0; n < d; n++)
  {
    for(int m = 0; m < d; m++)
    {
      // Paint the actual Cell
      recta.paintFigure(n, m);
    }
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
