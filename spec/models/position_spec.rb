require 'rails_helper'

RSpec.describe Position, type: :model do
  subject { build(:position) }

  it 'is valid' do
    is_expected.to be_valid
  end
end
