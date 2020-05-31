describe "Select2", :select2 do
    describe("Single", :single) do
        before(:each) do
            visit "/apps/select2/single.html"
        end

        it 'select the actor by name' do
            find('.select2-selection--single').click
            sleep 1
            find('.select2-results__option', text:'Adam Sandler').click
        end

        it 'select the actor by search' do
            find('.select2-selection--single').click
            sleep 1
            find('.select2-search__field').set 'Chris Rock'
            sleep 1
            find('.select2-results__option').click
        end
     
        after(:each) do 
            sleep 2
        end
    end

    describe("Multiple", :multiple) do
        before(:each) do
            visit "/apps/select2/multi.html"
        end

        def select_actor(actor)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set actor
            find('.select2-results__option').click
        end

        it "select actores" do 
            # select_actor('Jim Carrey')
            actores = ['Jim Carrey', 'Owen Wilson' , 'Adam Sandler'   ]

            actores.each do |a|
                select_actor(a)
            end
        end
    
        after(:each) do 
            sleep 2
        end
    end
end