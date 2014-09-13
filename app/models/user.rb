class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :length => { minimum: 5, maximum: 200 }
  validates :password, :length => { minimum: 5, maximum: 100 }
  validates :username, presence: true, uniqueness: true, :length => { minimum: 1, maximum: 50 }
  validates :company, :length => { minimum: 1, maximum: 100 }
  validates :team, :length => { minimum: 1, maximum: 100 }
  validates :location, :length => { minimum: 5, maximum: 200 }
  validates :position, :length => { minimum: 3, maximum: 100 }
  validates :fullname, :length => { minimum: 2, maximum: 200 }
  validates :otherinfo, :length => { maximum: 3500 }

  attr_accessible :email, :password, :password_confirmation, :username, :company, :team, 
                  :location, :position, :fullname, :otherinfo
end
