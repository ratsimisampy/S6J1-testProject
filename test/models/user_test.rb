require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(name: "", last_name:"Doe", email: "rado@mail.fr",
	                 	 password: "password", password_confirmation: "password")
	end

	test "name should be present" do
		@user.name = ""
		assert_not @user.valid?
		end
		
	test "lastname should be present" do
		@user.last_name = ""
		assert_not @user.valid?
	end

	test "Email should not be blank" do
		@user.email = ""
		assert_not @user.valid?
	end
#
	test "email addresses should be unique" do
		duplicate_user = @user.dup
		@user.save
		assert_not duplicate_user.valid?
	  end

	  # To do : name with blank
	
	# Page title is "Home"
	test "viewing Home page" do
		assert_selector "h1", text: "Welcome !"  
	
	end

end
