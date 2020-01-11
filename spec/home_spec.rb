

feature 'Home page' do
  scenario 'check home page for text' do
    visit '/'
    expect(page).to have_content "Surfs up"
  end
end


