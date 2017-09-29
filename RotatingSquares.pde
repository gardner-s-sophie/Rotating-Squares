/** @peep sketch */
 
color lightBlue = color(66, 168, 237);
color darkBlue = color(0, 102, 153);
color orange = color(204, 102, 0);
 
int spacing = 20;
int radius = 8;
 
void setup() {
  size(200, 200);
  noStroke();
}
 
void draw() {
  background(255-16);
  for (int x = 10; x < width; x += spacing) {
    for (int y = 10; y < width; y += spacing) {
      float distance = dist(mouseX, mouseY, x, y);
      if (distance < mouseX) {
        fill(darkBlue);
      } else {
        fill(lightBlue);
      }
      float factor = map(distance, 0, width, 1.3, 0.3);
      pushMatrix();
      translate(x, y);
      rotate(-factor);
      scale(factor);
      rect(0, 0, radius*2, radius*2);
      popMatrix();
    }
  }
}
