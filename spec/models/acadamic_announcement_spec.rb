require 'rails_helper'

RSpec.describe AcadamicAnnouncement, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:status) }
    it { should validate_presence_of(:acadamic_program)}
    it { should validate_presence_of(:acadamic_year)}
    it { should validate_inclusion_of(:status).in_array(['open', 'closed'])}

  end
end
