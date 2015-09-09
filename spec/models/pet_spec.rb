require 'rails_helper'

describe Pet do
  it 'must have a name' do
    pet = described_class.new
    expect(pet.name.present?).to be true
  end

  it 'must have a category' do
  end

  it 'must have a age' do
  end
end
