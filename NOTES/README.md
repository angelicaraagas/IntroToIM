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

**Dynamic mode** - reveal the position (coordinates) of the mouse all the time.
```
void draw() {
	}
```
- Constantly updates the canvas 

background() - redraws the background, previous shapes are erased. 
- Can take 3-values (RGB), one value (greyscale), 4-values (assumes transparency)

print() or println() - prints the numbers corresponding to the position of the shape on the canvas. println() separates values into separate lines. 

Assign name to the print function to make numbers easier to understand. Ex. 
println(“here is mouse X value =“ + mouseX); 
println(“mouse coordinates =“ + mouseX + “,” + mouseY) 

void setup() {
	size (500, 500); 
}
- Define initial environment properties once. 

Global variable - every function can see it 
frameRate - built-in variable, calls the current framerate
frameRate() - function to change the frame rate
