class Admin
  include Mongoid::Document

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

end