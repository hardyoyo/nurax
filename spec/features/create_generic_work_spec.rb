# Generated via
#  `rails generate hyrax:work GenericWork`
require 'rails_helper'

# NOTE: If you generated more than one work, you have to set "js: true"
RSpec.feature 'Create a GenericWork', :clean, js: true do
  context 'a logged in user' do
    let(:user) { FactoryGirl.create(:user) }

    before do
      AdminSet.find_or_create_default_admin_set_id
      login_as user
    end

    scenario do
      visit '/dashboard'
      click_link "Works"
      click_link "Add new work"

      # If you generate more than one work uncomment these lines
      choose "payload_concern", option: "GenericWork"
      click_button "Create work"
    end
  end
end
