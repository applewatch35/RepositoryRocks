int x, y, walllocation, velX, x1, y1, walllocation2, velX2, x2, y2, walllocation3, velX3;
void  setup (){
  x = 70; 
  y = 65;
  x1 = 70;
  y1 = 65;
  x2 = 70;
  y2 = 65;
  walllocation = 1000;
  walllocation2 = 1000;
  walllocation3 = 1000;
  velX = 9;
  velX2 = 9;
  velX3 = 9;
  size(1000, 1000);
  colorMode(HSB);
}

float c;
void draw(){
  background(c, 255, 255);
  fill(c);
  ellipse(x, y, 70, 70);
  ellipse(x1, y1, 70, 70);
  ellipse(x2, y2, 70, 70);
  x1+=velX2;
  y+=velX;
  x2+=velX3;
  y2+=velX3;
  if(y > 950) velX = velX*-1;
  if(y<0) velX = velX*-1;
  if(x1 > 950) velX2 = velX2*-1;
  if(x1<0) velX2 = velX2*-1;
  if(x2 > 950) velX3 = velX3*-1;
  if(x2<0) velX3 = velX3*-1;
  if (c >=255) c=0;
  else c++;
 
}
