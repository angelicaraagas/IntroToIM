float x, y, s=40;
int score;
boolean pressed;
import processing.sound.*; 

SoundFile music;
//SoundFile button;

void setup()
{
  size(480, 860);
 
  music = new SoundFile(this,"/Users/angelicaraagas/Music/iTunes/iTunes Media/Music/Kevin MacLeod/Royalty-Free/Bit Quest.mp3");
  music.loop();
  //button = new SoundFile(this, "/Users/angelicaraagas/Music/iTunes/iTunes Media/Music/Unknown Artist/Unknown Album/Menu Game Button Click Sound Effect.mp3");
  
  
  noStroke();
  textAlign(CENTER);
  textSize(35);
  reset();
}

void draw()
{
  background(0);
  fill(255);

  if (!pressed && mousePressed)
  {
    pressed = true;
    if (mouseX < x + (s/2) && mouseY < y + (s/2))
    {
      score++;
      randomPos();
    } else {
      reset();
    }
  }
  if (pressed && !mousePressed)
  {
    pressed = false;
  }

  ellipse(x, y, s, s);
  text("Score : " + score, width /2, 40);
  text("Only click on the white circle.", width /2, 80);
}

void reset()
{
  x = width / 2 ;
  y = height /2;
  score = 0;
}

void randomPos()
{
  x = random(s/2, width - (s/2));
  y = random(s/2, height - (s/2));
}
