require 'jwt'

class User < ActiveRecord::Base
  has_secure_password

  validates :phone_number, presence: true, uniqueness: true, format: { with: /\A\+52\d{9,15}\z/ }

  def generate_token
    payload = { user_id: id }
    token = JWT.encode payload, nil, 'none'
    token
  end
end
