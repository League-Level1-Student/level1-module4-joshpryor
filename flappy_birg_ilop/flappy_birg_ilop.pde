
int velocity = 500;

int move1 = 1610;
int move2 = 2110;
void setup(){
size(1600,1000);


}

void draw(){
  background(55,285,21);
stroke(255,136,34);
fill(255,55,55);
ellipse(350,velocity,75,75);
// gravity
velocity = velocity + 5;

flap();
move1();
move2();

fill(75,75,75);

rect(move1,0,80,300);
rect(move1,550,80,900 );

rect(move2,0,80,300);

if (move1 <= 1){
  move1 = 1610;
rect(move1,0,80,300);
}
if (move2 <= 1){
  move2 = 1610;
rect(move2,0,80,300);
}


 
 

 

}



/////////////////////////////////////////////////////////////////////////////////////////////////



void flap (){
 if(mousePressed){
 velocity = velocity - 25;

 }
}
void move1(){
move1 = move1 - 2;
}
void move2(){
  move2 = move2 - 2;
}
///void pipe (){

//fill(75,75,75);
// rect(,0,80,300);
 
 //if  (gravity <= 375 && gravity >= -5555 && onward <= 400 && onward >= 300){
 //onward = 50;
 //gravity = 500;
 //}
  

//}

//void pipe2 (){

  //fill(75,75,75);
 //rect(750,0,80,500);
  
 // if  (gravity <= 525 && gravity >= -5555 && onward <= 750 && onward >= 830){
 //onward = 50;
 //gravity = 500;
 //System.out.println("oof");
 //}
  
  

//}




void pipe1(){


}