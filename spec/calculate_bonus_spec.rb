require_relative '../calculate_bonus'
RSpec.describe "#calculate_bonus" do
  it "returns 0 if days_worked is less than or equal to 0" do
    expect(calculate_bonus(0)).to eq(0)
    expect(calculate_bonus(-10)).to eq(0)
  end
  it "returns 0 if days_worked is less than or equal to 32" do
    expect(calculate_bonus(10)).to eq(0)
    expect(calculate_bonus(32)).to eq(0)
  end
  it "calculates the bonus correctly for days_worked between 32 and 40" do
    expect(calculate_bonus(35)).to eq(36)
    expect(calculate_bonus(40)).to eq(96)
  end
  it "calculates the bonus correctly for days_worked between 40 and 48" do
    expect(calculate_bonus(45)).to eq(411)
    expect(calculate_bonus(48)).to eq( 456)
  end
  it "calculates the bonus correctly for days_worked greater than 48" do
    expect(calculate_bonus(60)).to eq(876)
    expect(calculate_bonus(100)).to eq(1676)
  end
end
