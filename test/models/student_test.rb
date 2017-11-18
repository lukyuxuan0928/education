require "test_helper"
describe Student do
  # it "should fail" do
  #  assert true == false
  # end

  describe "validity" do
    let(:student) {Student.new}

    before do
      student.valid?
    end

    it "requires a name" do
      student.errors[:name].must_include "can't be blank"
    end
    it "requires a description" do
      student.errors[:description].must_include "can't be blank"
    end
    it "requires a course" do
      student.errors[:course].must_include "can't be blank"
    end
  end
end
