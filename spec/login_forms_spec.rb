describe "Forms" do
    it "login com sucesso" do
        visit "/login"

        fill_in 'userId' , with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'
       find('#flash').visible?

       expect(find('#flash').visible?).to be true

       expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"

       expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!" #nativo do capybara
       
    end
end
