require "rails_helper"

RSpec.describe Message, type: :model do
  context "#Relationships" do
    it { is_expected.to belong_to(:participant) }
  end
end
