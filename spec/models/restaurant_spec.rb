require 'rails_helper'

describe Restaurant do
  describe "#validations" do
    subject { described_class.new(name: 'Restaurant') }

    it 'should show error message' do
      subject.valid? eq false
      subject.errors.messages[:url].first == "Url can't be blank"
    end
  end
end
