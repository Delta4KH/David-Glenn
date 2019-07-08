 PShape rectangle,ball;
 float X , Y, ballx, bally, velx ,vely;
void setup(){
size(500,500);
createrectangle();
createball();
}

void draw() {
  background(255); 
  shape (rectangle);
  shape (ball);
  moveball();
}
void keyPressed() {
  if((keyCode == RIGHT ||key == 'd') && X < width -75) {
    rectangle.translate(10, 0);
    X += 10;
  }
  else if((key == 'a' || keyCode == LEFT) && X > 0) {
  rectangle.translate(-10,0);
  X -= 10;
}
}

void createrectangle(){
  Y = height- 50;
X = (width/2) - 37.5;
fill(250,0,0);
rectangle = createShape (RECT, X, Y,75, 25);
}

void createball(){
  ballx = width / 2;
  bally = height - 75;
  vely = random (-5,5);
  while (velx < 1 && velx > -1) velx = random (-5, 5);
  while (vely < 1 && vely > -1) vely = random (-5, -1);
  fill(0, 0, 255);
  ball = createShape (ELLIPSE, ballx, bally, 15, 15);
}

void moveball() {
  ball.translate (velx, vely);
  ballx += velx;
  bally += vely;
   if(bally>=height)
{vely*=-1;}
else if(bally<=0){vely*=-1;}
if(ballx<0){velx*=-1;}
else if(ballx>width){velx*=-1;}
if (bally >= Y-1 && bally <= Y+1 && ballx >=X -37 && ballx <= X+38)
{vely*=-1;}
}
