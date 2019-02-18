require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it { should have_many(:recipe_steps) }
  it { should belong_to(:user) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
end
