describe "Mouse Hover", :hovers do

    before(:each) do
        visit "/hovers"
    end

    it "when i pass the mouse under an item" do
        card = find("img[alt=Blade]")
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it "when i pass the mouse under an item with special css selector" do
        card = find("img[alt='Pantera Negra']")
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    
    after(:each) do 
        sleep 2
    end
end