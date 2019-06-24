class SignUpPage < SitePrism::Page
    set_url 'https://www.centauro.com.br/slogin' 
    
    elementos = [ 
        :login_cadastrar, :radio_senha_cadastrar, :cep_cadastrar, :btn_cadastrar, :nome_pf, :sobrenome_pf, :cpf, :data_nascimento, :sexo, :ddd_fixo_pf, :telefone_fixo_pf, :senha_pf, :confirmar_senha_pf, :numero_rua_pf, :btn_cadastrar_pf

    ]

    attr_reader *elementos           

    include Capybara::DSL

    def initialize
        @login_cadastrar        = "input[id='input-type-1']"
        @radio_senha_cadastrar  = "input[id='optNoclient']"
        @cep_cadastrar          = "input[id='input-type-3']"
        @btn_cadastrar          = "input[id='btn_cadastrar']"
        @nome_pf                = "input[id='fisica-nome']"
        @sobrenome_pf           = "input[id='fisica-sobrenome']"
        @cpf                    = "input[id='cpf-nregister']"
        @data_nascimento        = "input[id='date-nregister']"
        @sexo                   = "select[class='select-nregister r6-nregister']"
        @ddd_fixo_pf            = "input[id='fisica-telefone-fixo-ddd']"
        @telefone_fixo_pf       = "input[id='fisica-telefone-fixo']"
        @senha_pf               = "input[id='fisica-senha']"
        @confirmar_senha_pf     = "input[name='confirmacaoSenha']"
        @numero_rua_pf          = "input[name='numero']"
        @numero_rua_pf          = "input[name='numero']"
        @btn_cadastrar_pf       = "button[id='bt-submit-fisica']"
    end
    
    def criar_cadastro
        find(login_cadastrar).set "#{Faker::Name.first_name.downcase}@mailinator.com"
        $login = find(login_cadastrar).value
        find(radio_senha_cadastrar).click();
        "0-5-0-1-5-0-0-0".reverse!.split("-").each do |digito|
        find(cep_cadastrar).set digito
        end
        find(btn_cadastrar).click
    end

    def preencher_cadastro
        find(nome_pf).set Faker::Name.first_name
        find(sobrenome_pf).set Faker::Name.last_name
        Faker::CPF.numeric.reverse!.split("-").each do |digito|
        find(cpf).set digito
        end
        "0-1-1-2-1-9-8-0".reverse!.split("-").each do |digito|
        find(data_nascimento).set digito
        sleep 0.5
        end
        find(sexo).find('option', text: 'Feminino').select_option
        "1-1".reverse!.split("-").each do |digito|
        find(ddd_fixo_pf).set digito
        end
        "3-3-0-1-2-2-4-0".reverse!.split("-").each do |digito|
        find(telefone_fixo_pf).set digito
        end
        find(senha_pf).set "Senha1234"
        $senha = find(senha_pf).value
        find(confirmar_senha_pf).set "Senha1234"
        $senha_confirmada = find(confirmar_senha_pf).value
        "5-0-0".reverse!.split("-").each do |digito|
        find(numero_rua_pf).set digito
        end
        find(btn_cadastrar_pf).click
    end
end