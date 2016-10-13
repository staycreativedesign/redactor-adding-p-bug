class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :email
  validates_presence_of :password
  validates_presence_of :access_level
  validates_length_of :password, minimum: 8

  def admin?
    self.access_level == 'admin'
  end
end
