 //declare bacteria variables here
 Bacteria [] one =new Bacteria[20];	
 
 void setup()   
 {     

 	
 	size(500,500);
 	for(int i=0; i<one.length; i++)
 	{
 	one[i]=new Bacteria((int)(Math.random()*501),(int)(Math.random()*501));
	}   
}
 void draw()   
 {    
 	background(0);
 	for(int i=0; i<one.length; i++)
 	{
 		one[i].move();
 		one[i].show();
 		
 	}

 	
 }  
 class Bacteria    
 {     
 	int myX,myY,myColor;
 	Bacteria(int x, int y) 
 	{
 		myX=x;
 		myY=y;
 		myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	}

 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,20,20);
 	}

 	void move()
 	{
 		

 		myX=myX+(int)(Math.random()*9)-4;
 		myY=myY+(int)(Math.random()*9)-4;
 		
 	}
 }    