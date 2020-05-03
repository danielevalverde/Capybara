describe "Key", :key do

    before(:each) do
        visit "https://training-wheels-protocol.herokuapp.com/key_presses"
    end

    it 'sending keys' do
        teclas = %i[tab escape space enter shift control alt] #array de symbolls

        teclas.each do |t|
            find("#campo-id").send_keys t
            expect(page).to have_content t.to_s.upcase
        end
    end

    it 'sending keys' do
        letras = %w[ a s d f g h j k l] #array de strings

        letras.each do |l|
            find("#campo-id").send_keys l
            expect(page).to have_content l.upcase
            sleep 1
        end
    end
    
     
    after(:each) do 
        sleep 2
    end
end