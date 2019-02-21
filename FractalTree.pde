private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .5;  
public void setup() 
{   
	size(860,550);    
	noLoop(); 
} 
public void draw() 
{   
  background(49, 73, 112);   
   stroke(204, 206, 209);
  strokeWeight(10);
  line(430,450,430,550); 
  drawBranches(430,650-200,125,3*Math.PI/2);
   drawBranches(430,650-200,125,3*Math.PI/2-50);
   drawBranches(430,650-200,125,3*Math.PI/2+50);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1= angle + branchAngle;
  double angle2= angle - branchAngle;
  branchLength=branchLength*fractionLength;
  int endX1 = (int)(branchLength * Math.cos(angle1) + x);
  int endY1 = (int)(branchLength * Math.sin(angle1) + y);
  int endX2 = (int)(branchLength * Math.cos(angle2) + x);
  int endY2 = (int)(branchLength * Math.sin(angle2) + y);
  if(branchLength<=20)
  {
   stroke(255, 183, 197); 
    strokeWeight(.5);
  }
    else if(branchLength<=40)
    {
   stroke(255, 183, 197); 
    strokeWeight(.5);
    }
  else
  {
   stroke(204, 206, 209);
    strokeWeight(5);
  }
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  if(branchLength>smallestBranch)
  {
    drawBranches(endX1,endY1,branchLength,angle1);
    drawBranches(endX2,endY2,branchLength,angle2);
  }
} 
