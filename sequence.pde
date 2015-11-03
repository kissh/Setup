// Super abstract class Sequence
import java.util.Arrays;

abstract class Sequence {
  abstract String author();
  abstract String description();
  abstract int compute(int n);

    String toString(int n) {
    return Arrays.toString(toArray(n));
  }

  int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i+1);
    return seq;
  }
abstract void display(int n);
  
abstract void barChart(int n);
  
abstract void lineChart(int n);
    
abstract void curveFitting(int n);
}