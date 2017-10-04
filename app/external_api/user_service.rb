
class UserService
  include HTTParty
  default_timeout 5

  def self.authorize(user_id,authentication_token)
    response = HTTParty.get("http://localhost:3000/user/validate_authenticity" + "?user_id = #{user_id}&authentication_token=#{authentication_token}")
    if response.success?
      return JSON(response.body)
    else
      return false
    end
  end
end