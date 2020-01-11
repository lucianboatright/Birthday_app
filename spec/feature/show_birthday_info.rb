

feature 'birthday info' do
  scenario 'check that info from form is added to page' do
    visit '/'
    fill_in ('name', with: "David")
    fill_in ('date', with: '31')
    select('January', from: 'month')
    click_button 'Complete'
    expect(page).to have_content "Dave 31 January"
  end
end






    # fill_in :name with: "David"
    # fill_in :date, with: '31'
    # select(:month, from: 'January')