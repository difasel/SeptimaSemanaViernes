class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :rounds
  validates :user_name, presence: true, uniqueness: true
  validates :mail, presence: true, uniqueness: true
  validates :password, presence: true

  def self.authenticate(email, password)

    # si el email y el password corresponden a un usuario valido, regresa el usuario
    # de otra manera regresa nil
    user_find = User.find_by(mail: email)
    if email == user_find.mail && password == user_find.password
      user_find
    else
      nil
    end
  end

end
