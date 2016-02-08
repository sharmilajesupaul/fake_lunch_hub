require 'rails_helper'
 
RSpec.describe Group, :type => :model do
  before do
    @group = Group.new(name: "Cool People Group")
  end
 
  subject { @group }
 
  describe "when name is not present" do
    before { @group.name = " " }
    it { should_not be_valid }
  end
end