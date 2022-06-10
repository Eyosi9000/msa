class AcadamicAnnouncement < ApplicationRecord
  belongs_to :acadamic_program
  belongs_to :acadamic_year

  STATUS = ['open', 'closed']

  validates :start_date, :end_date, :status, :acadamic_program, :acadamic_year, presence: true
  validates :status, inclusion: { in: STATUS }
end
