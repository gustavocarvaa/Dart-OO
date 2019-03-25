void main(){
  Pessoa p = Pessoa('José', 8, 25, 1.2);

  p.envelhecer();
  print('Idade: ${p.idade} Altura: ${p.altura}');
}

class Pessoa{
  String nome;
  double peso, altura;
  int idade;
  
  Pessoa(this.nome, this.idade, this.peso, this.altura);
  
  envelhecer(){
    idade++;
    if(idade<21){
     crescer(); 
    }
  }
  engordar(double valor){
    peso+=valor;
  }
  emagrecer(double valor){
    peso-=valor;
  }
  crescer(){
    altura+=0.5;
  }
}