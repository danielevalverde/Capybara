describe "Forms Login", :login3 do

    before(:each) do
        visit "/access"
    end

    it "login with date of birth" do
        #working with scopes
        # has two login forms on this page
        # login_form = find("#login")
        # login_form.find('input[name=username]').set 'stark'
        # login_form.find('input[name=password]').set 'jarvis!'
        # login_form.fill_in 'username' , with: 'stark'
        # login_form.fill_in 'password' , with: 'jarvis!'

        within("#login") do # go search only inside this scope 
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
            expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"
        end

    end

    it "sign up" , :cadastro do
        within("#signup") do # go search only inside this scope 
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
