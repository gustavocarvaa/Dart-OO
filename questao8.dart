void main(){
  
Carro meuCarro = Carro(15);
meuCarro.adicionarGasolina(20);
meuCarro.andar(100);
meuCarro.obterGasolina();
  
}

class Carro{
  double consumo, _combustivel = 0;
  Carro(this.consumo);
  
  andar(double distancia){
    _combustivel = _combustivel - (distancia/consumo);
  }
  
  double obterGasolina(){
    return _combustivel;
  }
  
  adicionarGasolina(double qtd){
    _combustivel += qtd;
  }
}