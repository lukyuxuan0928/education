require "test_helper"

describe Leaves do
  describe "validity" do
    let(:leaves) {Leaves.new}

    before do
      leaves.valid?
    end

    it "requires a start date" do
      leaves.errors[:start_date].must_include "can't be blank"
    end

    it "require a end date" do
      leaves.errors[:end_date].must_include "can't be blank"
    end

    it "require a student" do
      leaves.errors[:student].must_include "can't be blank"
    end
  end
end

describe "generating a weekly leave"do
  let(:leaves) { build(:leaves)}  
end
