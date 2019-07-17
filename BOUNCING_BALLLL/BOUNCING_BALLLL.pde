int x, y, walllocation, velX;
void  setup (){
  x = 70; 
  y = 65;
  walllocation = 300;
  velX = 9;
  size(1690, 690);
  background(HSB, 100, 255, 255);
}

void draw(){
  background(255, 200, 200);
  fill(HSB, 200, 255, 255);
  ellipse(x, y, 70, 70);
   x+=velX;
   y+=velX;
  if(x > 300) velX = velX*-1;
  if(x<0) velX = velX*-1;
}
