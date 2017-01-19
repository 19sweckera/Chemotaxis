 public Bacteria[] dots ;
 void setup()   
 {     
    size(500,500);
    background(0);
    
    dots = new Bacteria[100];
    for(int i = 0; i < dots.length;i++){
      dots[i] = new Bacteria();
    }
 }   
 void draw()   {   
  background(100,100,10); 
   for(int i = 0; i < dots.length;i++){
     dots[i].move();
     dots[i].show();
   }  
 }  
 public class Bacteria    
 {     
   int myX;
   int myY;
   
   
 public Bacteria(){
     myX = 0;
     myY = 0;
  }   
void show(){
  fill(0,100,105);
  ellipse(myX,myY,20,20);
}
public void move(){
 myX = myX + (int)(Math.random()*(mouseX - myX)/10);
 myY = myY + (int)(Math.random()*(mouseY - myY)/10); 
}
 }
