DNA[] population = new DNA[1];
void setup(){
  size(700,400);
  for (int i =0; i < population.length; i++){
    population[i] = new DNA();
  }
}

void draw(){
  background(255);
   for (int i = 0; i < genes.length; i++){
      genes[i] = int(random(1,4));
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
   }
  if(weight<=5000)
    genes = expand(genes, genes.length+1);
  printArray(genes);
  //println(weight);
}
