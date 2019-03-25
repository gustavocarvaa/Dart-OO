void main(){
  TV tv = TV();
  tv.mudaCanal(20);
  print(tv._canal);
}

class TV{
  int _canal, _volume;
  
  maisVol(){
    if(_volume < 50){
      _volume++;
    }
  }
  menosVol(){
    if(_volume > 1){
      _volume--;
    }
  }
  mudaCanal(int valor){
    if(valor >= 1 && valor<=50){
      _canal = valor;
    }
  }
}