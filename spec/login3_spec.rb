describe "Forms Login", :login3 do

    before(:each) do
        visit "https://training-wheels-protocol.herokuapp.com/access"

    end

    it "login com data de nascimento" do
        #trabalhando com escopos 
        #temos dois forms nessa página, um de login e um de cadastro e os campos possuem id's dinamicos e mesmos names
        # login_form = find("#login")

        # login_form.find('input[name=username]').set 'stark'
        # login_form.find('input[name=password]').set 'jarvis!'

        # login_form.fill_in 'username' , with: 'stark'
        # login_form.fill_in 'password' , with: 'jarvis!'

        within("#login") do # vai fazer a busca somente dentro desse escopo
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
            expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"
        end

    end

    it "cadastro" , :cadastro do
        within("#signup") do # vai fazer a busca somente dentro desse escopo
            find('input[name=username]').set 'starkinho'
            find('input[name=password]').set 'jarvis!'
            click_link 'Criar Conta'
        end
        expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
    end


    after(:each) do 
        sleep 2
    end

end
