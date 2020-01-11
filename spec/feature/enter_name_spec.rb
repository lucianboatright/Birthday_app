
feature 'name form' do
  scenario 'check name equals user input from form' do
    visit '/'
    fill_in :name, with: "David"
    click_button 'Complete'

    expect(page).to have_content "David Happy Birthday"
  end
end