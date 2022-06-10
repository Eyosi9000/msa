require 'rails_helper'

RSpec.describe ProgramType, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:code) }
    it { should validate_presence_of(:name) }
  end
end
