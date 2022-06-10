class Program < ApplicationRecord
    has_many :acadamic_program
    validates :code, :name, presence: true
end
