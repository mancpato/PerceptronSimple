
class Punto {
  float x;
  float y;
  int Tipo;
  
  Punto(float _x, float _y) {
    x = _x;
    y = _y;
    Tipo = 1;
  }
 
  void Pintar() {
    strokeWeight(0);
    if ( Tipo == 1 )
      fill(255,0,0);
    else
      fill(0,255,0);
    ellipse(x+width/2,y+height/2,8,8);
  }
}
