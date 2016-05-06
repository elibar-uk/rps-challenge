feature "returns the right result" do
  scenario "returns looser if computer wins" do
  sign_in_and_play
  visit('/move')
  allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
  click_button("rock")
  expect(page).to have_content :looser
  end
  scenario "returns winner if computer looses" do
    sign_in_and_play
    visit('/move')
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    click_button("scissors")
    expect(page).to have_content :winner
  end
  scenario "returns draw is the choices are equal" do
    sign_in_and_play
    visit('/move')
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    click_button("paper")
    expect(page).to have_content :draw
  end
end
