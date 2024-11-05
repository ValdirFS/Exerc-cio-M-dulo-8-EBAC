#language: pt

Funcionalidade: Configuração do Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Configuração do produto com campos obrigatórios
Dado que estando eu na página de configuração do produto
Quando eu selecionar uma cor
E selecionar um tamanho
E escolher a quantidade
Então todos os campos obrigatórios devem estar preenchidos 

Cenário: Escolher quantidade dos produtos
Dado que estou na página de configuração do produto
Quando eu selecionar a cor <Cor>
E selecionar o tamanho <Tamanho>
E escolher a quantidade <Quantidade>
Então o produto deve ser adicionado ao carrinho 

Examples:
| Cor      | Tamanho | Quantidade |
| Vermelho | P       | 1          |
| Azul     | M       | 3          |
| Verde    | G       | 10         |

Cenário: Limpar as configurações do produto
Dado que estou na página de configuração do produto
Quando eu seleciono uma cor
E eu selecionar um tamanho
E escolher a quantidade
E clicar no botão "limpar"
Enão as opções devem voltar ao estado original

Explicação dos Cenários:
Cenário 1: Verifica que as seleções de cor, tamanho e quantidade são obrigatórias.
Cenário 2: Define o limite de produtos por venda, onde utilizei o Esquema do Cenário com a tabela de exemplos para testar várias combinações de cor, tamanho e quantidade.
Cenário 3: Verifica se o botão “limpar” e retorna as configurações para o estado original.
