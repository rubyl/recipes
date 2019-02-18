class Recipe < ApplicationRecord
    has_many :recipe_steps
    belongs_to :user

    validates_presence_of :title, :description
end
