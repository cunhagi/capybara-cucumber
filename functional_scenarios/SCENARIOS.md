Funcionalidade: Login no sistema lendico

Eu como usuário já cadastrado no sistema lendico
Quero me autenticar no sistema
Para acessar minha conta

Cenário: verificar layout da tela de login
Quando exibir a tela de login
Então o sistema deve exibir os place holders dos campos
E deve exibir o link mostrar
E deve exibir o link esqueceu a senha
E deve exibir o botão entrar

Cenário: login com todos os dados válidos
Dado que estou na tela de login
E inserir todos os campos com dados válidos
Quando selecionar o botão entrar
Então o sistema deve exibir minha conta

Cenário: login com todos os dados inválidos
Dado que estou na tela de login
E inserir todos os campos com dados inválidos
Quando selecionar o botão entrar
Então o sistema deve exibir mensagem de erro

Cenário: login com campos em branco
Dado que estou na tela de login
E não inserir nenhum campo
Quando selecionar o botão entrar
Então o sistema deve exibir mensagem de erro

Cenário: login com CPF inválido
Dado que estou na tela de login
E inserir CPF inválido
E inserir senha válida 
Quando selecionar o botão entrar
Então o sistema deve exibir mensagem de erro

Cenário: login com email inválido
Dado que estou na tela de login
E inserir email inválido
E inserir senha válida 
Quando selecionar o botão entrar
Então o sistema deve exibir mensagem de erro

Cenário: login com CPF válido e senha inválida
Dado que estou na tela de login
E inserir CPF válido
E inserir senha inválida 
Quando selecionar o botão entrar
Então o sistema deve exibir mensagem de erro

Cenário: login com email válido e senha inválida
Dado que estou na tela de login
E inserir email válido
E inserir senha inválida 
Quando selecionar o botão entrar
Então o sistema deve exibir mensagem de erro

Cenário: exibição de senha inserida
Dado que estou na tela de login
E inserir senha
Quando selecionar o link mostrar senha
Então o sistema deve exibir os caracteres da senha visível

Cenário: exibição de senha não inserida
Dado que estou na tela de login
E não inserir senha
Quando selecionar o link mostrar senha
Então o sistema deve continuar exibindo o place holder senha de acesso

Cenário - Recuperação de senha
Dado que estou na tela de login
Quando selecionar o link de esqueceu a senha
Então o sistema deve redirecionar para a página de recuperação de senha