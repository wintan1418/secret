class User < ActiveRecord::Base
  rolify
  devise :database_authenticatable, :registerable,
     	:recoverable, :rememberable, :validatable
  has_many :products, dependent: :destroy
end