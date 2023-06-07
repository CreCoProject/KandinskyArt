// Setup the Program Environment
void setup()
{
  // Make a Landscape Canvas
  size(500, 300);
  // Present the Menue
  Menue();
}

// Class for Handling the Triangles
class Triangle{
  // Declare Memory for the delta Values
  // Size of the Cell in both direction; Size of the drawn Cell
  float dx, dy, dd;
  
  // Method to initalize the Triangle
  Triangle(float d)
  {
    // Calculate the Size of the Cells 
    dx = width / d;
    dy = height / d;
    // Choose a Size for the drawn Cell
    dd = random( min(height, width)*0.7)/d;
    
  }
  
  boolean isInTriangle(float x, float y)
  {
    // Calculate the delta of the Triangle Size from up to bottom
    float delta = (float(width)/2)/float(height);
    // Calculate the both Sides by given Height of Triangle
    float x1 = (width/2) - (delta*y);
    float x2 = (width/2) + (delta*y);
    // Sets Return Variable for default to false
    boolean ret = false;
    // Test if x in the sides of the Triangle
    if( (x > x1 ) && ( x < x2)){ ret = true; println("Hello");}
    return ret;
  }
  
  // Method to drawn a Cell at the given Position in the Structure
  void paintFigure(float x, float y)
  {
    
    // Calculate the Corner Edge of the drawn Cell
    float xc = ((x+0.5)*dx);
    float yc = ((y+0.5)*dy);
    // Draw the Cell Figure
    
    float x1 = xc;
    float y1 = yc - (dd/2);
    
    float x2 = xc - (dd/2);
    float y2 = yc + (dd/2);
    
    float x3 = xc + (dd/2);
    float y3 = yc + (dd/2);
    
    // Chose a Color for the Triangle
    if(isInTriangle(xc, yc))
      { fill(200);}
      else
      { fill(88);}
    
    triangle(x1, y1, x2, y2, x3, y3);
  }
}


// Call Method for Drawing
void drawing()
{
  // Clear Canvas to Background Black
  background(0);
  // Choose a number of Cells, and make One Cell at min
  int d = int(random(11)+1);
  // Initalize a Master Triangle
  Triangle recta = new Triangle(d);
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
