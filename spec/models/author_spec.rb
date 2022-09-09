require 'rails_helper'

RSpec.describe Author, type: :model do
  subject { build(:author) }

  it 'is valid' do
    is_expected.to be_valid
  end
end
