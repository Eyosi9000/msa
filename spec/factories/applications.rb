FactoryBot.define do
  factory :application do
    status { "MyString" }
    payment_made { false }
    applicant { nil }
    acadamic_announcement { nil }
  end
end
