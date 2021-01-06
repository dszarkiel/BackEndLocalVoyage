class User < ApplicationRecord
    has_many :destinations 
    validates :first_name, :last_name, :email, presence: :true
    validates :email, uniqueness: true 
    validates :email, email: true
end


