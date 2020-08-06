

Punto[] Puntos = new Punto[250];
Neurona Cerebro;


void setup()
{
  size(600,600);
  
  for ( int i=0 ; i<Puntos.length ; i++ )
    Puntos[i] = new Punto(random(0,width)-width/2, 
                          random(0,height)-height/2);

  Cerebro = new Neurona(2,.01);
  println(frameCount);
}

void draw()
{
  background(200);
  Ejes();
  for ( int i=0 ; i<Puntos.length ; i++ ) {
    Puntos[i].x = random(0,width)-width/2; 
    Puntos[i].x = random(0,height)-height/2;
  }
  for ( Punto p : Puntos ) {
    p.Tipo = Cerebro.Clasificar(p.x,p.y);
    p.Pintar();
  }
  
  float x = random(0,width)-width/2;
  float y = random(0,height)-height/2;
  Cerebro.Entrenamiento(x, y, x<0 ? 1 : -1);

  // Las siguientes instrucciones muestran el punto de entrenamiento
  //fill(0,0,255);
  //ellipse(x+width/2,y+height/2,15,15);
  //println(Cerebro.Pesos[0], Cerebro.Pesos[1]);
  if ( frameCount > 50 )
  noLoop();
}

void Ejes()
{
  strokeWeight(2);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
}

void mousePressed()
{
  println(frameCount);
  redraw();
}
