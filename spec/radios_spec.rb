describe "Botões de radios", :radio do

    before(:each) do
        visit "/radios"
    end

    it 'Seleção por id' do
        choose('cap')
    end

    it 'Seleção por find e css selector' do
        find('input[value=guardians]').click
    end
    
     
    after(:each) do 
        sleep 2
    end
end