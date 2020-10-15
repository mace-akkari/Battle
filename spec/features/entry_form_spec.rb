feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    fill_in('Player_1_name', with: 'John')
    fill_in('Player_2_name', with: 'Dave')
    click_button 'Submit'
    expect(page).to have_content 'Hey John and Dave, ready for WAR!!!??'
  end
end
