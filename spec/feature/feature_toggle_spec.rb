require 'rails_helper'
require 'helpers'

feature 'feature toggling' do
  context 'feature turned on' do
    scenario 'button should appear' do
      feature_switch(true)
      visit '/'
      expect(page).to have_button('Button')
    end
  end
  context 'feature turned off' do
    xscenario 'button should not appear' do
      feature_switch(false)
      visit '/'
      expect(page).to_not have_button('Button')
    end
  end
end
