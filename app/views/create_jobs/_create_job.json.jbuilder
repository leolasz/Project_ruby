json.extract! create_job, :id, :name, :position, :annual_salary, :contract_time, :created_at, :updated_at
json.url create_job_url(create_job, format: :json)
