// Setup the Program Environment
void setup()
{
  // Make a Landscape Canvas
  size(500, 300);
  // Present the Menue
  Menue();
}

// Class for Handling Rectangle
class Rectangle{
  // Declare Memory for Delta Values
  float dx, dy, dd;
  
  // Construtor for the Rectangle
  Rectangle(float d)
  {
    // Calculation Size of the Cells
    dx = width / d;
    dy = height / d;
    // Declare inner Sequers
    dd = random( min(height, width)*0.7)/d;
  }
  
  // Function to test is the Cell in the inner Triangle
  boolean isInCircle(float x, float y)
  {
    // Calculate the height of the Cell to the moddle Point
    float  dyc = y - (height/2);
    // Calculte the width in respect to the hight
    float dxc = pow(pow(height/2, 2) - pow(dyc, 2), 0.5);
    // Calculate the Boundary Points from the width
    float x1 = (width/2) - dxc;
    float x2 = (width/2) + dxc;
    // Sets Return Variable for default to false
    boolean ret = false;
    // Test if x in the sides of the Triangle
    if( (x > x1 ) && ( x < x2)){ ret = true; println("Hello mit");}
    return ret;
  }
  
  // Method to Paint the Figure of Rectangle
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
    if(isInCircle(xc, yc))
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
  // Choose the Number of Cells
  int d = int(random(11)+1);
  // Intialice a Master Rectangle
  Rectangle recta = new Rectangle(d);
  // Iterrate about the Numbers of Cells in both Direction
  for(int n = 0; n < d; n++)
  {
    for(int m = 0; m < d; m++)
    {
      // Calls Method to draw the Cell
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
