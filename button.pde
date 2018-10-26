
class Button
{
  int w;
  int h;
  int x;
  int y;
  Boolean clicked = false;
  
  Button(int _x, int _y, int _w, int _h) {
    x = _x;
    y = _y;
    h = _h;
    w = _w;
  }
  
  void draw()
  {
   noStroke(); 
    fill(0);
    rect(x,y,w,h);  
  }
  
  void update()
  {
    
    if(mousePressed) {
      if((mouseX > x) && (mouseX < (x+w))) {
        if((mouseY > y) && (mouseY < (y+h))) {
        
           clicked = true;
        }
      }
    } else {
     clicked = false; 
    }
    
  }
  


}
