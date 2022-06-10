require 'rails_helper'

RSpec.describe AcadamicYear, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:year) }
  end
end
