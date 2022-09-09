require 'rails_helper'

RSpec.describe Genre, type: :model do
  subject { build(:genre) }

  it 'is valid' do
    is_expected.to be_valid
  end
end
