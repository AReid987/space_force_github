class User < ApplicationRecord

  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_initialize.tap do |user|
      user.name = auth.info.name
      user.email = auth.info.email
      user.image = auth.info.image
      user.save
    end
  end

end
