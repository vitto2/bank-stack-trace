class Account {
  let name: String
  let numbAccount: String
  private(set) balance: Double

  init(name: String) {
    self.name = name
    self.numbAccount = Int.random(in: 1...10)
    self.balance = 0
  }

 
}

