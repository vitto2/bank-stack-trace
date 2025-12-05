# 🏦 Banco StackTrace - Sistema de Gestão Bancária

Este projeto consiste em uma simulação da lógica de backend de um sistema bancário (Core Banking), desenvolvido inteiramente em **Swift**. 

O objetivo principal foi consolidar conhecimentos fundamentais de **Programação Orientada a Objetos (POO)** e **Lógica de Programação**, focando na integridade dos dados e regras de negócio sem a utilização de interfaces gráficas.

## 🎯 Objetivos de Aprendizado

Este projeto foi desenvolvido para demonstrar proficiência nos seguintes conceitos da linguagem Swift:

* **Classes e Objetos:** Modelagem de entidades do mundo real (`ContaBancaria`).
* **Encapsulamento e Controle de Acesso:** Uso de modificadores como `private` e `private(set)` para proteger dados sensíveis (como o saldo) de alterações externas arbitrárias.
* **Métodos e Lógica de Negócio:** Implementação de funções para transações (`sacar`, `depositar`) com validações condicionais (`if/else`, `guard`).
* **Herança e Polimorfismo:** (Caso tenha feito o bônus) Extensão da classe base para criar tipos específicos de contas (ex: `ContaPoupanca`).
* **Interpolação de String:** Formatação de saídas no console para relatórios claros.

## 🛠 Tecnologias Utilizadas

* **Linguagem:** Swift 5+
* **Plataforma:** Xcode (Playground / Command Line Tool)
* **Frameworks:** Foundation (Foco em Swift Standard Library)

## 🚀 Funcionalidades

O sistema garante que as operações bancárias sigam regras estritas:

1.  **Proteção de Saldo:** Não é possível alterar o saldo diretamente (ex: `conta.saldo = 1000` é bloqueado pelo compilador).
2.  **Depósitos:** Validação de valores positivos.
3.  **Saques Seguros:** O sistema verifica se há fundos suficientes antes de efetivar o saque.
4.  **Extrato:** Exibição formatada do estado atual do objeto.

## 💻 Exemplo de Uso

```swift
// Instanciando uma conta
let contaDoCliente = ContaBancaria(titular: "Dev Junior", numero: 1040)

// Tentativa de Depósito
contaDoCliente.depositar(valor: 1000.0)

// Tentativa de Saque com validação
contaDoCliente.sacar(valor: 250.0) // Sucesso: Saldo vai para 750.0
contaDoCliente.sacar(valor: 800.0) // Erro: Saldo Insuficiente

// Visualização
contaDoCliente.verExtrato()
