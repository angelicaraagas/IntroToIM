# NOTES

**Variables** - used for storing values. 

**int (integer)** stores only whole numbers (positive or negative), not fractions.
Assign a descriptive name to the variable.

*Ex.*

```
int triangleTopLeftX;
triangleTopLeftX = 50; (giving a value to the variable) 
```
OR

```
int triangleTopLeftX = 50;
```
Use the variable. *Ex.*
```
triangle(triangleTopLeftX, 20, triangleTopLeftX+100, 30, triangleTopLeftX+50, 200);
```
- Replacing each of the corners of the triangle with the variable.
- Instead of changing each value of each corner when moving the shape, you can just change the value of the integer/variable. 

**Using variable for color:**
```
int redValue; 
redValue = random(256);
fill(redValue, 10, 30); 
```

**Floating point numbers (float)** - numbers with decimals/the decimal place can be anywhere. Ex. 0.002 or 200.02
- Used in combination with the random function. 

**Error: cannot convert from float to int**
- Convert integer to floating number 
OR
- Convert the value from the random function and put it into the variable as an integer. 

**round ()** - converts a floating point number to an integer by rounding. *Ex.*
```
round( random(256) ); 
```
**Width and Height** are built-in variables. 
*Ex.* 
```
circle(width/2, height/3, 100); 
```
- Can be used to calculate the circle center 

**mouseX and mouseY** are built-in variables. 
*Ex.*
```
circle(mouseX, mouseY, 30); 
```
- Always starts at (0, 0)

**Active/Dynamic mode** - reveal the position (coordinates) of the mouse all the time.
```
void draw() {
	}
```
- Constantly updates the canvas 

**background()** - redraws the background, previous shapes are erased. 
- Can take 3-values (RGB), one value (greyscale), 4-values (assumes transparency)

**print() or println()** - prints the numbers corresponding to the position of the shape on the canvas. println() separates values into separate lines. 

Assign name to the print function to make numbers easier to understand. *Ex.* 
```
println(“here is mouse X value =“ + mouseX); 
println(“mouse coordinates =“ + mouseX + “,” + mouseY) 

void setup() {
	size (500, 500); 
}
```
- Define initial environment properties once. 

**Global variable** - every function can see it 

**frameRate** - built-in variable, calls the current framerate

**frameRate()** - function to change the frame rate
```
void setup() {
  println(frameRate);  // frameRate is a built-in variable
  frameRate(10);       // frameRate() is a function
  println(frameRate); // it takes awhile for the frame rate to change
}

void draw() {
  println(frameRate);
}
```

**Conditionals**
```
void setup() {
  size(300, 300);
}

void draw() {
  if (mousePressed == true) {
    background(color(0, 0, 255));
  } else {
    background(color(200, 0, 0));
  }
}
```
**if(*condition*)** - begins the conditional. Allows different courses of action depending on a given situation. 
- ***condition*** has to resolve to either true or false.

**else {}** - if the condition is NOT true 

**single '=' sign** is an assignment. *Ex.* x = 5; 

**double '==' signs** is a test to see whether the left side of the equation is identical to the right side. *Ex.* (mousePressed == true)

**mousePressed/keyPressed** are built in variables.
- This is a new type of data called **boolean**
- These variables are already either true or false, thus, == true/false is not necessary. 

**Boolean** - variables that have only one of two values, it is either true or false. 

There is a huge difference between the **mousePressed** variable and the **mousePressed()** function: 
- The variable mousePressed is true as long as any mouse button is pressed, while the function mousePressed() is called only once whenever a mouse button is pressed, no matter how long it's pressed for:
```
int pressCount = 0;
int mouseClickCount = 0;
boolean mouseWasPressed = false;

void setup() {
  frameRate(2.5); // slow down so can see blue background
}

void draw(){
  if (mouseWasPressed) {
    background(color(0, 0, 255));
    mouseWasPressed = false;
  } else {
    background(color(200, 0, 5));
  }
  println(mouseClickCount);
}

void mousePressed() {
    mouseWasPressed = true;
    mouseClickCount = mouseClickCount + 1;
}
```
**mouseX and mouseY** are built-in variables. *Ex.* 
```
void draw(){
  if (mousePressed) {
    background(color(0, 0, 255));
{
circle (mouseX, mouseY, 20);
```
- Continuously draws circles and creates a trail of circles (like drawing) wherever the mouse is on the sketch. 
- When mouse is clicked (and held on clicked), the background clears, removing the trail of circle. This is because of the mousePressed function. 
- Whenever you want a fresh drawing to appear (no trail), first erase the background

**Functions Related to mousePressed**
- mouseX
- mouseY
- pmouseX
- pmouseY
- mousePressed() *function*
- mouseClicked()
- mouseReleased()
- mouseMoved()
- mouseDragged()
- mouseButton()
- mouseWheel()

**Using the mousePressed() function**
```
void draw(){
  if (mouseWasPressed) {
    background(color(0, 0, 255));
    mouseWasPressed = false;
  } else {
    background(color(200, 0, 5));
  }
 }

boolean mouseWasPressed = false;

void mousePressed() {
	mouseWasPressed = true;
}
```
- mousePressed() function only calls the action ONCE. For example, changing the color of the screen, the if() color will only appear ONCE, and then return to the else() color. 
- mousePressed() function is an **edge detector** whole the mousePressed variable is a **level detector**

**Loops**

**Loops** - keeps doing something as long as something is true. 

**while()** is like **if()** but it keeps on doing it as long as condition is true. 
```
void setup() {
  size(300, 300);

  int foo = 50; // create and initialize a variable

  while (foo < width) { // keep going as long as the condition is true, compared to only showing up ONCE if while() was if()
    ellipse(foo, 50, 40, 40);
		// modify the variable so something different happens next time
    foo = foo + 50; 
  }
}
```
- the variable, foo, will continue going in increments of 50 (as stated in **int foo = 50; foo = foo + 50;**) only until it reaches the width of the screen because of **while (foo < width)**
- if() statement does something ONCE, while() statement does something CONTINUOUSLY as long as the condition is true. 

Another type of loop which combines everthing in the while() function:
```
void setup() {
  size(300, 300);

  // initialization, condition, and incrementation all in one line
  for (int foo = 50; foo < width; foo = foo + 50)  {
    ellipse(foo, 50, 40, 40);
  }
}
```
Another example:
```
void setup() {
	size(700, 700); 
	
	int yPos = 0;
	int xPos = 0;
	for (yPos = 30; yPos < height-30; yPos=yPos + 40) {
	 for (xPos = 20; xPos < width-60; xPos=xPos + 40) {
	  fill(random(200), random(200), random(200; 
	  rect(xPos, yPos, 30, 30); 
   }
  }
 }
```





