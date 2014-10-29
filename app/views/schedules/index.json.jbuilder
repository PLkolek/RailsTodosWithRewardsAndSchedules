json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :from, :to, :day_of_week
  json.url schedule_url(schedule, format: :json)
end
