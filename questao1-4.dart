void main() {
  Retangulo r = Retangulo(null, 3, 4);
  Quadrado q = Quadrado('verde', 5);
  Circulo c = Circulo('azul', 3);
  
  print('Área do Círculo: ${c.calculaArea()} Cor: ${c.cor}');
  print('Área do Retangulo: ${r.calculaArea()} Perímetro: ${r.perimetro()}');
  print('Área do Quadrado: ${q.calculaArea()} Cor: ${q.cor}');

}

//QUESTAO - 01
abstract class Figura{
	String cor;
  double area;
  
  Figura(this.cor);
  
  trocaCor(String cor){
    this.cor = cor;
  }
  
  mostraCor(){
    print(this.cor);
  }
  
  double calculaArea();
}

//QUESTAO - 02
class Circulo extends Figura{
  double raio;
  Circulo(String cor, this.raio): super(cor);

  @override
  double calculaArea(){
    return 3.14 * raio;
  }
}

//QUESTAO - 03
class Quadrado extends Figura{
  double lado;
  Quadrado(String cor, this.lado): super(cor);
  
  alterarLado(double novo){
    this.lado = novo;
  }
  
  mostrarLado(){
    print('Lado: $lado');
    return lado;
  }
  
  @override
  double calculaArea(){
   return lado * lado;
  }
}

	//QUESTAO - 04
  class Retangulo extends Figura{
  	double base, altura;
  	Retangulo(String cor, this.base, this.altura): super(cor);
    
  mudarBase(double nova){
    this.base = nova;
  }
    
  mudarAltura(double nova){
    this.altura = nova;
  }
    String exibirLados(){
      print('Base: $base \n Altura: $altura');
       return 'Base: $base \n Altura: $altura';
      
    }
    
    double perimetro(){
      return 2*(base + altura);
    }
  
  @override
  double calculaArea(){
 		return (base * altura)/2;
   }
}