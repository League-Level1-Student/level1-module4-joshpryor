int velocity = 500;   // bird y
int pipeWidth = 80;
int birdX = 350;
int move1 = 1610;    //pipe 1 x
int move2 = 2110;   
int move3 = 2610;
int upperPipeHeight1 = (int) random(100, 700);
int lowerPipeTop1 = upperPipeHeight1 + 230;
int upperPipeHeight2 = (int) random(100, 700);
int lowerPipeTop2 = upperPipeHeight2 + 230;
int upperPipeHeight3 = (int) random(100, 700);
int lowerPipeTop3 = upperPipeHeight2 + 230;

void setup(){
size(1600,1000);


}

void draw(){
  background(55,285,21);
stroke(255,136,34);
fill(255,55,55);
ellipse(birdX,velocity,75,75);
// gravity
velocity = velocity + 5;
if(velocity >= 1000){
System.exit(0);
}
flap();
move1Move();
move2Move();

fill(75,75,75); 
if(intersectsPipes1() == true){
text("game over", 1400, 400);
print("you suck ");
System.exit(0);
}
if(intersectsPipes2() == true){
text("game over", 1400, 400);
print("you suck ");
System.exit(0);
}
rect(move1,0,80,upperPipeHeight1);
rect(move1,lowerPipeTop1,80,900 );

rect(move2,lowerPipeTop2,80,900 );
rect(move3,lowerPipeTop3,80,900 );
///rect(move4,lowerPipeTop,80,900 );
rect(move2,0,80,upperPipeHeight2);
rect(move3,0,80,upperPipeHeight3);
//rect(move4,0,80,upperPipeHeight);
moveIt1();
moveIt2();
moveIt3();
 
 

 

}

boolean intersectsPipes1() { 
     if (velocity < upperPipeHeight1 && birdX > move1 && birdX < (move1+pipeWidth)){
          return true; }
     else if (velocity> 600 && birdX > move1 && birdX < (move1+pipeWidth)) {
          return true; }
     else { return false; }
}
boolean intersectsPipes2() { 
     if (velocity < upperPipeHeight2 && birdX > move2 && birdX < (move2+pipeWidth)){
          return true; }
     else if (velocity> 600 && birdX > move2 && birdX < (move2+pipeWidth)) {
          return true; }
     else { return false; }
}
boolean intersectsPipes3() { 
     if (velocity < upperPipeHeight3 && birdX > move2 && birdX < (move3+pipeWidth)){
          return true; }
     else if (velocity> 600 && birdX > move3 && birdX < (move3+pipeWidth)) {
          return true; }
     else { return false; }
}
/////////////////////////////////////////////////////////////////////////////////////////////////

void moveIt2(){
if (move2 <= 1){
  move2 = 1610;
rect(move2,0,80,300);
}}
void moveIt1(){
if (move1 <= 1){
  move1 = 1610;
rect(move1,0,80,300);
}}
void moveIt3(){
if (move3 <= 1){
  move3 = 1610;
rect(move3,0,80,300);
}}



void flap (){
 if(mousePressed){
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;
 velocity = velocity - 1;

 }
}
void move1Move(){
move1 = move1 - 2;
}
void move2Move(){
  move2 = move2 - 2;
}