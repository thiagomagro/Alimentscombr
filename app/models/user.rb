class User < ActiveRecord::Base
  has_secure_password
  validates :username, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  validates_presence_of :password, :on => :create
  
  
  def name
    if read_attribute(:name).nil? || read_attribute(:name).empty?
      read_attribute(:username)
    else
      read_attribute(:name)
    end
  end
end
