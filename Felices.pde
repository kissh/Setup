import java.util.ArrayList;

//Este programa permite identificar si un numero es o no feliz e imprime en pantalla el proceso para llegar a identificar si es o no feliz.

public class Felices extends Sequence {


  String author() {
    String a = "desconocido";
    return a;
  }

  String description() {
    String d = "Se definen por un número entero positivo, se hace la suma de los cuadrados de sus dígitos, si es igual a 1 entonces es FELIZ, si no entonces se repite el proceso";
    return d;
  }

  int compute(int n) {
    
    int suma = squaredigitsum(squaredigitsum(squaredigitsum(squaredigitsum(n))));
    return suma;
  }

  void display(int n) {
  fill(255-n);
  text(this.author()+": "+this.description(),250,40,500,200);
    int suma = compute(n);
if (suma==1) {
  fill(255-n);
  text("Es feliz", 700,130);
  fill(255,255,0);
  ellipse(500,250, 200, 200);
  fill(255);
  ellipse(520,220, 20, 20);
  ellipse(480,220, 20, 20);
  fill(0);
  ellipse(500,300, 100, 20);
}

else{
  fill(255-n);
  text("No es feliz", 700,130);
}  
  }
  
  //Esta funcion permite separar los digitos de un numero y meterlo en un arreglo de lista
  ArrayList<Integer> digits(int i) {
      ArrayList<Integer> digits = new ArrayList<Integer>();
          while(i > 0) {
          digits.add(i % 10);
          i /= 10;
      }
      return digits;
  }
  

 
  //esta funcion permite realizar la sumatoria de los cuadrados de los digitos del numero
  int squaredigitsum(int n) 
  {
  ArrayList<Integer> digitos = new ArrayList<Integer>();
  digitos=digits(n);
  int[] arreglo=new int[digitos.size()];
  for (int i=0;i<digitos.size();i++)
  {
    arreglo[i] =digitos.get(i);
  }
  int suma = 0;
  for (int i=0;i<digitos.size();i++)
  {
  suma =suma+((arreglo[i])*(arreglo[i]));
  }
  return suma;
  }
  
  
  
  int [] toArray(int n) {
    //no se puede implementar para los numeros Felices
    int[] seq = new int[n];
    return seq;
    
  }
  
void barChart(int n){
  
    
  }
  
void lineChart(int n){
  
  }
void curveFitting(int n){
  
  }
  

}