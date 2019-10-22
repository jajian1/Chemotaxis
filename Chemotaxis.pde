Bacteria[] bob; 
//declare bacteria variables here   
 void setup()   
 { 
   size(500,500);
   bob = new Bacteria[700];
   for(int i=0; i<bob.length; i++)
   {
     bob[i]= new Bacteria();
   }
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   background(0);
   for(int i=0; i<bob.length; i++)
 {
   bob[i].jump();
   bob[i].show();
 }
   //move and show the bacteria   
 }  
 class Bacteria    
 {     
   int myX,myY,Colo;
   Bacteria()
   {
     myX=250;
     myY=250;
     Colo=color(127,(int)(Math.random()*256),255);
   }
 void jump() {
   if(mouseX > myX)
     myX =myX + (int)(Math.random()*5)-1;
   if(mouseX< myX)
     myX = myX +(int)(Math.random()*5)-3;
   if(mouseY> myY)
     myY =myY + (int)(Math.random()*5)-1;
   if(mouseY< myY)
     myY =myY +(int)(Math.random()*5)-3;
   
 }
 void show()
 {
   fill(Colo);
   ellipse(myX,myY,50,50);
 }
   //lots of java!   
 }    