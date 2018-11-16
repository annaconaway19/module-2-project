require 'rails_helper'


describe Cocktail do

  let(:attributes) do
    {
      name: "404",
      description: "No error here! You picked a good one."
    }
  end

  it "is considered valid" do
    expect(Cocktail.new(attributes)).to be_valid
  end

  let(:missing_name) { attributes.except(:name) }
  let(:missing_desc) { attributes.except(:description) }

  it "is invalid without an cocktail name" do
    expect(Cocktail.new(missing_name)).not_to be_valid
  end

  it "is invalid without a description" do
    expect(Cocktail.new(missing_desc)).not_to be_valid
  end

end
