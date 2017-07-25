class User < ApplicationRecord
    
    has_many :relations, dependent: :destroy
    has_many :occupations , through: :relations
end
