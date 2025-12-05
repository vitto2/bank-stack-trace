class Account {
  let name: String
  let numbAccount: String
  private(set) var balance: Double

  init(name: String) {
    self.name = name
    self.numbAccount = String(Int.random(in: 1000...4000))
    self.balance = 0
  }
 
 func deposit(value: Double) {
    if(value > 0) {
      balance+=value
    } else { 
      print("Valor inválido. Tente novamente.")
    }
  }

  func dataClient() {
    print("Name: \(self.name)\nNumber account: \(self.numbAccount)\nBalance: \(self.balance)")
  }
}

