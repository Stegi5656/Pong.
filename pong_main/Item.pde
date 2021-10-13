class Item
{
  String type;
  float xPos;
  float yPos;
  int delay;
  
  Item()
  {
    delay = int(random(5000));

    xPos = random(width/3 +30, (width/3) * 2 -30);
    yPos = 0;
    
   int roll = int(random(0,7));
    if(roll == 0)
    {
      type = "newBall";
    } 
    if(roll == 1)
    {
      type = "speedUp";
    } 
    if(roll == 2)
    {
    type = "speedDown";
    }
    if(roll == 3)
    {
    type = "paddleUp";
    }
    if(roll == 4)
    {
    type = "paddleDown";
    }
    if(roll == 5)
    {
    type = "ballUp";
    }
    if(roll == 6)
    {
    type = "ballDown";
    }
  }
  
  String getType()
  {
    return type;
  }
  
  float getXpos()
  {
    return xPos;
  }
  
  float getYpos()
  {
    return yPos;
  }
  
  boolean display()
  {
    if(delay == 0)
    {
      noStroke();
      if(type == "newBall")
      {
        fill(250, 250, 0);
        circle(xPos, yPos, 40);
      }else if(type == "speedUp")
      {
        fill(86, 11, 173);
        triangle(xPos, yPos - 20, xPos - 20, yPos + 20, xPos +20, yPos + 20);       
      }else if(type == "speedDown")
      {
        fill(72, 12, 168);
        triangle(xPos, yPos + 20, xPos - 20, yPos - 20, xPos +20, yPos - 20);         
      }else if(type == "paddleUp")
      {
        fill(58, 12, 163);   
        rectMode(CENTER);
        rect(xPos, yPos, 20, 40);
      }else if(type == "paddleDown")
      {
        fill(63, 55, 201);
        rectMode(CENTER);
        rect(xPos, yPos, 40, 20);       
      }else if(type == "ballUp")
      {
        fill(67, 97, 238);
        circle(xPos, yPos, 40); 
        fill(250, 250, 0);
        circle(xPos, yPos, 20); 
      }else if(type == "ballDown")
      {
        fill(250, 250, 0);
        circle(xPos, yPos, 40);  
        fill(114, 9, 183);
        circle(xPos, yPos, 20);
      }
        
      yPos += 0.5;
    }else
    {
      delay--;
    }
    
    if(yPos == height + 30)
    {
      return true;
    }else
    {
      return false;
    }
    
  }
}
