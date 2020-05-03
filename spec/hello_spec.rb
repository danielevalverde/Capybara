describe " My first Script" do

    it "visit the page" do
        visit "https://training-wheels-protocol.herokuapp.com/"
        expect(page.title).to eq "Training Wheels Protocol"
    end
end