describe 'iframes' do
    describe 'bom', :nice_iframe do
      before(:each) do
        visit '/nice_iframe'
      end
  
      it 'adicionar ao carrinho' do
        within_frame('burgerId') do
          produto = find('.menu-item-info-box', text: 'REFRIGERANTE')
          produto.find('a').click
          expect(find('#cart')).to have_content 'R$ 4,50'
        end
      end
    end
  
    describe 'ruim', :bad_iframe do
      before(:each) do
        visit '/bad_iframe'
      end
  
      it 'carrinho deve estar vazio' do
        script = '$(".box-iframe").attr("id", "tempId");' #attr adicionar o elemento id "tempId" na no elemento que possui essa classe
        page.execute_script(script) # nativo no capybara => executa o script dentro da página
  
        within_frame('tempId') do
          expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
        end
      end
    end
  end