class Triangulares extends Sequence { 
  String author(){
  return  "Pitae1goras";   
  } 
   String description(){
      return  "los numeros";
  }    
   int compute (int n){
     println((n*(n+1))/2);
     return n;
   }
   int [] toArray(int n){
     int[] seq = new int[n];
     for (int i=0; i<n; i++)
      seq[i] = compute((i*(i+1))/2);
     return seq;
     
   }
   String toString(int n){
    return Arrays.toString(toArray(n)); 
  }   
  void display (int n){
      fill(255-n);
  text(this.author()+": "+this.description(),250,40,500,200);
  fill(255-10*n);
    int y=685;
    int x=15;
    int s=n;
    for(int i=0;i<n;i++){
      for(int j=0;j<s;j++){
         ellipse(x,y,20,20); 
         x=x+20;              
       }  
       y=y-20;
       s=s-1;
       x=15;
     }

        
   } 
   
   void barChart(int n){
   smooth();
    colorMode(RGB,100);
    fill(90);
    rectMode(CORNERS);
    background(100);
    noStroke();
    rect(20, 20, width - 20, height - 20);
    rectMode(CORNER);
    for(int i=1; i<190; i++){
    fill(0);
    rect(20+(i*4), height-20, 3,-(this.compute(i))*2);
  
    
  }
  
void lineChart(int n){
  
  }
void curveFitting(int n){
  
  }
 }
