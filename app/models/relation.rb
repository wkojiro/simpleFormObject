class Relation < ApplicationRecord
    
    belongs_to :user
    belongs_to :occupation
end
