int[] genes;
float fitness, weight, value;
int i;
class DNA{
  DNA(){
    genes = new int[1];
     for (i = 0; i < genes.length; i++){
       genes[i] = int(random(1,4));
       if(weight<=5000)
       genes = expand(genes, genes.length+1);
   }
  }
   
  void fitness(){
        if(weight<=5000){
            printArray(genes);
     }
     if(genes[i]==1);{
     weight+=90;
     value=+150;
    }
     if(genes[i]==2);{
     weight+=130;
     value=+35;
    }
     if(genes[i]==3);{
     weight+=1530;
     value=+200;
    }
     if(genes[i]==4);{
     weight+=500;
     value=+160;
    }
      float score = value/weight;
      fitness = score/5000;
  }
}
