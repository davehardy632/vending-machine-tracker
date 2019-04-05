require 'rails_helper'

RSpec.describe Snack, type: :model do
  describe 'validations' do
    it { should_validate_presence_of :name }
    it { should_validate_presence_of :price}
  end
  describe 'Relationships' do
    it { should have_many :snack_machines }
    it { should have_many(:machines).through(:snack_machines)}


  end
end
