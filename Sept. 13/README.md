# Reflection 

![cleanplot](https://github.com/angelicaraagas/IntroToIM/blob/main/Sept.%2013/Media/sept13%20GIF.gif)

![cleanplot](https://github.com/angelicaraagas/IntroToIM/blob/main/Sept.%2013/Media/Screen%20Shot%202021-09-13%20at%206.37.00%20PM.png)

The process of creating this artwork was much more difficult compared to the self-portrait piece. The coding was a lot more complex. I did a lot of research of mosaic pieces created through coding and found a lot of inspiration from artists like *iso.hedron* on Instagram. I still was not too sure about how to approach the artwork, so I reviewed recordings of the class and found help on YouTube from *thedotisblack creative coding* 

One of the main problems I faced was wanting to implement the mousePressed() function. I managed to use it so that it would change the background color and stroke color when the user clicks once; however, I could not figure out how to make it return back to how it was before the user clicks. I had the same issue when wanting to make the animation reverse/continue in a loop. 

![cleanplot](https://github.com/angelicaraagas/IntroToIM/blob/main/Sept.%2013/Media/Screen%20Shot%202021-09-13%20at%206.37.12%20PM.png) 
```
float r=0, s=1;

void setup() {
  size(500, 500);
  background(255);
  noFill();
  stroke(0);
}

void draw() {
  translate(width/2, height/2);
  rotate(r);
  ellipse(0, 0, r, s);
  r++;
  s+=2;
  if (mousePressed == true) {
    background(0);
    noFill();
    stroke(255);
  }
}

```
I was already satisfied with how I managed to create this artwork with the little knowledge I have of processing, so I decided to experiemnt with more complex creations later on. This led me to produce the final piece which can be seen in the GIF at the top.

Overall, the piece was fun to work on, but it was also very frustrating. I am still unfamiliar with coding language which makes it more difficult for me to work efficiently when creating pieces like this and translating the image I want into a language the computer can process. Regardless, I enjoyed the assignment even with all the struggle I went through and hope to become more familiar with Processing overtime. 
