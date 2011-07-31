class Admin::UsersController < Admin::AdminController
  
  def index
    @total = User.count
    @users = User.all.desc(:created_at)
  end

end