require 'spec_helper'
require 'rails_helper'

feature "new video" do
  scenario 'video created with name and url' do
    visit videos_path
    Video.create(name: "asdf", url: "pVsGODYj7HI")

    expect(page).to have_content("asdf")
    expect(page).to have_content("https://www.youtube.com/embed/pVsGODYj7HI")
  end
end
