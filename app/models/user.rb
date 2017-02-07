class User < ActiveRecord::Base
  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false},
  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  validates :password,
  length: { in: 8..72 },
  on: :create

  has_secure_password

  def self.authenticate(params)
    User.find_by_email(params[:email]).try(:authenticate, params[:password])
  end
end
