int gravity = 500;
int onward = 50;

void setup(){
size(10000,1000);


}

void draw(){
  background(55,285,21);
stroke(255,136,34);
fill(255,55,55);
ellipse(onward,gravity,75,75);
// gravity
gravity = gravity + 20;

//onward
onward = onward + 7;
// if (! mousePressed) {
// onward = 3;
// }
 if(mousePressed){
 gravity = gravity - 98;
 }
 fill(75,75,75);
 rect(372,0,80,300);
 
 if  (gravity <= 375 && gravity >= -5555 && onward <= 400 && onward >= 300){
 onward = 50;
 gravity = 500;
 }
 
 
 
 
//h = h + 5;
}