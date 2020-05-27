describe "Upload", :upload do

    before(:each) do
        @file = Dir.pwd + '/spec/fixtures/file.txt'
        @image = Dir.pwd + '/spec/fixtures/erza.jpg'
        visit "/upload"
    end

    it 'Upload com arquivo de texto' do
        attach_file('file-upload',@file)
        click_button "Upload"
        expect(find("#uploaded-file").text).to eq 'file.txt'
    end

    it 'Upload com arquivo de texto' do
        attach_file('file-upload',@image)
        click_button "Upload"
        sleep 5
        expect(find("#uploaded-file").text).to eq 'erza.jpg'
        img = find ("#new-image")
        expect(img[:src]).to include "erza.jpg"
    end
     
    after(:each) do 
        sleep 2
    end
end