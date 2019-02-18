class RecipeStep < ApplicationRecord
    belongs_to :recipe

    validates_presence_of :title, :description
end
