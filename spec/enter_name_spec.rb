
feature 'name form' do
  scenario 'check name equals user input from form' do
    visit '/'
    fill_in :name, with: "David"
    click_button 'Enter_name'

    expect(page).to have_content "Happy Birthday David"
  end
end