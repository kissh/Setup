import controlP5.*;
private Pado sequence1;
private Triangulares sequence2;
private Felices sequence3;
private ControlP5 cp5;
private float Boton;

void bar(int n) {
  Boton=n;
}
void setup(){
  size(800,700);
  PFont font = createFont("arial",15);
  cp5 = new ControlP5(this);
  
  //campo de texto de control p5
  cp5.addTextfield("NUMERO")
     .setPosition(20,40)
     .setSize(200,20)
     .setFont(font)
     .setFocus(true)
     .setColor(color(255,0,0));
     //fin campo texto 
   //barra de botones
  ButtonBar b = cp5.addButtonBar("bar")
     .setPosition(0, 0)
     .setSize(800, 20)
     .addItems(split("PADOVAN TRIANGULARES FELICES"," "));
  b.onMove(new CallbackListener(){
    public void controlEvent(CallbackEvent ev) {
      ButtonBar bar = (ButtonBar)ev.getController();
    }
  });
  //fin barra botones
  textFont(font);
  sequence1 = new Pado();
  sequence2 = new Triangulares();
  sequence3 = new Felices();
 
  } 


void draw() {

  int num=int(cp5.get(Textfield.class,"NUMERO").getText());
  background(10*num);
  
  if(Boton==0.0) sequence1.display(num);;
  if(Boton==1.0) sequence2.display(num);
  if(Boton==2.0) sequence3.display(num);
  
  
}