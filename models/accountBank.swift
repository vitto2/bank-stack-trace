class Account {
  let name: String
  let accountNumber: String
  private(set) var balance: Double

  init(name: String) {
    self.name = name
    self.accountNumber = String(Int.random(in: 1000...4000))
    self.balance = 0
  }
 
 func deposit(value: Double) {
    if value > 0 {
      balance += value
      print("✅ Depósito de R$ 500.0 realizado com sucesso.")
    } else { 
      print("Valor inválido. Tente novamente.")
    }
  }

  func statementBank() {
    print("Extrato de \(self.name) (Conta \(self.account)): Saldo Atual: R$ \(self.balance)")
  }

  func withdraw(value: Double) { 
    if self.balance >= value {
      self.balance -= value
      print("✅ Saque de R$ \(value) realizado. Novo saldo: R$ \(self.balance).")
    } else {
      print("Saldo insuficiente para sacar R$ \(value).")
    }
  }
}

