class User < ActiveRecord::Base
  has_many :items

  def self.create_new_user(details)
    create! do |user|
      user.provider = details["provider"]
      user.oauth_uid = details["uid"]
      user.first_name = details["info"]["first_name"]
      user.last_name = details["info"]["last_name"]
      user.email = details["info"]["email"]
    end
    
  end
end