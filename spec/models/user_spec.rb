require "rails_helper"

describe User do
  let(:attributes) do
    {
      first_name: "Jason",
      last_name: "Campbell",
      email: "jsntime@gmail.com",
      username: "jsntime",
      password: "password",
      age: 32
    }
  end

  it "is considered valid" do
    expect(User.new(attributes)).to be_valid
  end

  let(:missing_name) { attributes.except(:first_name || :last_name) }
  let(:missing_email) { attributes.except(:email) }
  let(:invalid_age) { attributes.merge(age: 18) }
  let(:missing_password) { attributes.except(:password) }
  #let(:duplicate_username) { User.create!(attributes)}


  it "is invalid without a first name or last name" do
    expect(User.new(missing_name)).not_to be_valid
  end

  it "is invalid with a missing email" do
    expect(User.new(missing_email)).not_to be_valid
  end

  it "is invalid with an age less than 21" do
    expect(User.new(invalid_age)).not_to be_valid
  end

  it "is invalid with a missing password" do
    expect(User.new(missing_password)).not_to be_valid
  end

  # it "is invalid with a duplicate username" do
  #   expect(User.create!(attributes)).not_to be_valid
  # end

end
