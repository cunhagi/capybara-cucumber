#language: pt

    Funcionalidade: Logar na conta
    Eu como usuário
    Quero inserir meus dados
    Para acessar minha conta existente

    Contexto: Acessar página de login
    Dado que eu esteja na página de login
       
    @LoginValidoPF
    Cenário: Login PF de conta válida
    Quando preencher login PF com dados válidos
    Então o sistema deve logar PF com sucesso