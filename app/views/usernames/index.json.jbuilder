json.array!(@usernames) do |username|
  json.extract! username, :id, :username, :email, :crypted_password, :salt
  json.url username_url(username, format: :json)
end
