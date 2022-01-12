int[] genes;
float fitness, weight, value;
class DNA{
  DNA(){
    genes = new int[1];
  }
   
  void fitness(){
      float score = value/weight;
      fitness = score/5000;
  }
}
