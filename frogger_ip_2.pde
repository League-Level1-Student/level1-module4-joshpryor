int frogX = 200;
int frogY = 350;
int speedB = 400;
int speedBB = 500;
int speedBBB = 600;
int speedB2 = 400;
int speedB3 = 512;
int speedF = 0;
int speedF2 = 0;
int speedF3 = -50;

Car c = new Car(400,300,30);
void setup() {
  size(400, 400);
 
}


void draw() {
   background(200, 200, 200);
  fill(23, 255, 100);
  ellipse(frogX, frogY, 15, 15);
  keyPressed();
  acsessDENIED();
  carsGreen();
  carRed();
  carBlue();
  c.display();
  
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      frogY = frogY - 1;
      //Frog Y position goes up
    } else if (keyCode == DOWN)
    {
      frogY = frogY + 1;
      //Frog Y position goes down
    } else if (keyCode == RIGHT)
    {
      frogX = frogX + 1;
      //Frog X position goes right
    } else if (keyCode == LEFT)
    {
      frogX = frogX - 1;
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
class Car{
 int cX = 396;    // car X position
 int cY = 300;    // car Y position
int cSize = 30;   // car size 
int carSpeed = 4;

 Car (int cX, int cY, int cSize){
   this.cX = cX - 2;
   this.cY  = 300;
   this.cSize = 30;
   cX= cX - 2;
}
void display(){
 //fill(#FF00FF);
 rect(cX,cY,cSize,20);
 cX = cX - carSpeed;
 if(cX <= 0){
 carSpeed = -4;
 }
 else  if(cX >= 404){
 carSpeed = 4;
 }
}

}
void carsGreen () {
  fill(20,205,20);
rect(speedB,200,30,20);
rect(speedBB,200,30,20);
rect(speedBBB,200,30,20);
speedB = speedB - 2;
speedBB = speedBB - 2;
speedBBB = speedBBB - 2;
if(speedB == 0){
speedB = 400;
}
if(speedBB == 0){
speedBB = 400;
}
if(speedBBB == 0){
speedBBB = 400;
}
}

void carRed () {
  fill(205,20,20);
rect(speedB2,250,30,20);
speedB2 = speedB2 - 1;
if(speedB2 <= 0){
speedB2 = 400;
}
}

void carBlue () {
  fill(20,20,205);
rect(speedB3,225,30,20);
speedB3 = speedB3 - 3;
if(speedB3 <= 0){
speedB3 = 400;
}
}