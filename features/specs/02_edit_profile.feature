#language: pt

    Funcionalidade: Editar conta
    Eu como usuário
    Quero acessar conta
    Para editar meus dados no sistema

    Contexto: Acessar página de cadastro
    Dado que eu esteja logado na página de cadastro
       
    @editarSenhaPFValida
    Cenário: Editar senha de conta PF com dados válidos
    Quando editar senha cadastrada com dados válidos
    Então o sistema deve alterar a senha da conta PF com sucesso