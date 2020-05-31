describe "options box" , :dropdown do

    it "simple specif item" do
        visit "/dropdown"
        select("Loki", from: 'dropdown')
        #select ( "opção", from "elemento")
        #just work to dropdowns that have id
        sleep 3
    end

    it "simple specif item with find" do
        visit "/dropdown"
        dropdown_list = find('.avenger-list')
        dropdown_list.find('option' , text: "Scott Lang").select_option # go search inside the returned element  
        sleep 3
    end

    it "find any item" , :sample do 
        visit "/dropdown"
        dropdown_list = find('.avenger-list')
        dropdown_list.all('option').sample.select_option # the method all returns an array 
        #sample returns an random element from array. native method ruby 
        sleep 2
    end
end
