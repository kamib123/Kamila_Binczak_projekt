float x;
float y;
int circleRadius = 40; 
float velocity = 0.2;
float acceleration = 0.04;
float horizontalVelocity = 1;
boolean moveForward = false;
boolean moveDown = true;


void setup() {
  size(700, 480);
  x = circleRadius;
  y = circleRadius;
  print(circleRadius +" : "+ y);
  ellipseMode(RADIUS);  
  loop();
  frameRate(120);
}



void draw() { 
  background(0);
  ellipse(x, y, circleRadius, circleRadius);
  

  if(moveDown){
    y += velocity;
    velocity += acceleration;
  } else {    
    y -= velocity;
    velocity -= acceleration;
  }    

  if(y >= height-circleRadius){
    moveDown = false;
    moveForward = true;
    velocity *= 0.8;
    fill(random(255), random(255), random(255));
  }
      
  if(velocity <= 0.0){
    moveDown = true;
  }
   
  if(moveForward && horizontalVelocity > 0)
    x += horizontalVelocity;
      
  horizontalVelocity -= 0.0007;
  
  if(horizontalVelocity <= 0)
    noLoop();
}