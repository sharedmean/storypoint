require 'rails_helper'

RSpec.describe Book, type: :model do
  subject { build(:book) }

  it 'is valid' do
    is_expected.to be_valid
  end
end
