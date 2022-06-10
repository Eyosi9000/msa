class Application < ApplicationRecord
  belongs_to :applicant
  belongs_to :acadamic_announcement

  validates :status, :payment_made, :applicant, :acadamic_announcement, presence: true
end
