feature 'homepage links' do
  scenario 'click link to get to add entry page' do
    visit('/')
    click_on('Add entry')
    expect(page).to have_content('Add new diary entry')
  end
end
