void main(){
  ContaCorrente cc = ContaCorrente.semSaldo(3570, 'gustavo');
  
  cc.deposito(20);
  print("Saldo: ${cc.saldo}");
}

class ContaCorrente{
  int conta;
  double saldo = 0;
  String nome;
  
  ContaCorrente(this.conta,this.nome, this.saldo);
  //named constructor
  ContaCorrente.semSaldo(this.conta, this.nome);
  
  alterarNome(String novo){
    nome = novo;
  }
  deposito(double valor){
    saldo+=valor;
  }
  saque(double valor){
    saldo-=valor;
  }
  
}