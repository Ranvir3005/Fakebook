class Person < ApplicationRecord
    belongs_to:user
    has_one_attached :profile_picture
      
    validates :first_name, presence: true 
    validates :last_name, presence: true 
    validates :email, presence: true 
    validates :phone, presence: true 
    validates :instagram, presence: true
    validates :first_name, length: { minimum: 2, maximum: 10 }
    validates :last_name, length: { minimum: 2 , maximum: 10 }
    validates :email, uniqueness: true
    validates :phone, numericality: { only_integer: true }, length: {is: 10}
    validates :instagram, uniqueness: true
   
end
