feature 'add diary entry' do
  scenario 'add diary entry and title and see it appear in the diary entry list' do
    visit('/add_entry')
    fill_in('title', with: 'Test title')
    fill_in('entry', with: 'Test entry')
    click_on('Submit')
    expect(page).to have_content('Test title')
    expect(page).to have_content('Test entry')
  end
end
