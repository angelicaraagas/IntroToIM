# Self-Portrait Reflection

![cleanplot](https://github.com/angelicaraagas/IntroToIM/blob/main/Sept%207/Screen%20Shot%202021-09-06%20at%203.05.12%20PM.png)

The entire process of constructing a self-portrait through a programming language was compeletely unfamiliar to, which already made the assignment a challenge to begin with. 

The first struggle I had to do with my artistic approach to the self-portrait. I wanted to make something aesthetically pleasing, but since I am a beginner, I knew I wasn't yet equipped with the skills to make something perfect. However, in the end, I am proud of what I was able to achieve with the experience I have. I wanted to keep it simple, using this as a chance to get familiar with Processing; however, I still encountered numerous challenges (as follows):

# Proportions (Face)

I found it especially difficult trying to construct a face with shapes. My first attempts ended up looking extremely abstract. Making the features proportionate to each other took a lot of trial and error. Once I managed to get the main features of the face, I struggled with creating a mouth that was not just an arc. However, I still used the arc feature to create a mask. Ultimately, the mask covered the details of the face that I didn't know how to create. 

```
size (500,500);
background(255,248,220);
noStroke();

//Hair
fill(66,33,00);
ellipse(250,250,200,280);

//Head and Neck
fill(250,200,150);
ellipse(250,250,170,200);
rect(210,260, 80, 150);

//Hair 2
fill(66,33,00);
rect(180,150,130,60);

//Eyes
fill(255,255,255);
ellipse(300,240,40,20);
fill(0,0,0);
circle(300,240,20);
fill(255,255,255);
ellipse(200,240,40,20);
fill(0,0,0);
circle(200,240,20);
fill(255,255,255);
circle(203,235,6);
circle(303,235,6);


//Nose and Blush
fill(228,185,142);
rect(240,250, 20, 40);
fill(255,192,203);
ellipse(200,270,40,20);
ellipse(303,270,40,20);
```

![cleanplot](https://github.com/angelicaraagas/IntroToIM/blob/main/Sept%207/Media/Screen%20Shot%202021-09-06%20at%206.22.55%20PM.png)

# Background 

In addition to creating the portrait, I wanted to experiment with layering and using shapes and colors to create dimension. Although it wasn't an issue that interrupted my work, I found that layering was tedious and I was very inefficient. In the beginning, would type the individual code for each of the shapes in the layer. I then realized that it would go much faster if I just copy pasted the code of the previous shape and modified only the necessery elements (i.e. X,Y,Z).

```
size (500,500);
background(255,248,220);
noStroke();

//Sun Colors
noStroke();
fill(255,160,122);
circle(450,450,400);
fill(255,127,80);
circle(450,450,350);
fill(255,99,71);
circle(450,450,300);
fill(255,69,0);
circle(450,450,250);


//Water foreground
noStroke();
fill(169,221,199);
rect(0,430,500,70);
fill(141,189,193);
rect(0,450,500,50);
fill(100,165,187);
rect(0,470,500,30);

//Clouds
fill(255,255,255);
ellipse(100,50,250,100);
ellipse(50,100,200,70);
ellipse(400,150,250,100);
ellipse(450,100,200,70);

//Tree
fill(139,69,19);
rect(90,260, 30, 150);
fill(107,142,35);
ellipse(100,230,200,50);
ellipse(100,260,100,50);
ellipse(100,200,100,50);

//Grass
fill(0,100,0);
circle(10,380,120);
circle(60,410,120);
fill(34,139,34);
circle(40,450,130);
circle(120,450,130);
fill(46,139,87);
ellipse(250,500,250,100);
circle(150,500,120);
circle(70,500,120);
```

![cleanplot](https://github.com/angelicaraagas/IntroToIM/blob/main/Sept%207/Media/Screen%20Shot%202021-09-06%20at%206.39.34%20PM.png)


# Conclusion

Overall, the assignment was challenging and I realized that most of my problems came from inexperience. I struggled with estimating the coordinates of where I wanted to put the shapes, which led to my problem with proportions. Despite the challenges, I felt that this was a great introduction to familiarizing myself with Processing and programming language in general. I believe with my new knowledge, I will be more efficient when working with Processing for future projects. 
