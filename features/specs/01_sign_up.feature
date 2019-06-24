#language: pt

    Funcionalidade: Criar conta nova
    Eu como usuário
    Quero acessar o cadastro
    Para criar uma conta nova

    Contexto: Acessar página de cadastro
    Dado que eu esteja na página de cadastro 
        
    @cadastroValidoPF
    Cenário: Cadastro PF com campos obrigatórios válidos
    Quando preencher cadastro PF com dados válidos
    Então o sistema deve cadastrar PF com sucesso
