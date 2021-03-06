require 'line'

RSpec.describe Line, "#Line represents a horizontal line" do
  it "One block and 5 width can output it's state" do
    line = Line.new([1],5)
    expect(line.output_text).to eq "x0000"
  end

  it "Set more than one grouping on a line" do
    line = Line.new([1,2],5)
    expect(line.output_text). to eq "x0xx0"
  end
end
