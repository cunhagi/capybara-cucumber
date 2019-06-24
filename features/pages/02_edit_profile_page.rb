class EditProfilePage < SitePrism::Page
    set_url 'https://www.centauro.com.br/minha-conta/cadastro' 

    elementos = [ 
        :login_cadastrado, :radio_senha_cadastrada, :senha_pf_cadastrada, :btn_entrar, :senha_pf_atual, :nova_senha_pf, :confirmar_nova_senha_pf, :btn_confirmar_cadastro_pf

    ]

    attr_reader *elementos           

    include Capybara::DSL

    def initialize
        @login_cadastrado           = "input[id='input-type-1']"
        @radio_senha_cadastrada     = "input[id='optYesclient']"
        @senha_pf_cadastrada        = "input[id='input-type-4']"
        @btn_entrar                 = "input[id='btn_Entrar']"
        @senha_pf_atual             = "input[id='fisica-senha']"
        @nova_senha_pf              = "input[id='nova-senha-fisica']"
        @confirmar_nova_senha_pf    = "input[id='confirmar-nova-senha-fisica']"
        @btn_confirmar_cadastro_pf  = "div[class='form-row control']"
    end
    
    def login_pf
        find(login_cadastrado).set $login
        find(radio_senha_cadastrada).click();
        find(senha_pf_cadastrada).set $senha
        find(btn_entrar).click
    end

    def alterar_senha
        find(senha_pf_atual).set $senha
        find(nova_senha_pf).set "Senha1111"
        $senha = find(nova_senha_pf).value
        find(confirmar_nova_senha_pf).set $senha
        find(btn_confirmar_cadastro_pf).click
    end
end