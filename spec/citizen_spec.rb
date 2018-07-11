require_relative "../citizen"

describe Citizen do
  describe "#can_vote?" do
    it "returns true if age >= 18" do
      citizen = Citizen.new("", "", 18)
      expect(citizen.can_vote?).to eq(true)
    end
    it "returns false if age < 18" do
      citizen = Citizen.new("", "", 16)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do
    it "returns full name" do
      citizen = Citizen.new("CALEB", "finley", 28)
      expect(citizen.full_name).to eq("Caleb Finley")
    end
  end
end
