class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,:timeoutable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :uname,:email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :knowledges
end
