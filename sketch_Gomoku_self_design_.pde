
int x;
boolean player1 = true; 
boolean v =true;
float transparency = 255;
PImage Img;
PImage img;
PImage IMG;
PImage IMg;
//import oscP5.*; 
//import netP5.*; 
//OscP5 oscP5;
//NetAddress myRemoteLocation;
ArrayList<Turn> turns = new ArrayList<Turn>();

Button button = new Button(900,600,70,40); 

void setup (){
  Img = loadImage("GO.jpg"); 
  IMG=loadImage("RU.jpg");
  IMg=loadImage("RU2.jpg");
 frameRate(25);
 //oscP5 = new OscP5(this,6666);
 //myRemoteLocation = new NetAddress("127.0.0.1",12000);
   size (1000,700);
 


}

void drawGrid()
{
   strokeWeight(1);
   stroke(255,240,255);
    

  for (x=0; x<width; x=x+40){
    line(x,0,x,height);
  }
  
  for(int y=0; y<height; y=y+40){
  line(0, y,width,y);
  }  
  
}

void draw(){  
  
  if (transparency > 0) { transparency =transparency-1; }

 background(0);

  drawGrid();
 
 if (millis() < 11000){
 
   tint(255,transparency);
  image(IMG,0,0);
 }
 if (millis() < 2000){
 
   tint(255,transparency);
   image(Img,0,0);
 }
 
 if (keyPressed) {
    if (keyCode == UP||v) {  
    tint(225,225);
      image(IMg,0,0);
   v=!v;
       }
    } 
  button.update();
  button.draw();
  
  if(button.clicked == true) {
    background(0);
    turns.clear();
   
  }


for(int i = 0 ; i < turns.size(); i++)
{
  Turn t = turns.get(i);
  
  //println("no of turns:"+turns.size());
 
  if(t.player1) {
    noStroke();
    fill(255,100,150);
    ellipse(t.x, t.y, 30, 30);
    fill(52);
    ellipse(t.x,t.y, 15,15);
  } else{
    fill(230,190,110);
    ellipse(t.x,t.y, 30, 30);
    fill(52);
    ellipse(t.x,t.y, 15,15);
  }

}
 
img=loadImage("BU.jpg");
 image(img,900,600);
 tint(225,225);


}


void mousePressed(){
 Turn t = new Turn();
 t.x = mouseX;
 t.y = mouseY;
 t.player1 = player1;
 turns.add(t);
 
 player1 = !player1;


}

 


 
