json.extract! acadamic_announcement, :id, :start_date, :end_date, :status, :acadamic_program_id, :acadamic_year_id, :created_at, :updated_at
json.url acadamic_announcement_url(acadamic_announcement, format: :json)
