require 'rails_helper'

describe Review do
  describe "#validations" do
    subject { described_class.new(title: 'First review') }

    it 'should show error message' do
      subject.valid? eq false
      subject.errors.messages[:comment].first == "Comment can't be blank"
      subject.errors.messages[:review].first == "Review can't be blank"
    end
  end
end
