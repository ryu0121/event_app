require 'rails_helper'

RSpec.describe 'Welcomes', type: :system do
  it 'indexに適切な表示がされる', :focus do
    visit root_path
    expect(page).to have_content 'AwesomeEvents'
  end
end