#language: pt

Funcionalidade: Fazer Login na Platafarma
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma  
Para visualizar meus pedidos

Cenário: Login bem sucedido
Dado que o cliente está na página de login da plataforma EBAC-SHOP
Quando o cliente insere "usuario_valido" no campo de usuário
E o ele insere "senha_valida" no campo  senha
E clica no botão "Entrar"
Então o cliente é direcionado para a tela de checkout

Cenário: Login com dados inválidos
Dado que o cliente está na página de login da plataforma EBAC-SHOP
Quando o cliente insere "usuario_invalido" no campo usuário
E o ele insere "senha_invalida" no campo senha
E clica no botão "Entrar"
Então o sistema exibe uma mensagem de alerta "Usuário ou senha inválidos"

Explicação
Dado define o estado inicial (estando, o cliente na página de login).
Quando descreve as ações realizadas (inserir dados e clicar em "Entrar").
Então define o resultado esperado (ser direcionado para a tela de checkout ou exibir a mensagem de erro).