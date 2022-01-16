class DNA{
  int[] genes;
  float fitness, weight, value,w;
DNA(){
genes = new int[24];
for (int i = 0; i < genes.length; i++){
  if(weight+w<5000)
  genes[i] = int(random(0,2));
     }
    if(genes[0]==1&&weight+90<=5000){weight+=90; value+=150;}
    if(genes[1]==1&&weight+130<=5000){weight+=130; value+=35;}
    if(genes[2]==1&&weight+1530<=5000){weight+=1530; value+=200;}
    if(genes[3]==1&&weight+500<=5000){weight+=500; value+=160;}
    if(genes[4]==1&&weight+150<=5000){weight+=150; value+=60;}
    if(genes[5]==1&&weight+680<=5000){weight+=680; value+=45;}
    if(genes[6]==1&&weight+270<=5000){weight+=270; value+=60;}
    if(genes[7]==1&&weight+390<=5000){weight+=390; value+=40;}
    if(genes[8]==1&&weight+230<=5000){weight+=230; value+=30;}
    if(genes[9]==1&&weight+520<=5000){weight+=520; value+=10;}
    if(genes[10]==1&&weight+110<=5000){weight+=110; value+=70;}
    if(genes[11]==1&&weight+320<=5000){weight+=320; value+=30;}
    if(genes[12]==1&&weight+240<=5000){weight+=240; value+=15;}
    if(genes[13]==1&&weight+480<=5000){weight+=480; value+=10;}
    if(genes[14]==1&&weight+730<=5000){weight+=730; value+=40;}
    if(genes[15]==1&&weight+420<=5000){weight+=420; value+=70;}
    if(genes[16]==1&&weight+430<=5000){weight+=430; value+=75;}
    if(genes[17]==1&&weight+220<=5000){weight+=220; value+=80;}
    if(genes[18]==1&&weight+70<=5000){weight+=70; value+=20;}
    if(genes[19]==1&&weight+180<=5000){weight+=180; value+=12;}
    if(genes[20]==1&&weight+40<=5000){weight+=40; value+=50;}
    if(genes[21]==1&&weight+300<=5000){weight+=300; value+=10;}
    if(genes[22]==1&&weight+900<=5000){weight+=900; value+=1;}
    if(genes[23]==1&&weight+2000<=5000){weight+=2000; value+=150;}
    
    for (int i = 0; i<genes.length; i++){
     if(w+weight>5000)
     genes[i]=0;
      
    }
  }
   
  void fitness(){
    for (int i = 0; i<population.length;i++){
      float score = value*0.1;
      if(weight>5000);
      score = score*0.1;
      fitness = pow(score,2);}
  }
  
  DNA crossover(DNA partner){
    DNA child = new DNA();
    int midpoint = int(random(genes.length));
    for (int i = 0; i < genes.length; i++) {
      if (i > midpoint) child.genes[i] = genes[i];
      else child.genes[i] = partner.genes[i];
  }
  return child; 
  }
  
  void mutate(float mutationRate) {
    for (int i = 0; i < genes.length; i++) {
      if (random(1) < mutationRate) {
        genes[i] = int(random(0,1.5));
      }
    }
  }
  
  void display(){
    
  }

}
