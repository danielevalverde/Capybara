describe " My first Script" do

    it "visit the page" do
        visit "/"
        expect(page.title).to eq "Training Wheels Protocol"
    end
end