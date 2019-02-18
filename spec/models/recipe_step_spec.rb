require 'rails_helper'

RSpec.describe RecipeStep, type: :model do
  it { should belong_to(:recipe) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
end
