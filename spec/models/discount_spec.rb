require 'rails_helper'

RSpec.describe Discount do
  describe 'Relationships' do
    it {should belong_to :merchant}
  end
  describe 'Validations' do
    it do
      should validate_numericality_of(:percent_off).
      is_less_than_or_equal_to(100)
    end
    it do
      should validate_numericality_of(:min_quantity).
      is_greater_than(0)
    end
    it {should validate_presence_of :name}
  end
end
