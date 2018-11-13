int frogX = 200;
int frogY = 300;




void setup() {
  size(400, 400);
  background(200, 200, 200);
}


void draw() {
  fill(23, 255, 100);
  ellipse(200, 300, 30, 30);
  keyPressed();
  acsessDENIED();
  
  
  
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      //Frog Y position goes up
    } else if (keyCode == DOWN)
    {
      //Frog Y position goes down
    } else if (keyCode == RIGHT)
    {
      //Frog X position goes right
    } else if (keyCode == LEFT)
    {
      //Frog X position goes left
    }
  }
}

void acsessDENIED () {
  if (frogX <= 15) {
    frogX = 15;
  } else if (frogX >= width-15) {
    frogX = width-15;
  } else if (frogY <= 15) {
    frogY = 15;
  } else if (frogY >= height-15) {
    frogY = height-15;
  }
}

new class Car (){















}