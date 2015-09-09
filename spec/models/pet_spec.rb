require 'rails_helper'

describe Pet do
  subject { described_class.new }

  it 'must have a name' do
    expect(subject.valid?).to be false
    expect(subject).to have(1).errors_on(:name)
  end

  it 'must have a category' do
    expect(subject.valid?).to be false
    expect(subject).to have(1).errors_on(:category)
  end

  it 'must have an owner' do
    expect(subject.valid?).to be false
    expect(subject).to have(1).errors_on(:owner)
  end
end
