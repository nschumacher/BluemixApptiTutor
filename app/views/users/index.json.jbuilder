json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :email, :isTutor, :recieveReminders, :profilePicture, :passwordRecoverQuestion1, :passwordRecoverQuestion2, :passwordRecoverAnswer1, :passwordRecoverAnswer2, :isStudent, :aboutMe
  json.url user_url(user, format: :json)
end
