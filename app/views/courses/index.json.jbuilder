json.array!(@courses) do |course|
  json.extract! course, :id, :subject, :course_Num
  json.url course_url(course, format: :json)
end
