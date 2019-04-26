feature 'add diary entry' do
  scenario 'add diary entry and see it appear in the diary entry list' do
    visit('/add_entry')
    fill_in('entry', with: 'Test entry')
    click_on('Submit')
    expect(page).to have_content('Test entry')
  end
end
