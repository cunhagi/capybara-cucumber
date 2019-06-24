Dado("que eu esteja na página de cadastro") do
     @cadastro.load
end

Quando("preencher cadastro PF com dados válidos") do
     @cadastro.criar_cadastro
     @cadastro.preencher_cadastro
end

Então("o sistema deve cadastrar PF com sucesso") do
     assert_text("Olá")
end