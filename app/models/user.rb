require "digest/sha2"

class User < ActiveRecord::Base
  attr_accessor :password
  
  validates_confirmation_of :password
  
  before_create :create_password
  
  def self.authenticate(email, password)
    user = User.find_by_email(email)
    user if user and user.password_hash == user.generate_hash(password)
  end

  def generate_hash(password)
    Digest::SHA2.hexdigest(password + self.password_salt)
  end  

  private 
  def create_password
    self.password_salt = ActiveSupport::SecureRandom.base64(10)
    self.password_hash = generate_hash(self.password)
  end
  
end
