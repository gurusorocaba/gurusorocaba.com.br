require 'spec_helper'

describe Admin::UsersController do
  
  login_administrator
  
  def valid_attributes
    FactoryGirl.attributes_for(:user)
  end

  describe "GET index" do
    it "assigns all users as @users" do
      user = User.create! valid_attributes
      get :index
      assigns(:users).should eq([user])
      response.should be_success
    end
  end

end
