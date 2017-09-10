require 'rails_helper'

xdescribe Video do
  it { should have_valid(:name).when('a name') }
  it { should have_valid(:embbed_code).when('embed code') }
end

RSpec.describe Video, type: :model do
  xcontext 'make a new video' do
    let(:user){ FactoryGirl.build(:user) }
    let(:video){ FactoryGirl.build(:video) }
    let(:career){ FactoryGirl.build(:career) }

    it 'has a name, video code and career id' do
      expect(video.name).to include("sample video")
      expect(video.embbed_code).to include("pVsGODYj7HI")

      expect(career[video.career_id]).to include("1")
    end
  end
end
