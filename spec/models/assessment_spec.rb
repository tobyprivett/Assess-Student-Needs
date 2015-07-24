require 'spec_helper'

describe Assessment do
  it { should belong_to(:indicator) }
  it { should belong_to(:student) }
  it { should belong_to(:assessor) }

  it 'validates that a student can only have one assessment per lesson'
end
