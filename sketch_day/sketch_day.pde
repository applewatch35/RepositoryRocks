int w, h, x, y;
ArrayList<myDot> dots;
int numDots = 690;
void setup(){
    size(900, 500);
    background(RGB);
  dots = new ArrayList<myDot>();
  w = int(random(90, 40)); 
  h = int(random(90, 40));
  x = int(random(90, 400));
  y = int(random(90, 20));
  
  for(int i =0; i<numDots; i++){
    x = int(random(width));
    y = int(random(height));
    w = 10;
    h = 10;
    myDot dot = new myDot(x, y, w, h);
    dots.add(dot);
  }

}

void draw(){
  for(myDot d : dots) d.draw();
  
 
}
  
