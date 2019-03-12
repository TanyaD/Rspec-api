require 'rails_helper'

RSpec.describe User, type: :model do
    it "has a valid factory" do
        user=build(:user)
        expect(user.valid?).to be true
    end

    it "saves password" do
        user=create(:user, password: "supersecret", password_confirmation:"supersecret")
        expect(user.authenticate('wrong_password')).to be false
        expect(user.authenticate('supersecret')).to eq user
    end

    it "has unique email" do
        user=create(:user)
        new_user=build(:user,email:user.email)
        expect(new_user.valid?).to be false
    end

    it "saves email as downcase" do
        user=build(:user,email:"FOO@example.COM")
        user.save
        expect(user.email).to eq "foo@example.com"
    end
end
