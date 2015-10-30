class Pado extends Sequence { 
  String author(){
  return  "Padovan";   
  } 
   String description(){
      return  "nesimos numeros de la serie";
  }  
  int compute(int n){    
    if (n==0)
    return 1;
    if (n==1)
    return 1;
    if (n==2)
    return 1;
    if (n>2)
    return compute(n-2) + compute(n-3);
    return -1;
   }
  int [] toArray(int n) {
    int[] PADOVAN = new int[n];
    for (int i=0; i<n; i++)
      PADOVAN[i] = compute(i+1);
    return PADOVAN;
  } 

   
   
  void display(int n){
  for (int i=0;i+1<n;i++){
  float x0=width/2;
  float y0=height/2;
  int [] arreglo = toArray(n); 
  float value = arreglo[i];
  float m = map(value, 0, value , 0 , 255);
  noStroke();// se puede quitar eta l\u00ednea si se desea dejar los bordes de los triangulos  
  //se puede jugar con el color teniendo en cuenta que m en los triangulos m\u00e1s peque\u00f1os 
  //correspondientes a los primeros valores de la serie va a tener un valor peque\u00f1o es decir que 
  //el color obtenido ser\u00e1 obscuro y a medida que sean m\u00e1s grandes los valores (y triangulos)
  //alcansar\u00e1 el 255 correspondiente al color de su posici\u00f3n (red, green, blue)
  int e = 10;
  //se puede disminuir el valor de descalamiento e para ue el dibujo no se salga de la ventana tan pronto
  
  fill (0,m,0);//primer sextante
  triangle(x0,y0,x0+ value*e,y0,x0+ value*e/2,y0-sqrt(3)* value*e/2);
  fill (m,m,m);//segundo sextante
  triangle(x0,y0,x0+ value*e/2,y0-sqrt(3)* value*e/2,x0- value*e/2,y0-sqrt(3)*( value*e/2));
  fill (0,m,0);//tercer sextante
  triangle(x0,y0,x0- value*e,y0,x0- value*e/2,y0-sqrt(3)*( value*e/2));
  fill (0,0,m);//cuarto sextante
  triangle(x0,y0,x0- value*e,y0,x0- value*e/2,y0+sqrt(3)*( value*e/2));
  fill (m,0,0);//quinto sextante
  triangle(x0,y0,x0+ value*e/2,y0+sqrt(3)*( value*e/2),x0- value*e/2,y0+sqrt(3)*( value*e/2));
  fill (0,0,m);//sexto sextante
  triangle(x0,y0,x0+ value*e,y0,x0+ value*e/2,y0+sqrt(3)*( value*e/2)); 
  }
  
  }
}