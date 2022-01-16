DNA[] population = new DNA[15];
float mutationRate;
ArrayList<DNA> matingPool;
float maxValue, maxWeight;
int maxValueint;
boolean ny;
void setup(){
  size(1700,800);
  mutationRate = 0.01;
  for (int i =0; i < population.length; i++){
    population[i] = new DNA();
  }
}

void draw(){
  background(200);
  for (int i=0;i<population.length;i++){
  if(population[i].weight>5000)
   fill(100,100,255,50);
  else
   fill(100,100,255);
   rect(0,i*50,population[i].weight*0.2,20);
   fill(0);
   textSize(18);
   text("weight",10,i*50+17);
  if(population[i].value==maxValue)
   fill(0,255,0);
  else
   fill(255,0,0);      
   rect(0,i*50+20,population[i].value,20);
   fill(0);
   text("value",10,i*50+17+20);
   rect(5000*0.2,0,5,1080);
  for (int j=0;j<population[i].genes.length;j++){
   text(population[i].weight,80,i*50+17);
   text(population[i].value,80,i*50+17+20);
  }
   textSize(40);
   text("Best Value: " + maxValueint+" kr.",1030,50);
   text("Press Space to generate new",1030,100);
   population[i].fitness(); 
   population[i].display();
   findMax();
  }
  
 ArrayList<DNA> matingPool = new ArrayList<DNA>();
  
  for (int i = 0; i < population.length; i++) {
    int n = int(population[i].fitness * 100);
    for (int j = 0; j < n; j++){
      matingPool.add(population[i]);
    }
  }
  
  for (int i = 0; i < population.length; i++) {
    int a = int(random(matingPool.size()));
    int b = int(random(matingPool.size()));
    DNA partnerA = matingPool.get(a);
    DNA partnerB = matingPool.get(b);
    DNA child = partnerA.crossover(partnerB);
    child.mutate(mutationRate);
    
    
    if(ny)
    population[i] = child;
    //{ printArray(population[i].genes);
     //println("Weight: "+population[i].weight);
    // println("Value: "+population[i].value);
    //println(maxValue);}
  }
  ny=false;
  
}
  void findMax(){
    float[] values = new float[15];
    float[] weights = new float[15];
    for (int i = 0; i < population.length; i++){
    values[i] = population[i].value;
    weights[i] = population[i].value;
    }
    maxValue = max(values);
    maxValueint = int(maxValue);
    maxWeight = max(weights);
  }

void keyPressed(){
  if(key==' ')
  ny=true;
}
