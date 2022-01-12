DNA[] population = new DNA[1];
void setup(){
  size(700,400);
  for (int i =0; i < population.length; i++){
    population[i] = new DNA();
  }
}

void draw(){
  background(255);
  population[i].fitness();
  //println(weight);
}
