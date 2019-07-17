// This Node Class Will Represent people in our class

class Node {
  
  String name, child1, child2;
  color fillColor;
  
  PVector screenLocation;
  boolean locked; // Am I editing my Node location
  
  Node(String _name, String _child1, String _child2) {
    name = _name;
    child1 = _child1;
    child2 = _child2;
   
    if(int(name) <= 7)  screenLocation = new PVector(random(50, width/2), random(100, height - 200));
    if(int(name) > 7)   screenLocation = new PVector(random(width/2, width - 50), random(100, height - 200));
    
    if(int(name) == 1) screenLocation = new PVector(width/4, 100);
    if(int(name) == 2) screenLocation = new PVector(width/4 - 170, 175);
    if(int(name) == 3) screenLocation = new PVector(width/4 + 170, 175);
    if(int(name) == 8) screenLocation = new PVector(3*width/4, 100);
    fillColor = 70;
    
  }
  
  Node(String _name) {
    name = _name;
    child1 = "";
    child2 = "";
    screenLocation = new PVector(random(50, width), random(50, height - 50));
    fillColor = 5;
  }
  
  // See if my mouse cursor is -near- my Node
  boolean hoverEvent() {
    
    float xDistance = abs(mouseX - screenLocation.x);
    float yDistance = abs(mouseY - screenLocation.y);
    
    if (xDistance <= 300 && yDistance <=300) {
      return true;
    } else {
      return false;
    }
    
  }
  
  // Is my Node selected by the mouse?
  boolean checkSelection() {
    if (hoverEvent()) {
      locked = true;
    } else {
      locked = false;
    }
    return locked;
  }
  
  // Update Node location if locked on
  void update() {
    if (locked) {
      screenLocation = new PVector(mouseX, mouseY);
    }
  }
  
  void drawNode() {
    noStroke(); // No circle outline
    
    if (hoverEvent()) {
      fill(100, 100, 100);
    } else {
      fill(HSB, 360, 200, 255);  // White Fill
    }
    
    ellipse(screenLocation.x, screenLocation.y, 30, 30);
    
    text(name, screenLocation.x + 3, screenLocation.y + 3);
  }
  
}
