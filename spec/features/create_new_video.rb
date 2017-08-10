require 'rails_helper'

feature 'user fills out new video form' do
  scenario 'user fills in information' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    visit new_career_video_path

    fill_in "Title", with: "a title"
    fill_in "Youtube video id 'youtu.be/****'", with: "pVsGODYj7HI"

    click_button "Submit"
    expect(page).to have_content("Video was successfully added")
  end
end
