class SignInPage < SitePrism::Page
    set_url 'https://www.centauro.com.br/slogin' 

    elementos = [ 
        :login_cadastrado, :radio_senha_cadastrada, :senha_pf_cadastrada, :btn_entrar

    ]

    attr_reader *elementos           

    include Capybara::DSL

    def initialize
        @login_cadastrado           = "input[id='input-type-1']"
        @radio_senha_cadastrada     = "input[id='optYesclient']"
        @senha_pf_cadastrada        = "input[id='input-type-4']"
        @btn_entrar                 = "input[id='btn_Entrar']"
    end
    
    def login_pf
        find(login_cadastrado).set $login
        find(radio_senha_cadastrada).click();
        find(senha_pf_cadastrada).set $senha
        find(btn_entrar).click
    end
end