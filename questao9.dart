void main(){
  Funcionario f = Funcionario('gustavo', 5);
  f.aumentarSalario(1);
  print(f.toString());
  
}

class Funcionario{
  
  double salario;
  String nome;
  
  Funcionario(this.nome, this.salario);
  
  String toString(){
    return 'Nome: $nome, Salário: $salario';
  }
  
  //aumento percentual
  aumentarSalario(double pct){
    salario += salario * (pct/100);
  }
  
}