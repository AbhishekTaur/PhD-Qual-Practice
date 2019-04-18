#require 'rails_helper'
#
#RSpec.describe "users/new", type: :view do
#  before(:each) do
#    assign(:user, User.new(
#      :name => "MyString",
#      :email => "MyString",
#      :password => "",
#      :current_place => "MyString",
#      :is_admin => false
#    ))
#  end
#
#  it "renders new user form" do
#    render
#
#    assert_select "form[action=?][method=?]", users_path, "post" do
#
#      assert_select "input#user_name[name=?]", "user[name]"
#
#      assert_select "input#user_email[name=?]", "user[email]"
#
#      assert_select "input#user_password[name=?]", "user[password]"
#
#      assert_select "input#user_current_place[name=?]", "user[current_place]"
#
#      assert_select "input#user_is_admin[name=?]", "user[is_admin]"
#    end
#  end
#end
#