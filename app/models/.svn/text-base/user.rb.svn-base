class User < ActiveRecord::Base
  has_many :foods
  belongs_to :plan
  validates_presence_of :first_name, :last_name, :age, :current_weight, :goal_weight
  validates_length_of :first_name, :last_name, :within => 1..30
  validates_numericality_of :age
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
