class User < ActiveRecord::Base
  has_secure_password
  validates :username, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  validates_presence_of :password, :on => :create
  
  
  def name    
    return read_attribute(:username) if read_attribute(:name).nil?
    return read_attribute(:name)
  end
end
