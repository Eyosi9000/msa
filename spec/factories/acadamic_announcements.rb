FactoryBot.define do
  factory :acadamic_announcement do
    start_date { FFaker::Time.date }
    end_date { FFaker::Time.date }
    status { "open" }
    acadamic_program { nil }
    acadamic_year { nil }
  end
end
