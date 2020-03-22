class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :first_name, 
    presence: true
  validates :last_name,
    presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :user_cart

  has_one :cart, dependent: :destroy
  
  has_many :orders

  has_many :ratings

  has_many :comments
  has_many :users, through: :comments

  
  private

  def user_cart
    Cart.create(user_id: self.id)    
  end
end
