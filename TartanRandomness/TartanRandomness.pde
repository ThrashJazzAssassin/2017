float x = random(0, width);
float y = random(0, height); 
float xspeed = 10;
float yspeed = 10;
float r = 0;
float g = 0;
float b = 0;
float randomnessChange = 0;
float randomness;



void setup() {
  background(0);
  size(1200, 700);
}

void draw () {
 
  for(int i = 0; i < height/8; i++) {
    randomness = (sin(randomnessChange)+1.5)/2;
     randomnessChange+=0.0001;
  //randcol(r);0
  //randcol(g);
  //randcol(b);
 //background (255);
 r+= random(-randomness, randomness);
 g+= random(-randomness, randomness);
 b+= random(-randomness, randomness);
r= constrain(r, 0, 255);
g=  constrain(g, 0, 255);
b= constrain(b, 0, 255);

//fill(0);
//rect(0,0,200,200);
//  fill(255);
// text(r, 10, 10);
// text(g, 10, 30);
// text(b, 10, 50);
// text(randomness,10, 70);

 fill (r, g, b, 100);
 noStroke();
 rect(x,y,40,40);
 x+=xspeed;
 y+=yspeed;
 if(x>width || x<0) {
   xspeed*=-1;
 }
 if(y>height || y<0) {
   yspeed*=-1;
 }
}
}
//void randcol(float col) {
//  col += random(-randomness, random);
//}