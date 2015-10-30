Pado sequence1;
Triangulares sequence2;
void setup(){
  size(800,700);
  sequence1 = new Pado();
  sequence2 = new Triangulares (); 
  background(550);
  strokeWeight(2); 
  sequence1.display(30);
  sequence2.display(30);
  String a= sequence1.author();
  String b= sequence2.author();
  println (a);
  println (b);
     println("N-esimo termino de los numeros triangulares");
     println("N-esimo termino de la serie");
      sequence1.compute(6);
      sequence2.compute(6);
     println("N primeros terminos de los numeros triangulares");
     println("N primeros terminos de la serie");
      sequence1.toArray(6);
      sequence2.toArray(6);
  } 
int value = 0;
void keyReleased() {
      value++;
 } 
void draw() {
     if (value%3 ==  0) {
       background(0);
       sequence1.display(value);
  } if (value%3 ==  1){
    background(100);
    sequence2.display(value);
  } if (value%3 == 2){
    background(value);
    }
 }