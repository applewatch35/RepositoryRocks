int[] array = new int[30];
int maxVal  = 500;
int speed = 15;
int xStart = 90;
int lineSpace = 20;

void setup() {
  size(750,600);
  for (int i=0; i<array.length; i++) {
    array[i] = (int)random(maxVal);
  }
  frameRate(speed);
  colorMode(RGB, 255, 700, 900);
  }
  
  int i=0;
  
void draw(){
  background(0);
  
  for (int j=0; j<array.length; j++) {
    if (array[i]>array[j]) {
      int temp = array [j];
      array[j] = array[i];
      array[i] = temp;
    }
    
 
  fill(255);
  text(array[j], 50, 3+20*j);
  
  
  float c = map(array[j], 0, maxVal, 0, 360);
  stroke(c, 70, 70);
  strokeWeight(30);
  
  
  line(xStart, 25+lineSpace*j, xStart+5*array[j], 25+lineSpace*j);
  }
  
  i++;
  if (i>array.length-1)
  noLoop();
}

  
