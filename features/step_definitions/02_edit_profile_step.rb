Dado("que eu esteja logado na página de cadastro") do
    @edit.load
    @edit.login_pf
end

Quando("editar senha cadastrada com dados válidos") do
    @edit.alterar_senha
end

Então("o sistema deve alterar a senha da conta PF com sucesso") do
    assert_text("Conheça as vantangens de ser um cliente Centauro :")
end