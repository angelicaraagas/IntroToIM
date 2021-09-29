Table table;
float spacing;
PFont f;
String searches;
int tw;

void setup() {
  size(800, 800);
  loadData();
  f = createFont("Calibri", 50);
textFont(f);
textSize(50);
}

void loadData() {
  table = loadTable("4000Words"); 
  spacing = float(width)/(table.getRowCount());

}

void draw() {
  background(0);
  frameRate(0); 
  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    searches = row.getString(0);
    fill(random(255),random(255), random(255));
    text(searches, random(width), random(height));
  }
}
