class User
  attr_accessor :email, :age  
  @@all_users = []

  def initialize(email,age)
    @email = email.to_s
    @age = age.to_i
    @@all_users << self
  end

  def self.all
    return @@all_users
  end

  def self.find_by_email(email)
    @@all_users.each {|user| return user if user.email == email}
  end

end