require "rails_helper"

describe Ingredient do

  let(:attributes) do
    {
      name: "Tequila",
      quantity: "3 oz"
    }
  end

  it "is considered valid" do
    expect(Ingredient.new(attributes)).to be_valid
  end

  let(:missing_name) { attributes.except(:name) }
  let(:missing_quantity) { attributes.except(:quantity) }

  it "is invalid without an ingredient name" do
    expect(Ingredient.new(missing_name)).not_to be_valid
  end

  it "is invalid without an ingredient quantity email" do
    expect(Ingredient.new(missing_quantity)).not_to be_valid
  end
end
