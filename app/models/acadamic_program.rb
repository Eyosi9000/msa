class AcadamicProgram < ApplicationRecord
  belongs_to :program
  belongs_to :program_level
  belongs_to :program_type
  
  validates :program, :program_level, :program_type, :duration, presence: true
  validates :duration, numericality: { only_integer: true, less_than: 8 }
end
