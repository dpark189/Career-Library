require 'rails_helper'

describe Career do
  it { should have_valid(:name).when('a name') }

  it { should_not have_valid(:name).when(nil, '') }

end

RSpec.describe Career, type: :model do
  let(:user){ FactoryGirl.build(:user) }
  let(:career) { Career.new(name: "Job") }

  it 'has a name' do
    expect(career.name).to include("Job")
  end
end
