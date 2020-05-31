describe "radio buttoms", :radio do

    before(:each) do
        visit "/radios"
    end

    it 'select by id' do
        choose('cap')
    end

    it 'select by find and css selector' do
        find('input[value=guardians]').click
    end
     
    after(:each) do 
        sleep 2
    end
end