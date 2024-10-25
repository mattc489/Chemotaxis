class Walker {

int myX, myY, myColor;



Walker() {
 
myX = width + 500;

myY = height / 2;

myColor = color(250, 10, 28); }




Walker(int x, int y) {

myX = x;
myY = y;
myColor = color(250,10 , 128);

}



void walk() {
 
 myX += (int)(Math.random() * 6) - 3; myY += (int)(Math.random() * 2);  

if
(mouseX > myX) { myX += (int)(Math.random() * 5) - 1; }

else { myX += (int)(Math.random() * 5) - 3; }

if (mouseY > myY) { myY += (int)(Math.random() * 5) - 1; }

else { myY += (int)(Math.random() * 5) - 3; }

}



void show() {

fill(myColor);
ellipse(myX, myY, 100, 50);

}

}

Walker bob;

Walker[] follow = {new Walker(), new Walker(), new Walker()};

Walker[] me = {new Walker(), new Walker(), new Walker()};



void setup() {

size(500, 500);
background(245, 245, 220);
bob = new Walker();

}

void draw() {
bob.walk();
bob.show();

for (int i = 0; i < follow.length; i++){
follow[i].walk(); follow[i].show(); }

for (int i = 0; i < me.length; i++) {
me[i].walk(); me[i].show(); }

}

