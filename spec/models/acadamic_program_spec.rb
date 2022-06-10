require 'rails_helper'

RSpec.describe AcadamicProgram, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:program) }
    it { should validate_presence_of(:program_level) }
    it { should validate_presence_of(:program_type) }
    it { should validate_presence_of(:duration) }
  end
end
