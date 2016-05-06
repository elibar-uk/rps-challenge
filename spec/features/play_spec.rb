feature "choosing rock, paper or scissors" do
  scenario "if rock" do
    sign_in_and_play
    click_button 'game begins now'
    click_button  "rock"
    expect(page).to have_content "rock"
  end

  scenario "if paper" do
    sign_in_and_play
    click_button 'game begins now'
    click_button "paper"
    expect(page).to have_content "paper"
  end

  scenario "if scissors" do
    sign_in_and_play
    click_button 'game begins now'
    click_button "scissors"
    expect(page).to have_content "scissors"
  end
end
