
feature 'name form' do
  scenario 'check name equals user input from form' do
    visit '/'
    fill_in :name, with: "David"
    submit 'Enter_name'

    expcet(page).to have_content "Happybirthday David"
  end
end