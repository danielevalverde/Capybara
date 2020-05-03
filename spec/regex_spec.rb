describe "Regex", :regex do

    before(:each) do
        visit "https://training-wheels-protocol.herokuapp.com/hovers"
    end

    it "begin with content" do
        card = find("img[alt*=Blade]") #contain
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it "contains a specific content" do
        card = find("img[alt^=Pantera]") #start with
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it "end with a specific content" do
        card = find("img[alt$=Aranha]") #end with
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

 
    after(:each) do 
        sleep 2
    end
end