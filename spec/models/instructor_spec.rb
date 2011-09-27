require 'spec_helper'

describe Instructor do
  describe ".invoice" do

    context "when the instructor has not taught any course" do
      before do
        subject.stub_chain(:classrooms, :where).
          with("finish_at <= ?", Date.today - 30.days).and_return []
        subject.hourly = 35
      end
      its(:invoice){ should be_zero }
    end

    context "when the instructor has taught a course one month later" do
      before do 
        classroom = mock_model(Classroom, :course => mock_model(Course, :workload => 20))
        subject.stub_chain(:classrooms, :where).
          with("finish_at <= ?", Date.today - 30.days).and_return [classroom]
        subject.hourly = 35
      end
      its(:invoice){should be_== 700}
    end

  end
end
