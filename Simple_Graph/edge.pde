class Edge{
  Node origin;
  Node destination;
  String type;
  int weight; 
  
  Edge(Node p1, Node p2) {
    origin = p1;
    destination = p2;
    weight = int(random(7,69));
  }
  
  void draw() {
    line(origin.loc.x, origin.loc.y, destination.loc.x, destination.loc.y);
  }
  }
