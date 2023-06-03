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
  // Declare Memory for inner Rectangle
  float x1, y1, x2, y2;
  
  // Construtor for the Rectangle
  Rectangle(float d)
  {
    // Calculation Size of the Cells
    dx = width / d;
    dy = height / d;
    // Declare inner Sequers
    dd = random( min(height, width)*0.7);
    
    // Calculate the Boundarys for the inner Rectangle
    // Declare Y Positions
    y1 = random(height*0.3);
    y2 = height - random(height*0.3);
    // Declare X Position
    x1 = random(width*0.3);
    x2 = width - random(width*0.3);
  }
  
  // Function to test is the Cell in the inner Rectangle
  boolean isInRectangle(float x, float y)
  {
    // Sets Return Value to default false
    boolean ret = false;
    // Test Condition for Cell in inner Rectangle
    if( (x>x1) && ( x < x2 )&& ( y > y1) && (y < y2))
    {
      ret = true;
    }
    return ret;
  }
  
  // Method to Paint the Figure of Rectangle
  void paintFigure(float x, float y)
  {
    // Calculate Coordinate of the Cell
    float xm = (x+0.5)*dx;
    float ym = (y+0.5)*dy;
    
    // Test is Cell in inner Rectangle
    if(isInRectangle(xm, ym))
    {
      fill(33);
    }
    else
    {
      fill(233);
    }
    
    // Calcuate the Coorner Edges for the Cell
    float xc = xm-(dd/2);
    float yc = ym-(dd/2);
   
    // Draws the Rectangle
    rect(xc, yc, dd, dd);
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
