#language: pt

# Funcionalidede: Cadastro de Usuário - Checkout
# Como cliente da EBAC-SHOP
# Quero concluir meu cadastro
# Para finalizar minha compra

Funcionalidade: Cadastro de Usuário

  Contexto:
    Dado que eu estou na tela de cadastro da EBAC-SHOP*

  Cenário: Cadastro bem-sucedido com dados válidos
    Quando preencher os campos obrigatórios corretamente
      | Nome Completo | <nome_completo>       |
      | E-mail        | <email>               |
      | Telefone      | <telefone>            |
      | Endereço      | <endereco>            |
      | CEP           | <cep>                 |
    E confirmar os termos
    E clicar em "Cadastrar"
    Então deve me mostra "Cadastro realizado com sucesso"

    Examplos:
      | nome_completo   | email                | telefone      | endereco          | cep       |
      | Valdir Félix      | valdir.felix@exemplo.com | 81977777777  | Rua Exemplo, 13  | 75100000  |
      | Izabella Uchôa  | izabella@exemplo.com      | 81988888888  | Av. Exemplo, 27  | 190000000 |

  Cenário: Cadastro com e-mail inválido
    Quando eu preencher todos os campos obrigatórios
    E insirir um e-mail com formato inválido "valdir.felix@exemplo"
    E clicar em "Cadastrar"
    Então deve aparecer "E-mail inválido"

  Cenário: Cadastro com campos obrigatórios vazios
    Quando eu deixo os campos obrigatórios em branco
    E clico em "Cadastrar"
    Então deve apareser "Campos obrigatórios não preenchidos ou complete os dados"

