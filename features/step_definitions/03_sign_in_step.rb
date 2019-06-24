Dado("que eu esteja na página de login") do
    @entrar.load
end

Quando("preencher login PF com dados válidos") do
    @entrar.login_pf
end

Então("o sistema deve logar PF com sucesso") do
    assert_text("Olá")
end