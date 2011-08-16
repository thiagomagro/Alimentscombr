# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

profiles = Profile.all
if profiles.nil? or profiles.empty?
  p = Profile.new
  p.name="administrator"
  p.save
  
  p = Profile.new
  p.name="user"
  p.save
  
end

users = User.all
if users.nil? || users.empty?
  user = User.new
  user.name = "Thiago Magro"
  user.email = "thiago.magro@gmail.com"
  user.password = "123"
  #user.login = "tmagro"
  user.save 
end