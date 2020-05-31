describe 'Tabelas', :tabs, :smoke do
    before(:each) do
      visit 'http://training-wheels-protocol.herokuapp.com/tables'
    end
  
    it 'should show the salary of Stark' do
      atores = all('table tbody tr')
      stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr') }
  
      expect(stark.text).to include '10.000.000'
    end
  
    it 'should show the salary of Vin diesel' do
      diesel = find('table tbody tr', text: '@vindiesel')
      expect(diesel).to have_content '10.000.000'
    end
  
    it 'should show the salary movie: Fast & Furious' do
      diesel = find('table tbody tr', text: '@vindiesel')
      movie = diesel.all('td')[2].text # td = data table
  
      expect(movie).to eql 'Fast & Furious'
    end
  
    it 'should show the instagram of: Chris Evans' do
      evans = find('table tbody tr', text: 'Chris Evans')
      insta = evans.all('td')[4].text
  
      expect(insta).to eql '@teamcevans'
    end
  
    it 'should select Chris Prat to remove' do
      prat = find('table tbody tr', text: 'Chris Prat')
      prat.find('a', text: 'delete').click
  
      msg = page.driver.browser.switch_to.alert.text
      expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
  
      page.driver.browser.switch_to.alert.accept
    end
  
    it 'should select Chris Prat to edit' do
      prat = find('table tbody tr', text: 'Chris Prat')
      prat.find('a', text: 'edit').click
  
      msg = page.driver.browser.switch_to.alert.text
      expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
  
      page.driver.browser.switch_to.alert.accept
    end
  end