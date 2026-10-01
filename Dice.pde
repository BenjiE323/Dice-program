void setup() {
  background(255);
  size(500, 500);
  noLoop();
}
void draw() {
  background(128, 0, 0);
  int sum = 0;
  for (int i = 15; i < 450; i += 70) {
    for (int g = 15; g < 380; g += 70) {
      Die bob = new Die(i, g+10);
      bob.roll();
      bob.show();
      sum += bob.rollNum;
    }
  }
  textSize(16);
  text("You rolled a " + sum, 205, 455);
  if (sum > 150) {
    text("Your a high roller!", 200, 480);
  }
}
//text("Your a high roller!", 200, 480);



void mousePressed() {
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int myX;
  int myY;
  int rollNum;
  int dotSize;
  int dieSize;

  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    rollNum = 1;
    dotSize = 2;
    dieSize = 50;
  }
  void roll()
  {
    //your code here
    rollNum = (int)(Math.random()*6 + 1);
  }
  void show()
  {
    //your code here
    fill(255);
    rect(myX, myY, dieSize, dieSize);
    fill(0);
    if (rollNum == 1) {
      ellipse(myX + 25, myY + 25, dotSize, dotSize);
    } else if (rollNum == 2) {
      ellipse(myX + 20, myY + 20, dotSize, dotSize);
      ellipse(myX + 30, myY + 30, dotSize, dotSize);
    } else if (rollNum == 3) {
      ellipse(myX + 25, myY + 25, dotSize, dotSize);
      ellipse(myX + 20, myY + 25, dotSize, dotSize);
      ellipse(myX + 30, myY + 25, dotSize, dotSize);
    } else if (rollNum == 4) {
      ellipse(myX + 20, myY + 20, dotSize, dotSize);
      ellipse(myX + 20, myY + 30, dotSize, dotSize);
      ellipse(myX + 30, myY + 20, dotSize, dotSize);
      ellipse(myX + 30, myY + 30, dotSize, dotSize);
    } else if (rollNum == 5) {
      ellipse(myX + 20, myY + 20, dotSize, dotSize);
      ellipse(myX + 20, myY + 30, dotSize, dotSize);
      ellipse(myX + 30, myY + 20, dotSize, dotSize);
      ellipse(myX + 30, myY + 30, dotSize, dotSize);
      ellipse(myX + 25, myY + 25, dotSize, dotSize);
    } else if (rollNum == 6) {
      ellipse(myX + 25, myY + 20, dotSize, dotSize);
      ellipse(myX + 20, myY + 20, dotSize, dotSize);
      ellipse(myX + 30, myY + 20, dotSize, dotSize);
      ellipse(myX + 25, myY + 30, dotSize, dotSize);
      ellipse(myX + 20, myY + 30, dotSize, dotSize);
      ellipse(myX + 30, myY + 30, dotSize, dotSize);
    }
  }
}
