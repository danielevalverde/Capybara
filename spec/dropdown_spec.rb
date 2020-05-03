describe "caixa de opções" , :dropdown do

    it "item específico simples" do
        visit "/dropdown"
        select("Loki", from: 'dropdown')
        #select ( "opção", from "elemento")
        #funciona pra dropdowns que possuem id
        sleep 3
    end

    it "item específico with find" do
        visit "/dropdown"
        dropdown_list = find('.avenger-list')
        dropdown_list.find('option' , text: "Scott Lang").select_option # vai fazer a busca dentro do elemento retornado 
        sleep 3
    end

    it "find any item" , :sample do 
        visit "/dropdown"
        dropdown_list = find('.avenger-list')
        dropdown_list.all('option').sample.select_option # o method all retorna um array de elementos
        #sample retorna um elemento aleatório dentro do array . Nativo do ruby
        sleep 2
    end
end
