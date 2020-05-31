describe 'iframes' do
    describe 'nice', :nice_iframe do
      before(:each) do
        visit '/nice_iframe'
      end
  
      it 'add to car' do
        within_frame('burgerId') do
          produto = find('.menu-item-info-box', text: 'REFRIGERANTE')
          produto.find('a').click
          expect(find('#cart')).to have_content 'R$ 4,50'
        end
      end
    end
  
    describe 'bad', :bad_iframe do
      before(:each) do
        visit '/bad_iframe'
      end
  
      it 'the car should be empty' do
        script = '$(".box-iframe").attr("id", "tempId");' #attr add the element id "tempId" in the element that has this class
        page.execute_script(script) # native in capybara => exec the script inside the page dentro da página
  
        within_frame('tempId') do
          expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
        end
      end
    end
  end