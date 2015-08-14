require 'spec_helper'

describe Lesson do
  it { should belong_to(:group) }
  it { should belong_to(:teacher) }
  it { should belong_to(:subject) }
  it { should validate_presence_of(:lesson_date) }
  it { should validate_presence_of(:group_id) }
  it { should validate_presence_of(:subject_id) }
  it { should have_many(:objectives) }
  it { should have_many(:indicators) }
  it { should delegate_method(:students).to(:group) }
  it { should respond_to(:subject_id) }

  let(:lesson) { Fabricate(:lesson)}

  describe '#assessed_at' do
    it do
      expect(lesson).to receive(:lesson_date).once
      lesson.assessed_at
    end
  end

  describe '#assessed_by' do
    it do
      expect(lesson).to receive(:teacher).once
      lesson.assessed_by
    end
  end
end
