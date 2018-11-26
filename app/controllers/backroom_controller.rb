class BackroomController < ApplicationController
  before_action :authenticate_user!

  def user_index
    @users = User.all
    authorize! :read, User
  end

  def upgrade_user
    user = User.find(params[:id])
    user.update(role: "admin")

    redirect_to user_index_path
  end

  def downgrade_user
    user = User.find(params[:id])
    user.update(role: "guest")

    redirect_to user_index_path
  end
end
