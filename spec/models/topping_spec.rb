require 'rails_helper'

RSpec.describe Topping, type: :model do
  let(:topping) { build(:topping) }

  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:name) }
end
