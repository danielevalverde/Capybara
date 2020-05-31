describe 'Dinamic id', :ids_dinamicos do
    before(:each) do
      visit "/access"
    end
  
    # $ => termina com
    # ^ => começa com
    # * => contem
  
    it 'cadastro' do
      find('input[id$=UsernameInput]').set 'Daniele'
      find('input[id^=PasswordInput]').set '123'
      find('a[id*=GetStartedButton]').click
  
      expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
  end