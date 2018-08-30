class Book < ApplicationRecord
    belongs_to :user
    validates :title, :author, :description, presence: true
    
   

end
