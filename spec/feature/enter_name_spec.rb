
feature 'name form' do
  scenario 'check name equals user input from form' do
    visit '/'
    fill_in :name, with: "David"
    fill_in :day, with: "1"
    # fill_in('Username', with: username)
    select('February', from: 'month')
    click_button 'Submit'

    expect(page).to have_content "David"
  end
end

