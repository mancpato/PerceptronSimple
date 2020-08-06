

class Neurona {
  float[] Pesos;  
  float Alfa;    // Tasa de aprendizaje

  Neurona(int n, float Tasa) {
    Pesos = new float[n];
    Pesos[0] = 0.5;
    Pesos[1] = -0.5;
    Alfa = Tasa;
  }

  int Clasificar(float x, float y) {
    float Suma = 0;
    Suma += x*Pesos[0] + y*Pesos[1];
    return f(Suma);
  }

  int f(float Suma) {
    if (Suma <= 0) 
      return 1;
    else 
      return -1; 
  }

  // Para cada punto (x,y), se tiene el resultado correcto
  // Los pesos se actualizan considerando el error en la clasificación
  void Entrenamiento(float x, float y, int Correcto) {
    int Eval = Clasificar(x,y);
    float Error = Correcto - Eval;
    Pesos[0] = Pesos[0] + Alfa*Error*x;
    Pesos[1] = Pesos[1] + Alfa*Error*y;         
  }

  // Return weights
  float[] getWeights() {
    return Pesos; 
  }
}
