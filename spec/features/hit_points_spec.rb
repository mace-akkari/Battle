feature "Check Player 2's hit points" do 
  scenario 'Check Player 2 hit points' do
    visit('/')
    fill_in('Player_1_name', with: 'John')
    fill_in('Player_2_name', with: 'Dave')
    click_button 'Submit'
    expect(page).to have_content 'Dave has 100 hit points'
  end
end