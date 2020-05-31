describe "Caixas de Seleção", :checkbox do

    before(:each) do
        visit "/checkboxes"
    end

    it "checking an option" do
        check("thor")
    end

    it "unchecking an option" do
        uncheck("antman")
    end

    it "checking an option as true" do
        find('input[value=cap]').set(true)
    end

    it "checking an option as false" do
        find('input[value=guardians]').set(false)
    end
    
    after(:each) do 
        sleep 2
    end
end