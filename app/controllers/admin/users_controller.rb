class Admin::UsersController < Admin::AdminController
  def index
    @users = User.all.desc(:created_at)
  end
end
