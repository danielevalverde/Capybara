describe "Caixas de Seleção", :checkbox do

    before(:each) do
        visit "/checkboxes"
    end

    it "marcando um opção" do
        check("thor")
    end

    it "desmarcando um opção" do
        uncheck("antman")
    end

    it "marcando com option true" do
        find('input[value=cap]').set(true)
    end

    it "desmarcando com option false" do
        find('input[value=guardians]').set(false)
    end
    
    after(:each) do 
        sleep 2
    end
end