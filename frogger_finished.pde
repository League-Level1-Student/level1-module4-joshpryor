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
Car cc = new Car(400,150,30);
void setup() {
  size(400, 400);
 
}


void draw() {
   background(200, 200, 200);
  fill(23, 255, 100);
  ellipse(frogX, frogY, 15, 15);
  keyPressed();
  
  if(intersects(c)){
  System.exit(0);
  }
  if(intersects(cc)){
  System.exit(0);
  }
  acsessDENIED();
  carsGreen();
  carRed();
  carBlue();
  c.display();
  cc.display();
  
}
boolean intersects(Car car) {
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getCarSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }}
//boolean intersects
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

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> car class <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

class Car{
private int cX = 396;    // car X position
private int cY = 300;    // car Y position
private int cSize = 30;   // car size 
private int carSpeed = 4; // car speed ;D

 Car (int cX, int cY, int cSize){
   this.cX = cX;
   
   this.cY  = cY;
   this.cSize = cSize;
   cX= cX - 2;
}

int getX(){
 return cX;
}
int getY(){
 return cY;
}
int getCarSize(){
 return cSize;
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

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> methods <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


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