describe "Js Alerts", :alerts do

    before(:each) do
        visit "/javascript_alerts"
    end

    it 'alert' do
        click_button 'Alerta'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep 1
        page.driver.browser.switch_to.alert.accept #dismiss to not accept
    end

    it "accept prompt", :accept do
        accept_prompt(with: 'Daniele') do 
            click_button 'Prompt'
            sleep 1
        end
        expect(page).to have_content "Olá, Daniele"
    end

    it "dismiss prompt", :dismiss do
        dismiss_prompt(with: 'Daniele') do 
            click_button 'Prompt'
            sleep 1
        end
        expect(page).to have_content "Olá, null"
    end
     
    after(:each) do 
        sleep 2
    end
end